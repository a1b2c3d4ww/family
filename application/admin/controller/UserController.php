<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\common\model\User;

class UserController extends Controller
{
    
    //后台用户信息页面显示     用户搜索功能
    public function index(Request $request)
    {
        //获取分页数
        $num = $request->get('page');
        if($num == null){
            $num = 1;
        }
        //获取搜索条件
        $content = $request->get('search');
        //执行查询
        $user = User::with('company')
                ->where('display_name|username','like',"%$content%")
                ->paginate(10)->appends($request->get());

        $page = $user->render();
        // halt($user);
        return view('/user',['user'=>$user,'page'=>$page,'num'=>$num,'search'=>$content]);
    }

    
    //删除用户功能
    public function del_user(Request $request)
    {
        $ids = $request->post();
        $id = $ids['id'];
        
        if(is_array($id)){
            $id = rtrim(implode(',',$id),',');
            $res = User::where('id','in',$id)->delete();
        } else {
           $res = User::where('id','=',$id)->delete();
        }

        if($res){
            return 1;
        } else {
            return 0;
        }
    }


    //后台旧密码验证
    public function check_opwd(Request $request)
    {
        $oldpwd = $request->post('oldpwd');
        $id = session('homeUser.id');
        $user = User::find($id);
        if(md5($oldpwd) == $user['password']){
            return 1;
        } else {
            return 2;
        }
    }



    //后台修改密码
    public function update_pwd(Request $request)
    {
        $pwd = $request->post('pwd');
        $id = session('homeUser.id');
        $data['password'] = md5($pwd);
        $res = User::where('id','=',$id)->update($data);
        if($res){
            return 1;
        } else {
            return 2;
        }
    }
    
}
