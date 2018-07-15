<?php

namespace app\home\controller;

use think\Controller;
use think\Request;
use think\captcha\Captcha;
use REST;
use app\common\model\User;
use think\Db;

class RegisterController extends Controller
{
    /**
     * 显示注册页面
     */
    public function index()
    {
        return view('/register');
    }

    
    /**
     * 检测手机号唯一
     */
    public function checkUser(Request $request)
    {
       $data = $request->post();
       
       $res = User::where('username',$data['username'])->find();

       if (!$res){
           return 0;
       } else {
           return 1;
       }

    }


    /**
     * 生成验证码
     */
    public function mkcode()
    {
        $captcha = new Captcha;
        $captcha->imageW =100;
        $captcha->imageH =34;
        $captcha->length =4;
        $captcha->useCurve =false;
        $captcha->useNoise =false;
        $captcha->fontSize =14;
        return $captcha->entry();
    }



    /**
     * 检测验证码
     */
    public function checkCode(Request $request)
    {
       $captcha = new Captcha;
       $data = $request->get('validate');

       if (!$captcha->check($data)){
           return 0;
       } else {
           return 1;
       }

    }


    //发送短信方法
    public function sendTemplateSMS($to,$datas,$tempId)
    {
        include_once("/home/lib/REST.php");

        //主帐号,对应开官网发者主账号下的 ACCOUNT SID
        $accountSid= '8aaf07085f9eb021015fb332173a04f7';

        //主帐号令牌,对应官网开发者主账号下的 AUTH TOKEN
        $accountToken= 'c7fd03852fb8457495d5e657da811b4c';

        //应用Id，在官网应用列表中点击应用，对应应用详情中的APP ID
        //在开发调试的时候，可以使用官网自动为您分配的测试Demo的APP ID
        $appId='8aaf07085f9eb021015fb332179a04fd';

        //请求地址
        //沙盒环境（用于应用开发调试）：sandboxapp.cloopen.com
        //生产环境（用户应用上线使用）：app.cloopen.com
        $serverIP='app.cloopen.com';


        //请求端口，生产环境和沙盒环境一致
        $serverPort='8883';

        //REST版本号，在官网文档REST介绍中获得。
        $softVersion='2013-12-26';



         // 初始化REST SDK
         $rest = new REST($serverIP,$serverPort,$softVersion);
         $rest->setAccount($accountSid,$accountToken);
         $rest->setAppId($appId);
        
         // 发送模板短信
        
         $result = $rest->sendTemplateSMS($to,$datas,$tempId);
         // if($result == NULL ) {
         //    return 3;
         //    //发送的结果为空，应该是缺少数据
         // }
         if($result->statusCode!=0) {
             // echo "error code :" . $result->statusCode;
             // echo "error msg :" . $result->statusMsg;
             //TODO 添加错误处理逻辑
            //短信出错
            return $result->statusMsg;
         }else{
             // echo "Sendind TemplateSMS success!";
             // 获取返回信息
             // $smsmessage = $result->TemplateSMS;
             // echo "dateCreated:".$smsmessage->dateCreated;
             // echo "smsMessageSid:".$smsmessage->smsMessageSid;
             //TODO 添加成功处理逻辑
             return 1;
         }
    }



    /**
     * 发送短信验证码
     */
    public function sendCode(Request $request)
    {
        $phone = $request->post();
        // echo $phone['username'];die;
        
        $code = mt_rand(100000,999999);

        session('phoneCode', $code);

        // echo 1;die;

        $res = $this->sendTemplateSMS($phone['username'],array($code,'5'),"217480"); //手机号码，替换内容数组，模板ID
        
        return trim($res);
    }




    /**
     * 检测短信验证码
     */
    public function checkPhoneCode(Request $request)
    {
       $phoneCode = $request->post();

       // echo $phoneCode['code'];die;

       if ($phoneCode['code'] != session('phoneCode')){
           return 0;
       } else {
           return 1;
       }

    }


    /**
     * 前台注册提交
     */
    public function doRegister(Request $request)
    {

        $company = $request->only(['company']);
        $arr['com_name'] = $company['company'];
        // halt($request->post());
        
        $com_id = Db::table('company')->insertGetId($arr);

        $data = $request->except(['company','validate','code']);
        $data['password'] = md5('123456');
        $data['com_id'] = $com_id;
     // halt('sss');
        $res = User::insert($data);

        if($res){
            return 1;
        } else {
            return 0;
        }
    }
}
