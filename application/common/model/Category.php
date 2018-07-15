<?php

namespace app\common\model;

use think\Model;
use Db;
class Category extends Model
{
    protected $table = 'category_test';
    protected $pk ='Id';


  
  
    //返回传参id的下一级子类及第几级分类的数组
    public static function nextlei($cates,$Id=0)
    {       

      $arr = [];
      $index = self::cateindex($Id);
      switch ($index) {
          case 1:
             $index = '专业分类';
              break;
          case 2:
             $index = '二级分类';
              break;
          case 3:
             $index = '三级分类';
              break;
          case 4:
             $index = '四级分类';
              break; 
          case 5:
             $index = '五级分类';
              break;  
          case 6:
             $index = '六级分类';
              break; 
          case 7:
             $index = '七级分类';
              break;  
           case 8:
             $index = '八级分类';
              break; 
           case 9:
             $index = '九级分类';
              break;  
           case 10:
             $index = '十级分类';
              break;  
          default:
             $index = '分类过多';   
              break;
      }
        foreach ($cates as $k=>$v){
            if($v->ParentId==$Id){
                  $arr[$v->Id]=$v;
            }
        }
        if($arr){
            $arr['index'] = $index;
        }
        return $arr;
    }

   //返回多维分类数组，并每一层带有表明第几级分类的index元素
    public static function getzileiplus($cates,$Id=0,$level=0)
    {       
        $arr = [];
        // static $level =1;
      switch ($level) {
          case 0:
             $index = '专业分类';
              break;
          case 1:
             $index = '二级分类';
              break;
          case 2:
             $index = '三级分类';
              break;
          case 3:
             $index = '四级分类';
              break; 
          case 4:
             $index = '五级分类';
              break;  
          case 5:
             $index = '六级分类';
              break; 
          case 6:
             $index = '七级分类';
              break;  
           case 7:
             $index = '八级分类';
              break; 
           case 8:
             $index = '九级分类';
              break;  
           case 9:
             $index = '十级分类';
              break;  
          default:
             $index = '分类过多';   
              break;
      }
      // $level++;
        foreach ($cates as $k=>$v){
            if($v['ParentId']==$Id){
                $v['sub'] = self::getzileiplus($cates,$v['Id'],$level+1);      
                // $v['index']=$index;  
                $arr['index']=$index;    
                $arr[$v['Id']]=$v;
                
            }
        }
        return $arr;
    }
   //返回多维分类数组，但这个没有表明第几级分类的index元素
     public static function getzilei($cates,$Id=0)
    {

        return self::zilei($cates,$Id);
    }
    public static function zilei($cates,$Id=0)
    {       

      $arr = [];     
        foreach ($cates as $k=>$v){
            if($v->ParentId==$Id){
                $v['sub'] = self::zilei($cates,$v->Id);

                $arr[$v->Id]=$v;

            }
        }
        return $arr;
    }
    //返回传参id下所有的子类id数组
    public static function getsub($Id=0)
    {
        $cates = Category::select();

        $arr=[];
        $arr[]=$Id;
        
        return self::getzileisub($cates,$arr,$Id);
    }
    public static function getzileisub($cates,&$arr,$Id=0)
    {  

        foreach ($cates as $k=>$v){
           if($v->ParentId==$Id){
            $arr[] = $v->Id;
            self::getzileisub($cates,$arr,$v->Id);
           }
        }
        return $arr;

    }
    //获取子类的父类
    public static function fulei($Id)
    {
        static $arr = [];
        $cates = Category::find($Id);
        $arr[] = $cates;
       // echo '<pre>';
       // print_r();die;
        if($cates['ParentId'] != 0){
            self::fulei($cates['ParentId']);
        }
       
        return $arr;
    }
    //只获取父类的所有id
    public static function fuleiId($Id)
    {
       $brr = self::fulei($Id); 
      static $crr =[];
      // echo '<pre>';
      // print_r($brr);die;
      foreach($brr as $k=>$v){

          $crr[] = $v['Id'];
    }
      // echo '<pre>';
      // print_r($crr);die;
      return $crr;
      }
  //返回当前处于第几级分类
     public static function cateindex($Id)
    {
        static $i = 1;
        $i++;
        $cates = Category::find($Id);
        if($cates['ParentId'] != 0){
            self::cateindex($cates['ParentId']);
        }
        return $i;
    }

    //获取子类的父类
    public static function fuleis($Id)
    {
        static $arr = [];
        $cates = Category::select()->ToArray();
        $cate = Category::find($Id);


        foreach($cates as $k=>$v){
            if($v['ParentId']==$cate['ParentId']){
                
                if($v['Id']==$Id){
                  $v['status'] = 1;
                }else{
                  $v['status'] = 0;
                }
               $arr[] = $v;
            }
        }
        if($cate['ParentId'] != 0){
            self::fuleis($cate['ParentId']);
        }
        return $arr;
    }
    // 分类拼接html
    public static function cateshtml($cates)
    { 
       static $html = '';
       $sub=[];  
       foreach($cates as $k=>$v){
          if($k == 'index'){
             $html.="<div class='search-cate'>".   "<div class='search-title'> ".$v."</div>"."<div class='search-content'>";
           
          }else{
              if($v['status']==0){
                $html.=" <li class='search-header-btn parent list' value=".$k.">".$v['CategoryName']."</li> ";
              }elseif($v['status']==1){
                 $html.="<li class='search-header-btn parent list search-header-btn-active'  data-tag='professional' value=".$k.">".$v['CategoryName']."</li> ";
              }
             
             if($v['sub']){
                $sub = $v['sub'];
             }
          }     

       }
       $html.="</div></div>";
       if($sub){
         self::cateshtml($sub);
       }
      
          return $html;


      
    }
    //返回jstree所需格式数据
     public static function jstree()
    { 
      $cates = Category::select();
      $arr = [];
      foreach($cates as $k=>$v){
        $arr[$k]['id'] = $v['Id'];
        if($v['ParentId']==0){
          $arr[$k]['parent'] ='#';
        }else{
          $arr[$k]['parent'] = $v['ParentId'];
        }
          $arr[$k]['text'] = $v['CategoryName'];
      }
      return $arr;
    }
    //返回传参id所有子类和父类的分类名数组
     public static function catename($id)
    {
      
      $parent = self::fuleiId($id);
      $child = self::getsub($id);
      $cateid = array_merge($parent,$child);
      $cateid = array_unique($cateid);
      $cates = Category::where('Id','in',$cateid)->select();
      $catename = [];
      foreach($cates as $k=>$v){
        $catename[] = $v['CategoryName'];
      }
      // halt($catename);
      return $catename;
    }


}
