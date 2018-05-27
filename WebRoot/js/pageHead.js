//弹出登录
function openLogin(){
	$(".bg-model").fadeTo(300,1);
    //隐藏窗体的滚动条
    $("body").css({ "overflow": "hidden" });
    $(".btn-2").click(function () {
        $(".bg-model").hide();
        $("body").css({ "overflow": "auto" });
    })
}

$(".login").click(function () {
	openLogin();
});

//全局变量vcodeflag，在登录时判断验证码是否输入正确
var vcodeflag = "false";
//登录ajax
$(".btn-1").click(function(){
	var uname = $("#phoneno").val();
	var upwd = $("#upwd").val();
	if(vcodeflag == "ojbk"){
		$.ajax({
			  type: "POST",
			   url: $("#PageContext").val()+"/index/login.action",
			   data: {"uname":uname,"upwd":upwd},
			   dataType: "json",
			   success: function(msg){
			     if(msg == "\"true\""){
			    	 location.reload();
//			    	 $(".bg-model").hide();
			    	 $("body").css({ "overflow": "auto" });
//			    	 $(".login").remove();
//			    	 $(".message").remove();
			     }else{
			    	 alert("请输入正确的用户名或密码");
			     }
			   }
			});
	}else{
		alert("请正确输入验证码");
	}
});

//注销
$(".logoff").click(function(){
	$.ajax({
		  type: "POST",
		  url: $("#PageContext").val()+"/index/logOff.action",
		  success: function(msg){
			  window.location.href=$("#PageContext").val()+"/index/index.action"
		  }
		});
});


//登录验证码
$("#vcode").click(function(){
	this.src = $("#PageContext").val()+"/vcode/loginVcode.action?r=" + new Date().getTime(); 
});
/**检查登录验证码*/
$("#inVcode").blur(function(){
	var vcode = $("#inVcode").val();
	$.ajax({
		type: "POST",
		url: $("#PageContext").val()+"/vcode/checkLoginVcode.action",
		data: {"vcode":vcode},
		dataType: "json",
		success: function(msg){
			 if(msg == "\"true\""){
		    	 //全局变量vcodeflag，在登录时判断验证码是否输入正确
		    	 vcodeflag = "ojbk";
		     }else{
		    	 vcodeflag = "false";
		    	 //$("#vcode")[0]  jQuery对象转换为dom对象进行dom操作
		    	 $("#vcode")[0].src = $("#PageContext").val()+"/vcode/loginVcode.action?r=" + new Date().getTime();
		     }
	   }
	});
});


//弹出注册
$(".message").click(function () {
    $(".msg-model").fadeTo(300,1);
    //隐藏窗体的滚动条
    $("body").css({ "overflow": "hidden" });
    $(".btns-2").click(function () {
        $(".msg-model").hide();
        $("body").css({ "overflow": "auto" });
    })
});

//注册验证
$("#msmbt").click(function(){
	var phoneno = $("#Rphoneno").val();
	$.post($("#PageContext").val()+"/vcode/registerVcode.action",{"phoneno":phoneno},"json");
});

/**检查注册验证码*/
$("#Rvcode").blur(function(){
	var vcode = $("#Rvcode").val();
	$.ajax({
		type: "POST",
		url: $("#PageContext").val()+"/vcode/checkRegisterVcode.action",
		data: {"vcode":vcode},
		dataType: "json",
		success: function(msg){
			 if(msg == "true"){
		    	 //全局变量vcodeflag，在登录时判断验证码是否输入正确
		    	 vcodeflag = "ojbk";
		    	 $("#Rvcode")[0].disabled="disabled";
		    	 alert("ojbk");
		     }else if(msg == "timeout"){
		    	 vcodeflag = "false";
		    	 alert("验证码过期，请重新获取");
		     }else{
		    	 vcodeflag = "false";
		    	 alert("验证码不正确");
		     }
	   }
	});
});


//注册ajax
$(".btns-1").click(function(){
	var uname = $("#Runame").val();
	var phoneno = $("#Rphoneno").val();
	var vcode = $("#Rvcode").val();
	var upwd = $("#Rupwd").val();
	var upwd2 = $("#Rupwd2").val();
	
	if(vcodeflag = "ojbk"){
		$.ajax({
			  type: "POST",
			   url: $("#PageContext").val()+"/index/register.action",
			   data: {"uname":uname,"phoneno":phoneno,"upwd":upwd},
			   dataType: "json",
			   success: function(msg){
			     alert( "Data Saved: " + msg );
			   }
			});
	}else{
		alert("请输入正确的验证码");
	}
});

//跳转到个人中心
$("#a_personal").click(function(){
	var user = $("#sessionIsNull").val();
	if(user = null || user == "" || user == undefined){
		openLogin();
	}else{
		window.location.href=$("#PageContext").val()+"/index/personal.action";
	}
});









