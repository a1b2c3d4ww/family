<?php

namespace app\common\model;

use think\Model;

class User extends Model
{
     protected $table = 'user';
     protected $pk ='id';
   
    

    //建立一对一的关系
    public function company()
    {
        return $this->hasOne('Company', 'id', 'com_id')->bind('com_name');   //关联的模型， 当前模型的主键， 外键
    }


    //建立一对多的关系
    public function download()
    {
    	return $this->hasMany('Download', 'user_id', 'id');   //关联的模型， 外键， 当前模型的主键
    }


    public static function getDownload($id)
    {
    	$download = self::with(['download', 'download.file', 'download.file.category'])->find($id);      //通过with使用关联模型，参数为关联关系的方法名

    	return $download;
    }

}
