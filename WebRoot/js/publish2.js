$("#edit").click(function(){
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
	$("#myaddress").val("");
});


/**发布领养信息*/
$("#submit").click(function(){
	var uname = $("#hiddenUname").val();
	var type = $("input[name='radio']:checked").val();
	var title = $("#pubtitle").val();
	var detial = $("#pubdetial").val();
	var pro = $("#s_pro option:selected").text();
	var city = $("#s_city option:selected").text();
	var county = $("#s_county option:selected").text();
	var new_myaddress = $("#myaddress").val();
	var address = pro+"&&"+city+"&&"+county+"&&"+new_myaddress;
	var question1 = $("#question1").val();
	var question2 = $("#question2").val();
	var question3 = $("#question3").val();
	
	if(uname == undefined || uname == ""){
		alert("请重新登录");
	}else if(type == undefined || type == ""){
		alert("请选取类型!");
	}else if(title == undefined || title == ""){
		alert("请输入标题!");
	}else if(detial == undefined || detial == ""){
		alert("请输入详情！");
	}else if(new_myaddress == undefined || new_myaddress == ""){
		alert("请输入详细地址！");
	}else if(question1 == undefined || question1 == ""){
		alert("请输入问题1！");
	}else if(question2 == undefined || question2 == ""){
		alert("请输入问题2！");
	}else if(question3 == undefined || question3 == ""){
		alert("请输入问题3！");
	}else{
		alert(1);
		$.ajax({
			type: "POST",
			  url: $("#PageContext").val()+"/publish/publish.action",
			  data: {"uname":uname,"type":type,"title":title,"detial":detial,"address":address,"question1":question1,"question2":question2,"question3":question3},
			  dataType: "json",
			  success: function(msg){
				 if(msg == "true"){
					 alert("发布成功");
					 //跳转至我的发布页面
				 }else{
					alert("发布失败");
				}
			  }
		});
	}
	
	
});