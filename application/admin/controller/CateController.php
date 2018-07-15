<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\common\model\Category;
class CateController extends Controller
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        return view('/cate');
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function cate_json()
    {
        $cates = Category::jstree();
        if($cates){
            return $cates;
        }else{
            return 0;
        }
    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function addchildcate(Request $req)
    {
          $CategoryName = $req->get('ChildName');
          $ParentId = $req->get('ParentId');
          $arr= [];
          $arr['CategoryName'] = $CategoryName;
          $arr['ParentId'] = $ParentId;
        try{
           Category::create($arr);
        }catch(\Exception $e){
             return redirect('/admin/cate');
        }
             return redirect('/admin/cate'); 


    }
     public function addsiblingcate(Request $req)
    {
          $CategoryName = $req->get('siblingName');
          $id = $req->get('Id');
          $cate = Category::where('Id','=',$id)->find();
          $arr['CategoryName'] = $CategoryName;
          $arr['ParentId'] = $cate['ParentId'];
          // halt($cate);
        try{
           Category::create($arr);
        }catch(\Exception $e){
             return redirect('/admin/cate');
        }
             return redirect('/admin/cate');


    }
    public function check_catename(Request $req)
   {
        $CategoryName = $req->get('CategoryName');
        $id = $req->get('Id');
        $cate = Category::catename($id);
        if(in_array($CategoryName, $cate)){
            return 0;
        }else{
            return 1;
        }

   }
    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $req)
    {
        $CategoryName = $req->get();
        $id = $req->get('Id');
        // halt($id);
         
        try{
           Category::update($CategoryName,['Id'=>$id]);
        }catch(\Exception $e){
             return redirect('/admin/cate');
        }
             return redirect('/admin/cate');
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        try{
            $ids = Category::getsub($id);
            Category::where('id','in',$ids)->delete();
        }catch(\Exception $e){
            return 0;
        }
            return 1;
    }
}
