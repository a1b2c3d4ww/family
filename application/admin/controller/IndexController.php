<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\common\model\Category;
use app\common\model\User;

class IndexController extends Controller
{
    //后台主页页面显示
    public function index()
    {
    	// $cates = Category::jstree();
    	// echo '<pre>';
    	// print_r($cates);die;
    	// $cate = Category::catename(18);
    	// halt($cate);
        $id = session('homeUser.id');
        $user = User::with('company')->find($id);
        return view('/index',['user'=>$user]);
    }
       
}
