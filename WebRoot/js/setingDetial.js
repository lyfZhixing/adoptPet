/**返回个人中心*/
$("#personal").click(function () {
    window.location.href=$("#PageContext").val()+"/index/personal.action";
});



//--------------------------------------------------------------------------------------------------//
/**编辑用户名*/
$("#ex_myname").on("click","#e_myname",function(){
	//var inputObj = $("#myname")[0];
	$("#myname").removeAttr("readOnly");
	var inhtml = "<img id='s_myname' alt='提交' src='../img/submit.svg' style='height: 30px;float: left;width: 30px;margin-left: 5px;'><img alt='撤销' id='c_myname' style='height: 30px;float: left;width: 30px;margin-left: 5px;' src='../img/cancle.svg'>";
	$("#ex_myname").html(inhtml);
});

/**设置用户名不可写*/
function setuname(name){
	$("#myname").attr("readOnly","readOnly");
	$("#myname").attr("placeholder",name);
	$("#myname").val("");
}

var old_uname = $("#myname").attr("placeholder");
/**提交新用户名*/
$("#ex_myname").on("click","#s_myname",function(){
	old_uname = $("#myname").attr("placeholder");
	var new_uname = $("#myname").val();
	if(old_uname == new_uname){
		alert("请输入新的昵称！");
	}else{
		$.ajax({
			  type: "POST",
			  url: $("#PageContext").val()+"/personal/editUname.action",
			  data: {"old_uname":old_uname,"new_uname":new_uname},
			  dataType: "json",
			  success: function(msg){
				  //2018-5-23 未完待续
				 if(msg == "true"){
					window.location.reload();
					setuname(new_uname);
					old_uname = new_uname;
					/*var inhtml = "<img id='e_myname' alt='编辑' src='../img/edit.svg' style='height: 50px;float: left;width: 50px;'>";
					$("#ex_myname").html(inhtml);*/
				 }else{
					alert("修改失败");
					window.location.reload();
					setuname(old_uname);
					/*var inhtml = "<img id='e_myname' alt='编辑' src='../img/edit.svg' style='height: 50px;float: left;width: 50px;'>";
					$("#ex_myname").html(inhtml);*/
				 }
			  }
			});
	}
});

/**撤销修改用户名*/
$("#ex_myname").on("click","#c_myname",function(){
	window.location.reload();
	setuname(old_uname);
	/*var inhtml = "<img id='e_myname' alt='编辑' src='../img/edit.svg' style='height: 50px;float: left;width: 50px;'>";
	$("#ex_myname").html(inhtml);*/
});

//--------------------------------------------------------------------------------------------------//
/**修改我的地址*/
$("#ex_myaddress").on("click","#e_myaddress",function(){
	//var inputObj = $("#myname")[0];
	$("#s_pro option:selected").remove();
	$("#s_city option:selected").remove();
	$("#s_county option:selected").remove();
	
	findPro();
	//pro_city();
	$("#myaddress").removeAttr("readOnly");
	$("#s_pro").removeAttr("disabled");
	$("#s_city").removeAttr("disabled");
	$("#s_county").removeAttr("disabled");
	$("#myaddress").attr("placeholder","请输入详细地址");
	var inhtml = "<img id='s_myaddress' alt='提交' src='../img/submit.svg' style='height: 30px;float: left;width: 30px;margin-left: 5px;'><img alt='撤销' id='c_myaddress' style='height: 30px;float: left;width: 30px;margin-left: 5px;' src='../img/cancle.svg'>";
	$("#ex_myaddress").html(inhtml);
});

/**设置地址不可写*/
function setaddress(new_myaddress){
	$("#myaddress").attr("readOnly","readOnly");
	$("#s_pro").attr("disabled","disabled");
	$("#s_city").attr("disabled","disabled");
	$("#s_county").attr("disabled","disabled");
	$("#myaddress").attr("placeholder",new_myaddress);
	$("#myaddress").val("");
}

var myaddress = $("#myaddress").attr("placeholder");
/**提交新地址*/
$("#ex_myaddress").on("click","#s_myaddress",function(){
	var pro = $("#s_pro option:selected").text();
	var city = $("#s_city option:selected").text();
	var county = $("#s_county option:selected").text();
	var new_myaddress = $("#myaddress").val();
	var address = pro+"&&"+city+"&&"+county+"&&"+new_myaddress;
	$.ajax({
		  type: "POST",
		  url: $("#PageContext").val()+"/personal/editAddress.action",
		  data: {"uname":old_uname,"address":address},
		  dataType: "json",
		  success: function(msg){
			 if(msg == "true"){
				 window.location.reload();
				 setaddress(new_myaddress);
			 }else{
				alert("修改失败");
				window.location.reload();
				setaddress(myaddress);
			}
		  }
		});
});

/**撤销修改地址名*/
$("#ex_myaddress").on("click","#c_myaddress",function(){
	setaddress(myaddress);
	var inhtml = "<img id='e_myaddress' alt='编辑' src='../img/edit.svg' style='height: 50px;float: left;width: 50px;'>";
	$("#ex_myaddress").html(inhtml);
	window.location.reload();
});

//--------------------------------------------联系方式------------------------------------------------------//
/**编辑联系方式*/
$("#ex_mytel").on("click","#e_mytel",function(){
	//var inputObj = $("#myname")[0];
	$("#mytel").removeAttr("readOnly");
	var inhtml = "<img id='s_mytel' alt='提交' src='../img/submit.svg' style='height: 30px;float: left;width: 30px;margin-left: 5px;'><img alt='撤销' id='c_mytel' style='height: 30px;float: left;width: 30px;margin-left: 5px;' src='../img/cancle.svg'>";
	$("#ex_mytel").html(inhtml);
});

/**设置联系方式不可写*/
function settel(data){
	$("#mytel").attr("readOnly","readOnly");
	$("#mytel").attr("placeholder",data);
	$("#mytel").val("");
}

var old_mytel = $("#mytel").attr("placeholder");
/**提交新联系方式*/
$("#ex_mytel").on("click","#s_mytel",function(){
	old_mytel = $("#mytel").attr("placeholder");
	var new_mytel = $("#mytel").val();
	$.ajax({
		  type: "POST",
		  url: $("#PageContext").val()+"/personal/editTel.action",
		  data: {"uname":old_uname,"tel":new_mytel},
		  dataType: "json",
		  success: function(msg){
			 if(msg == "true"){
				settel(new_mytel);
				old_mytel = new_mytel;
				var inhtml = "<img id='e_mytel' alt='编辑' src='../img/edit.svg' style='height: 50px;float: left;width: 50px;'>";
				$("#ex_mytel").html(inhtml);
			 }else{
				alert("修改失败");
				settel(old_mytel);
				var inhtml = "<img id='e_mytel' alt='编辑' src='../img/edit.svg' style='height: 50px;float: left;width: 50px;'>";
				$("#ex_mytel").html(inhtml);
			 }
		  }
		});
});

/**撤销修改*/
$("#ex_mytel").on("click","#c_mytel",function(){
	settel(old_mytel);
	var inhtml = "<img id='e_mytel' alt='编辑' src='../img/edit.svg' style='height: 50px;float: left;width: 50px;'>";
	$("#ex_mytel").html(inhtml);
});

//--------------------------------------------修改密码------------------------------------------------------//
/**编辑密码*/
$("#ex_mylogin").on("click","#e_mylogin",function(){
	//var inputObj = $("#myname")[0];

	$("#mylogin").removeAttr("readOnly");
	$("#mylogin").attr("type","text");
	var inhtml = "<img id='s_mylogin' alt='提交' src='../img/submit.svg' style='height: 30px;float: left;width: 30px;margin-left: 5px;'><img alt='撤销' id='c_mylogin' style='height: 30px;float: left;width: 30px;margin-left: 5px;' src='../img/cancle.svg'>";
	$("#ex_mylogin").html(inhtml);
});

/**设置密码不可写*/
function setpwd(data){
	$("#mylogin").attr("readOnly","readOnly");
	$("#mylogin").val(data);
	$("#mylogin").attr("type","password");
}

var old_mylogin = $("#mylogin").val();

/**提交新密码*/
$("#ex_mylogin").on("click","#s_mylogin",function(){
	old_mylogin = $("#mylogin").val();
	alert(old_mylogin);
	var new_mylogin = $("#mylogin").val();
	$.ajax({
		  type: "POST",
		  url: $("#PageContext").val()+"/personal/editPwd.action",
		  data: {"uname":old_uname,"pwd":new_mylogin},
		  dataType: "json",
		  success: function(msg){
			 if(msg == "true"){
				alert("下次登录将使用新密码！");
				setpwd(new_mylogin);
				old_mylogin = new_mylogin;
				var inhtml = "<img id='e_mylogin' alt='编辑' src='../img/edit.svg' style='height: 50px;float: left;width: 50px;'>";
				$("#ex_mylogin").html(inhtml);
			 }else{
				alert("修改失败");
				setpwd(old_mylogin);
				var inhtml = "<img id='e_mylogin' alt='编辑' src='../img/edit.svg' style='height: 50px;float: left;width: 50px;'>";
				$("#ex_mylogin").html(inhtml);
			 }
		  }
		});
});

/**撤销修改密码*/
$("#ex_mylogin").on("click","#c_mylogin",function(){
	setpwd(old_mylogin);
	var inhtml = "<img id='e_mylogin' alt='编辑' src='../img/edit.svg' style='height: 50px;float: left;width: 50px;'>";
	$("#ex_mylogin").html(inhtml);
});




