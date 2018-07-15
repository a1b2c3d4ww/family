<?php

namespace app\admin\behavior;
use think\Controller;
	class CheckAuth extends Controller
	{
		public function run()
		{
			if(empty(session('homeUser'))){
				echo "<script>alert('请先登录');location.href='/home/login'</script>";
				// return redirect('/home/login');
			}else if(session('homeUser.auth')!=1){
				echo "<script>alert('您无权限');location.href='/'</script>";
			}
		}
	}
