<?php

namespace app\home\controller;

use think\Controller;
use think\Request;
use app\common\model\Category;
use app\common\model\File;
class SearchController extends Controller
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index(Request $req,$id)
    {   
         $condition=[];
         //判断是否传搜索值
        if(!empty($filename=$req->get('filename'))){
            $condition[] = ['filename','like',"%$filename%"];
           
        }
        //判断是否传分类id
       if($id){
            $id = (int)($id);
            $data = Category::getsub($id);
            $condition[] = ['category_id','in',$data];;
       }
        $search = $req->get('filename');
        //获取多维分类数组，用于查询页专业分类遍历
         $cates = Category::select();
        $cates = Category::getzilei($cates);
        //通过id找到其父类及父类的同级分类，在通过php端拼接html返回页面
        $ids = Category::fuleis($id);
        $ids = Category::getzileiplus($ids);
        $ids = Category::cateshtml($ids);

        $files = File::where($condition)->select();
   
        return view('/search',['cates'=>$cates,'files'=>$files,'search'=>$search,'ids'=>$ids,'id'=>$id]);
    }

    /**
     * v 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function firstcate($id)
    {
        //获取分类id
        $id = (int)($id);
        //获取该分类的下一级所有分类
        $cates = Category::select();
        $data = Category::nextlei($cates,$id);
        
       if($data){
        return $data;
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
    public function listshow(Request $req)
    {
        //获取分类id
        $id = $req->get('id');
        //获取页码
        $page = $req->get('page');
        // halt($page);
        //获取搜索的值
        $filename = $req->get('filename');
        //获取一行展示的构建数
        $count = $req->get('count');
        // halt($count);
        $condition = [];
        $id = (int)($id);
        //获取该分类及其所有子分类id的数组
        $data = Category::getsub($id);   
         if(!empty($id)){
            $condition[] = ['category_id','in',$data];
         }  
          if(!empty($filename)){
             $condition[] =['filename','like',"%$filename%"];
          }
        //获取本次从数据库获取的位置
        $page=$page*$count;
        $list = File::where($condition)->limit($page,$count)->select();

        if($list){
            return $list;
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
    public function read($id)
    {
        //
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
        //
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
