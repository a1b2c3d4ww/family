<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\common\model\File;
use app\common\model\User;
use app\common\model\Category;

class FileController extends Controller
{
    
    public function index(Request $request)
    {
        $category_id = (int)$request->get('category_id');
        // halt($category_id);
        
        $node_id = (int)$request->get('node_id');

        if($category_id){
            $node_id = $category_id;
        }

        // echo $node_id;
        //获取搜索条件
        $content = $request->get('search');
        // halt($content);

        if($node_id){
           $res = Category::getsub($node_id);

           $file = File::with('user')
                   ->where('category_id','in',$res)
                   ->where('filename','like',"%$content%")
                   ->paginate(10)->appends($request->get());
            
            foreach($file as $k=>$v){
                $file[$k]['audit_upload_time'] = date('Y-m-d H:i:s',$v['audit_upload_time']);
            }
            
           return $file;
        } else {
            $file = File::with('user')
                    ->where('filename','like',"%$content%")
                    ->paginate(10)->appends($request->get());
            
            foreach($file as $k=>$v){
                $file[$k]['audit_upload_time'] = date('Y-m-d H:i:s',$v['audit_upload_time']);
            }
            
           return $file;
        }

    }

    
    public function first_file()
    {
    	$count = File::count();

    	$file = File::with('user')->paginate(10);

        return view('/file',['file'=>$file,'count'=>$count,'search'=>null]);
    }



//删除用户功能
    public function del_file(Request $request)
    {
        $ids = $request->post();
        $id = $ids['id'];
        // halt($id);
        if(is_array($id)){
            $id = rtrim(implode(',',$id),',');
            $res = File::where('id','in',$id)->delete();
        } else {
           $res = File::where('id','=',$id)->delete();
        }
        // halt($res);
        if($res){
            return 1;
        } else {
            return 0;
        }
    }
    
}
