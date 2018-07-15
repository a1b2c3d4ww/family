<?php

namespace app\home\controller;

use think\Controller;
use think\Request;
use app\common\model\File;
use app\common\model\Category;
use app\common\model\User;
use app\common\model\Download;

use think\Db;

class SearchDetailController extends Controller
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index($id)
    {   

        // $id = 1158;

        $data = File::find($id);

        $res = Category::fulei($data['category_id']);
        
        $res = array_reverse($res);

        $num = count($res) - 1;

        $user = User::find($data['user_id']);

        $company = Db::table('company')->find($user['com_id']);

        $user['company'] = $company['com_name'];

        $data['propjson'] = json_decode($data['propjson']);

        // var_dump($user);die;
        return view('/searchDetail',['res'=>$res,'num'=>$num,'data'=>$data,'user'=>$user]);
    }

    public  function checklogin(Request $req)
    {   
        
        $url = $req->get('url');
        session('url',$url);
        $user = session('homeUser');

        if($user){
            $url = explode('/', $url);
            $id = array_pop($url);
            $file = File::where('id','=',$id)->find();
            $condition = [];
            $condition[] =['user_id','=',$user['id']];
            $condition[] =['file_guid','=',$file['guid']];
            $download = Download::where($condition)->find();    
            if($download){
                $update = [];
                 $update['download_time'] = time();
                  $download['download_count']+=1;
                 $update['download_count']=$download['download_count'];
                 Download::update($update,['id'=>$download['id']]);
            }else{
                // halt('sss');
                $create = [];
                $create['user_id'] = $user['id'];
                $create['file_guid'] = $file['guid'];
                $create['download_count'] = 1;
                $create['download_time'] = time();
                // halt($create);

                Download::create($create);
            }          
            return 1;
        }else{
            return 0;
        }
    }
}
