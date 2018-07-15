<?php

namespace app\common\model;

use think\Model;

class Download extends Model
{
    protected $table = 'download';
    protected $pk ='id';
    

    //建立一对一的关系
    public function file()
    {
    	return $this->belongsTo('File', 'file_guid', 'guid');   //关联的模型， 外键， 当前模型的主键
    }


    public static function getDownload($id)
    {
    	//通过with使用关联模型，参数为关联关系的方法名     paginate(10)为tp自带分页  代替select和find进行分页的查询
        $download = self::with(['file', 'file.category'])->where('user_id','=',$id)->paginate(10);

    	return $download;
    }

}
