$('#containerTree').jstree({
            'core': {
                "themes": { "stripes": true },
                'data': {
                    'url': '/admin/cate_json',
                    'dataType': 'json',
                },
                'check_callback': true,
            },
            "checkbox": {
                "keep_selected_style": false
            },
            "plugins": ["wholerow"]
        });
         $("#open_all").click(function(){
            $("#containerTree").jstree("open_all");
         })


         $("#close_all").click(function(){
            $("#containerTree").jstree("close_all");
         })

        var currentPage;
        if($('input[name=count_page]').val() != 0){
            $('#page').pagination({
                totalData: $('input[name=count_page]').val(),
                showData: 10,
                coping: true,
                prevContent: '«',
                nextContent: '»',
                callback: function(api) {
                    currentPage = api.getCurrent();
                    gjList(currentPage);
                }
                //mode: 'fixed'
            });
        } else {
            $('#page').html('');
        }
        
        var node_id;
        $('#containerTree').on('changed.jstree',function(e,data){
            $('input[name=search]').val('');
            node_id = data.node.id;
            $("input[name=category_id]").val(node_id);
            $.get('/admin/file',{node_id:node_id},function(data){
                var res = data.data;
                // console.log(data);

                if(res != []){
                    var content = '';
                    for (var i = 0; i < res.length; i++) {
                        content += '<tr>'
                                        +'<td><input name="file_id[]" type="checkbox" value="'+res[i].id+'" /></td>'
                                        +'<td>'+res[i].id+'</td>'
                                        +'<td><img src="http://'+res[i].image_url+'" onerror="this.src='+"'/home/images/chair.png'"+'" style="height:50px;width:50px;"></td>'
                                        +'<td>'+res[i].filename+'</td>'
                                        +'<td>'+res[i].display_name+'</td>'
                                        +'<td>'+res[i].audit_upload_time+'</td>'
                                        +'<td>'+res[i].version+'</td>'
                                        +'<td>'
                                            +'<a type="button" id ="delete" class="btn btn-success btn-xs del_item">删除</a>'
                                        +'</td>'
                                    +'</tr>';
                    }

                    $('#list').html(content);
                } else {
                    $('#list').html("");
                }

                if(data.total != 0){
                    $('#page').pagination({
                        totalData: data.total,
                        showData: 10,
                        coping: true,
                        prevContent: '«',
                        nextContent: '»',
                        callback: function(api) {
                           currentPage = api.getCurrent();
                           gjList(currentPage);
                        }
                        
                    });

                    $('#page').on('click','a',function(){
                        var num = $('.active').text();
                        // console.log(num);
                
                        $.get('/admin/file?page='+num,{node_id:node_id,search:$('input[name=search]').val()},function(data){
                            var res = data.data;
                            // console.log(res);
                            var content = '';
                            for (var i = 0; i < res.length; i++) {
                                content += '<tr>'
                                                +'<td><input name="file_id[]" type="checkbox" value="'+res[i].id+'" /></td>'
                                                +'<td>'+res[i].id+'</td>'
                                                +'<td><img src="http://'+res[i].image_url+'" onerror="this.src='+"'/home/images/chair.png'"+'" style="height:50px;width:50px;"></td>'
                                                +'<td>'+res[i].filename+'</td>'
                                                +'<td>'+res[i].display_name+'</td>'
                                                +'<td>'+res[i].audit_upload_time+'</td>'
                                                +'<td>'+res[i].version+'</td>'
                                                +'<td>'
                                                    +'<a href="javascript:void(0)" id="delete" class="btn btn-success btn-xs del_item">删除</a>'
                                                +'</td>'
                                            +'</tr>';
                            }
                            $('#list').html(content);
                        });

                        
                           
                    });

                } else {
                    $('#page').html('');
                }
            });

        });
     
        
       
    function gjList(currentPage){
        $.get('/admin/file?page='+currentPage,{node_id:node_id,search:$('input[name=search]').val()},function(data){
                        var res = data.data;
                        var content = '';
                        for (var i = 0; i < res.length; i++) {
                            content += '<tr>'
                                            +'<td><input name="file_id[]" type="checkbox" value="'+res[i].id+'" /></td>'
                                            +'<td>'+res[i].id+'</td>'
                                            +'<td><img src="http://'+res[i].image_url+'" onerror="this.src='+"'/home/images/chair.png'"+'" style="height:50px;width:50px;"></td>'
                                            +'<td>'+res[i].filename+'</td>'
                                            +'<td>'+res[i].display_name+'</td>'
                                            +'<td>'+res[i].audit_upload_time+'</td>'
                                            +'<td>'+res[i].version+'</td>'
                                            +'<td>'
                                                +'<a href="javascript:void(0)" id="delete" class="btn btn-success btn-xs del_item">删除</a>'
                                            +'</td>'
                                        +'</tr>';
                        }
                        $('#list').html(content);
                    });
    }
            

      

            
               
       /* });*/

    //单个删除构件
        var file_id
        $('.table-responsive').on('click','#delete',function(){
            file_id = $(this).parent().parent().find("input").val();
            // console.log(file_id);
                     swal({
                        title: "",
                        text: "确定要删除构件吗！",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#DD6B55",
                        confirmButtonText: "删除",
                        closeOnConfirm: true
                    }, function () {   
                          $.ajax({
                url:'/admin/del_file',
                data:{id:file_id},
                type:"post", 
                success:function(data){
                  window.location.reload();
                }
            })
           });
        })
    //批量删除构件
    $("#del_file").click(function(){
        var chk_val=[];
       $("input[name='file_id[]']:checked").each(function(){
        chk_val.push($(this).val());
       })
       console.log(chk_val);
       if (chk_val.length==0){
         swal({
                    title: "",
                    text: "请勾选要删除的构件！",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "删除",
                    closeOnConfirm: true
                })
       }else{
        // console.log('sss');
        swal({
                    title: "",
                    text: "删除后用户信息将无法恢复，请谨慎操作！",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "删除",
                    closeOnConfirm: true
                }, function () {   
                      $.ajax({
                        url:'/admin/del_file',
                        data:{id:chk_val},
                        type:"POST",
                        success:function(data){
                           if (data==1){
                            window.location.reload();
                           } else {
                            layer.alert('删除失败!', {
                              skin: 'layui-layer-lan' //样式类名
                              ,closeBtn: 0
                            });
                           }
                        }
                    })
       });
       }
    })

    
    $('.btn-info').click(function(){
        $.get('/admin/file',{category_id:$("input[name=category_id]").val(),search:$('input[name=search]').val()},function(data){
            var res = data.data;
            // console.log(data);

            if(res != []){
                var content = '';
                for (var i = 0; i < res.length; i++) {
                    content += '<tr>'
                                    +'<td><input name="file_id[]" type="checkbox" value="'+res[i].id+'" /></td>'
                                    +'<td>'+res[i].id+'</td>'
                                    +'<td><img src="http://'+res[i].image_url+'" onerror="this.src='+"'/home/images/chair.png'"+'" style="height:50px;width:50px;"></td>'
                                    +'<td>'+res[i].filename+'</td>'
                                    +'<td>'+res[i].display_name+'</td>'
                                    +'<td>'+res[i].audit_upload_time+'</td>'
                                    +'<td>'+res[i].version+'</td>'
                                    +'<td>'
                                        +'<a type="button" id ="delete" class="btn btn-success btn-xs del_item">删除</a>'
                                    +'</td>'
                                +'</tr>';
                }


                    $('#list').html(content);
                } else {
                    $('#list').html("");
                }
               
                if(data.total != 0){
                    $('#page').pagination({
                        totalData: data.total,
                        showData: 10,
                        coping: true,
                        prevContent: '«',
                        nextContent: '»',
                        callback: function(api) {
                           currentPage = api.getCurrent();
                           gjList(currentPage);
                        }
                        //mode: 'fixed'
                    });
                } else {
                    $('#page').html('');
                }
            });
            return false;
        
       
     
    })