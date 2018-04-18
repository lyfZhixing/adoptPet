$(function() {
    //$("#toright").hide();
    //$("#toleft").hide();
    $('#toright').hover(function() {
        $("#toleft").hide()
    }, function() {
        $("#toleft").show()
    });
    $('#toleft').hover(function() {
        $("#toright").hide()
    }, function() {
        $("#toright").show()
    })
});

var t;
var index = 0;
/////自动播放
t = setInterval(play, 3000)

function play() {
    index++;
    if (index > 4) {
        index = 0
    }
    // console.log(index)
    $("#lunbobox ul li").eq(index).css({
        "background": "#999",
        "border": "1px solid #ffffff"
    }).siblings().css({
        "background": "#cccccc",
        "border": ""
    })

    $(".lunbo a ").eq(index).fadeIn(1000).siblings().fadeOut(1000);
};

///点击鼠标 图片切换
$("#lunbobox ul li").click(function() {

    //添加 移除样式
    //$(this).addClass("lito").siblings().removeClass("lito"); //给当前鼠标移动到的li增加样式 且其余兄弟元素移除样式   可以在样式中 用hover 来对li 实现
    $(this).css({
        "background": "#999",
        "border": "1px solid #ffffff"
    }).siblings().css({
        "background": "#cccccc"
    })
    var index = $(this).index(); //获取索引 图片索引与按钮的索引是一一对应的
    // console.log(index);

    $(".lunbo a ").eq(index).fadeIn(1000).siblings().fadeOut(1000); // siblings  找到 兄弟节点(不包括自己）
});

/////////////上一张、下一张切换
$("#toleft").click(function() {
    index--;
    if (index <= 0) //判断index<0的情况为：开始点击#toright  index=0时  再点击 #toleft 为负数了 会出错
    {
        index = 4
    }
    console.log(index);
    $("#lunbobox ul li").eq(index).css({
        "background": "#999",
        "border": "1px solid #ffffff"
    }).siblings().css({
        "background": "#cccccc"
    })

    $(".lunbo a ").eq(index).fadeIn(1000).siblings().fadeOut(1000); // siblings  找到 兄弟节点(不包括自己）必须要写
}); // $("#imgbox a ")获取到的是一个数组集合 。所以可以用index来控制切换

$("#toright").click(function() {
    index++;
    if (index > 4) {
        index = 0
    }
    console.log(index);
    $(this).css({
        "opacity": "0.5"
    })
    $("#lunbobox ul li").eq(index).css({
        "background": "#999",
        "border": "1px solid #ffffff"
    }).siblings().css({
        "background": "#cccccc"
    })
    $(".lunbo a ").eq(index).fadeIn(1000).siblings().fadeOut(1000); // siblings  找到 兄弟节点(不包括自己）
});
$("#toleft,#toright").hover(function() {
        $(this).css({
            "color": "black"
        })
    },
    function() {
        $(this).css({
            "opacity": "0.3",
            "color": ""
        })
    })
///

///////鼠标移进  移出
$("#lunbobox ul li,.lunbo a img,#toright,#toleft ").hover(
    ////////鼠标移进
    function() {
        $('#toright,#toleft').show()
        clearInterval(t);

    },
    ///////鼠标移开
    function() {
        //$('#toright,#toleft').hide()
        //alert('aaa')
        t = setInterval(play, 3000)

        function play() {
            index++;
            if (index > 4) {
                index = 0
            }
            $("#lunbobox ul li").eq(index).css({
                "background": "#999",
                "border": "1px solid #ffffff"
            }).siblings().css({
                "background": "#cccccc"
            });
            $(".lunbo a ").eq(index).fadeIn(1000).siblings().fadeOut(1000);
        }
    });

//弹出登录
$(".login").click(function () {
    $(".bg-model").fadeTo(300,1);
    //隐藏窗体的滚动条
    $("body").css({ "overflow": "hidden" });
    $(".btn-2").click(function () {
        $(".bg-model").hide();
        $("body").css({ "overflow": "auto" });
    })
});

//全局变量vcodeflag，在登录时判断验证码是否输入正确
var vcodeflag = "false";
//登录ajax
$(".btn-1").click(function(){
	var phoneno = $("#phoneno").val();
	var upwd = $("#upwd").val();
	if(vcodeflag == "ojbk"){
		$.ajax({
			  type: "POST",
			   url: $("#PageContext").val()+"/index/login.action",
			   data: {"phoneno":phoneno,"upwd":upwd},
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
			  location.reload();
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


