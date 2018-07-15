<?php

namespace app\home\controller;

use think\Controller;
use think\Request;
use app\common\model\User;
use app\common\model\Company;
use app\common\model\File;
use app\common\model\Download;
use think\Image;

class UserCenterController extends Controller
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index(Request $request)
    {

        $data = session('homeUser');
        $cid = $data['com_id'];
        $id = $data['id'];
        $data = User::where('id','=',$id)->find();
        $com= Company::where('id','=',$cid)->find();

        $file = Download::getDownload($id);
        // halt($file);
        
        //分页html的样式   具体分页代码在 app\common\model\Download 下
        $page = $file->render();
        // halt($page);
             
        return view('/userCenter',['data'=>$data,'com'=>$com,'file'=>$file,'page'=>$page]);
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function updatepwd(Request $req)
    {
        $data = $req->post();
        // halt($data  );
        $user = session('homeUser');
        $id = $user['id'];

        if(md5($data['oldpwd'])!=$user['password']){
            return redirect('/home/userCenter');
        }
        if($data['newpwd']!=$data['repwd']){
            return redirect('/home/userCenter');
        }
         $password['password'] = md5($data['newpwd']);
         $user['password'] = md5($data['newpwd']);
         session('homeUser',$user);
         try{
            User::update($password,['id'=>$id]);
        }catch(\Exception $e){
            return redirect('/home/userCenter');
        }
            return redirect('/home/userCenter');
        
    }
    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function check_opwd(Request $req)
    {
        $user = session('homeUser');
        $opwd = $req->post('opwd');
        if(md5($opwd)==$user['password']){
            return 1;
        }else{
            return 0;
        }


    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */

    public function upic(Request $req)
    {

        $user = session('homeUser');
        // halt($user);
        // 获取表单上传文件
        $file = $req->file('f');
        // halt($file);
        //校验器，判断图片格式是否正确
        if (true !== $this->validate(['image' => $file], ['image' => 'require|image|fileExt:jpg,png,bmp'])) {
            return "<script>alert('请选择正确的图片格式上传!');location.href='/home/userCenter'</script>";
        }
        //图片从暂存区移动到public/header下
        $info = $file->move('./header');
       
        // 输出文件的位置以及文件名。系统会自动穿件以时间为名的文件夹，然后输出文件夹的名字和图片的名字。
        $name = $info->getSaveName();
        $filename['upic']='/header/'.$name;
        //裁剪图片大小
        Image::open($file)->thumb(100,100,Image::THUMB_FILLED)->save('./header/'.$name);
        //存到数据库中
        try{
            User::where('id','=',$user['id'])->update($filename);
        }catch(\Exception $e){
            return "<script>alert('修改头像失败!');location.href='/home/userCenter'</script>";
        }
        
        // 删除原有的图片
        if($user['upic']){
            if(file_exists('.'.$user['upic'])){
                unlink('.'.$user['upic']);
            }
        }

        //把修改后的个人信息存入session中
        $user = User::where('id','=',$user['id'])->find();
        // halt($user);
        session('homeUser',$user);
        return "<script>alert('修改头像成功!');location.href='/home/userCenter'</script>";
          
    }   



    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function uppic()
    {
        // 获取表单上传文件
        $file = request()->file('f');
        //图片从暂存区移动到public/header下
        $info = $file->move('./header');
         // 输出文件的位置以及文件名。系统会自动穿件以时间为名的文件夹，然后输出文件夹的名字和图片的名字。
        $a=$info->getSaveName();  
        $imgpath='/header/'.$a;  
        $banner_img= $imgpath;
        $response = array();  
       
        if($info){  
            $response['f'] = $imgpath;
            return $response;  
        }else{
            return 0;
        }      
       
    }


    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        //
    }
}
