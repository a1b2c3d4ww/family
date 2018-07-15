<?php

namespace app\home\behavior;
use think\Controller;
	class CheckAuth extends Controller
	{
		public function run()
		{
			if(empty(session('homeUser'))){
				echo "<script>alert('请先登录');location.href='/home/login'</script>";
				// return redirect('/home/login');
			}
		}
	}
