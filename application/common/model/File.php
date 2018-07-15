<?php

namespace app\common\model;

use think\Model;

class File extends Model
{
     protected $table = 'file';
     protected $pk ='id';

     //建立一对一关系
     public function category()
    {
    	return $this->belongsTo('Category', 'category_id', 'Id');
    }


     //建立一对一关系
     public function user()
    {
    	return $this->belongsTo('User', 'user_id', 'id')->bind('display_name');
    }
}
