

$(function () {
  

    $('#search-row-count').val(parseInt($('.search-bottom').width()/200));
    $(window).resize(function(){
      $('#search-row-count').val(parseInt($('.search-bottom').width()/200));
    })
    

    $('.search-middle-btn').click(function () {
        $(this).addClass('search-middle-btn-active').siblings('.search-middle-btn').removeClass('search-middle-btn-active');
    })



    var page = 0;
    var id = 0;
    var filename = '';
    var nextCate; 
    var nextAllCate;
    var str1 = '';
    var state=true;
    var searchVal;
   

    $('.search-top').on('click','.search-title',function(){
            var parentId = $(this).parent().prev().find('.search-header-btn-active').val();
            if(!parentId){
               parentId = 0;
            }
           $(this).parent().nextAll().remove(); 
           $(this).next().find('.search-header-btn-active').removeClass('search-header-btn-active');
           $('.liebiao').html(''); 
           id = parentId;
           listshow(id);

         })     

    var cate_flag = false; 
    $('.search-top').on('click','.list',function(){
    
        page = 0;
       
        $(this).addClass('search-header-btn-active').siblings('.list').removeClass('search-header-btn-active');
        id = $(this).val();
         $('#search-page-filter').val('');
        nextCate = $(this).parent().parent().next();
        nextAllCate = $(this).parent().parent().nextAll();

        //无限级分类   

          // console.log(post_flag);  
        if(cate_flag) return; 
        cate_flag = true;



        $.ajax({
                url:'/home/firstcate/'+id,
                type:'GET',
                success:function(data){
                    var res = data;
                    if(res!=0){ 
                        str = '<div class="search-cate">'
                              +'<div class="search-title">'+res.index+':</div>'
                              +'<div class="search-content">' ;
                        for(var i in res){
                            if(res[i].Id!=undefined){

                                str+='<li class="search-header-btn parent list" value="'+res[i].Id+'">'+res[i].CategoryName+'</li>';
                            }
                            
                        }                       
                                                                
                         str+='</div>'
                             +'<input type="hidden" id="search-professional-id" value="1"/>'
                             +'</div>';
                           console.log(str);
                         if($('.search-top').html().indexOf(res.index)==-1){
                           
                            $('.search-top').append(str);
                         }else if(nextCate){
                           // console.log("2")
                           nextAllCate.remove();
                             $('.search-top').append(str);
                            
                            
                         }
                    }else{
                        nextAllCate.remove();
                        
                    }    
                    cate_flag = false;             
                },
                // async:false, 

        })

        //点击分类 列表展示
        // console.log(page)
        $('.liebiao').html('');
        listshow(id,page);
        //console.log($('.liebiao').html())
        
    })

   
    var getStr = location.pathname;
    var id = Number(location.pathname.split('/')[location.pathname.split('/').length - 1])||0;
    var getFilename = location.search.split('=')[location.search.split('=').length - 1]||'';
    getFilename = decodeURI(getFilename)
    listshow(id,page,getFilename);
   


    //点击搜索按钮，列表展示
     $('#btnSearchByFilter').click(function(){
                	// alert('sss');
                     searchVal = $('#search-page-filter').val();

                     // console.log(searchVal);
                     id  = $('.search-header-btn-active:last').val();
                     page = 0;
                     $('.liebiao').html(''); 
                     listshow(id,page,searchVal);
                    return false;
           
      })

    

  //点击加载更多
	$('#search-loadmore-btn').click(function(){
		//console.log(id);
	    //console.log($('.liebiao'))
	   searchVal = $('#search-page-filter').val();
		page++;
		//console.log(page);
		str1 = '';
		listshow(id,page,searchVal);
		
		

	})
   
    var count;
    var list_flag = false; 
    function listshow(id,page,filename){       
        str1 = '';
        count = $('#search-row-count').val();
        if(list_flag) return; 
        list_flag = true;
        $.ajax({
            url:'/home/listshow/',
            type:'GET',
            data:{'id':id,'page':page,'filename':filename,'count':count},
            success:function(data){
                  if(data.length==0){
                    //console.log(page);
                     if(page==0){
                       $('#search-loadmore-btn').text('暂无族信息');
                     }else{
                       $('#search-loadmore-btn').text('我是有底线的！');
                     }
                  	
                  }else{
                  	if(data.length<count){
                      $('#search-loadmore-btn').text('我是有底线的！');
                    }else{
                      $('#search-loadmore-btn').text('加载更多...');
                    }
                  	for(var i in data){
                    	
                     str1 += '<a href="/home/searchDetail/'+data[i].id+'" class="item search-family-cell">'
                    
                              +'<img '+'onerror="this.src='+"'/home/images/chair.png'"+'"'+'src="http://'+data[i].image_url+'"/>'
                              +'<p>'
                              +data[i].filename
                              +'</p>'
                              +'</a>';
                    
                    } 
                    

                    $('.liebiao').append(str1);
                    //console.log(itemWidth);
                   // $('.item').width(itemWidth);
                  }
                  

                list_flag = false; 
                
            },
               async:false,                                   
               
        });
    
      

    }
        



    var loadFlag = false;
    /////监听滚动条事件
    $(window).bind('mousewheel DOMMouseScroll scroll',function (event) {//兼容火狐
          //console.log('scroll')
          //判断鼠标滚动方向，上为正数，下为负数
          var delta = event.originalEvent.wheelDelta;
          if (delta > 0) {
              //鼠标向上滚，上图标显示，下图标隐藏
              //console.log(delta);
          } else {
              //鼠标向下滚，下图标显示，上图标隐藏

                 if($(window)[0].scrollY>=($('body')[0].scrollHeight-$("body")[0].clientHeight-100)&&!loadFlag){

                    loadFlag = true;
                		/////需要滚动事件取消注释
           			   searchVal = $('#search-page-filter').val();
  					       page++;
                   // console.log(page);
                   str1 = '';
            
                   listshow(id,page,searchVal);
                  setTimeout(function(){
                    loadFlag = false;
                  },500)
                 
         
                }
        }
    });


})
