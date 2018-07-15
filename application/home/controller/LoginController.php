<?php

namespace app\home\controller;

use think\Controller;
use think\Request;
use app\common\model\User;
use think\captcha\Captcha;

class LoginController extends Controller
{
    /**
     * 前台登录显示页面
     */
    public function index()
    {	
        return view('/login');
    }
    public function dologin(Request $req)
    {

        $data = $req->post();
       // halt($data);
       $condition = [];
       if($username=$data['username']){
            $condition[] = ['username','=',$username];
       }
       if($password=$data['password']){
             $condition[] = ['password','=',md5($password)];
       }
       
       $users = User::where($condition)->find();
       if($users){
        //获取跳转登录前的页面url
        $url = session('url');
        if($url){
           session('homeUser',$users);
           session('url', null);
           return redirect($url);
        }
      		  session('homeUser',$users);
            return redirect('/');
       }else{
            return redirect('/home/login');
       }

    }
     public function logout()
    { 
         session('homeUser',null);
         //退出页面提示alert，确认后跳转登录页
         echo "<script>alert('退出成功');location.href='/home/login'</script>";
    }
    public function check_repeat_uname(Request $req)
    {
        $username = $req->post('username');
        $user = User::where('username','=',$username)->find();
        if($user){
          return 1;
        }else{
          return 0;
        }
        // echo 1;
    }
    public function check_validate(Request $req)
    {
        //引用系统自带Captcha类
        $captcha = new Captcha;
        $data = $req->post('validate');
        // halt('sss');
        //验证验证码是否正确
       if (!$captcha->check($data)){
           return 0;
       } else {
           return 1;
       }
       
    }
    public function check_password(Request $req)
    {
      //获取表单的信息
       $username = $req->post('username');
       $password = $req->post('pwd');
       $condition = [];
       if($username){
            $condition[] = ['username','=',$username];
       }
       if($password){
             $condition[] = ['password','=',md5($password)];
       }
       //根据表单所传信息，匹配数据库
        $users = User::where($condition)->find();
        if($users){
          return 1;
        }else{
          return 0;
        }
       
    }

}
