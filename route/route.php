<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------


//前台展示页面
Route::get('/','home/IndexController/index');
//前台登录页面
Route::get('home/login','home/LoginController/index');


//前台注册页面
Route::get('home/register','home/RegisterController/index');
//前台验证码显示
Route::get('home/code','home/RegisterController/mkcode');
//前台验证码检测
Route::get('home/checkCode','home/RegisterController/checkCode');
//前台注册手机号唯一检测
Route::post('home/checkUser','home/RegisterController/checkUser');
//前台注册发送短信验证码
Route::post('home/sendCode','home/RegisterController/sendCode');

//前台注册检测短信验证码
Route::post('home/checkPhoneCode','home/RegisterController/checkPhoneCode');
//前台注册提交
Route::post('home/doRegister','home/RegisterController/doRegister');













//前台登录提交
Route::post('home/dologin','home/LoginController/dologin');
//前台退出登录
Route::get('home/logout','home/LoginController/logout');

//前台登录ajax验证手机号
Route::post('home/check_repeat_uname','home/LoginController/check_repeat_uname');
//前台登录ajax验证验证码
Route::post('home/check_validate','home/LoginController/check_validate');
//前台登录ajax验证密码
Route::post('home/check_password','home/LoginController/check_password');





//前台搜索页面
Route::get('home/search/[:id]','home/SearchController/index');
//前台详情页面
Route::get('home/searchDetail/:id','home/SearchDetailController/index');
//ajax验证是否登录状态
Route::get('home/checklogin','home/SearchDetailController/checklogin');
//ajax记录下载信息
Route::get('home/download','home/SearchDetailController/download');
//前台列表页一级分类发送ajax
Route::get('home/firstcate/:id','home/SearchController/firstcate');
//前台列表页点击分类请求ajax展示列表
Route::get('home/listshow','home/SearchController/listshow');











Route::group([],function(){
	//前台个人中心
	Route::get('home/userCenter','home/UserCenterController/index');
	//修改密码
	Route::post('home/updatepwd','home/UserCenterController/updatepwd');
	//ajax检测密码是否正确
	Route::post('home/check_opwd','home/UserCenterController/check_opwd');
	//前台上传族库
	Route::get('home/upload','home/UploadController/index');
	//前台修改头像
	Route::post('home/upic','home/UserCenterController/upic');
	//前台ajax实现预览头像
	Route::post('home/uppic','home/UserCenterController/uppic');

	
	
	
})->after(['app\home\behavior\CheckAuth']);


// Route::get('test','home/TestController/index');

Route::group([],function(){
	//后台显示主页页面
Route::get('admin/index','admin/IndexController/index');
//后台显示用户页面

Route::get('admin/user','admin/UserController/index');
//后台显示分类页面
Route::get('admin/cate','admin/CateController/index');
//返回分类jstree使用的json数据
Route::get('admin/cate_json','admin/CateController/cate_json');
//后台分类名称修改
Route::get('admin/update','admin/CateController/update');
//后台分类删除（发送ajax）
Route::get('admin/delete/:id','admin/CateController/delete');
//后台添加子分类
Route::get('admin/addchildcate','admin/CateController/addchildcate');
//后台添加同级分类
Route::get('admin/addsiblingcate','admin/CateController/addsiblingcate');
//后台发送ajax验证分类名是否重复
Route::get('admin/check_catename','admin/CateController/check_catename');
//后台页面删除用户功能
Route::post('admin/del_user','admin/UserController/del_user');
//构件信息初始页面
Route::get('admin/first_file','admin/FileController/first_file');
//带条件查看构件信息
Route::get('admin/file','admin/FileController/index');
//后台删除构件功能
Route::post('admin/del_file','admin/FileController/del_file');







})->after(['app\admin\behavior\CheckAuth']);



//后台旧密码验证
Route::post('admin/check_opwd','admin/UserController/check_opwd');
//后台修改密码
Route::post('admin/update_pwd','admin/UserController/update_pwd');
