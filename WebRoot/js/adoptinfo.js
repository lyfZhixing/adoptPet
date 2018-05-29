
/**提交申请*/
$("#s-answer").click(function(){
	var answer1 = $("#answer1").val();
	var answer2 = $("#answer2").val();
	var answer3 = $("#answer3").val();
	var serialno2 = $("#hidden-serialno").val();
	var user = $("#sessionIsNull").val();
	if(user == null || user == "" || user == undefined){
		alert("请先登录！");
		openLogin();
	}else if(answer1 != null && answer1 != "" && answer1 != undefined &&
			answer2 != null && answer2 != "" && answer2 != undefined &&
			answer3 != null && answer3 != "" && answer3 != undefined){
		$.ajax({
			  type: "POST",
			   url: $("#PageContext").val()+"/adopt/apply.action",
			   data: {"answer1":answer1,"answer2":answer2,"answer3":answer3,"serialno2":serialno2},
			   dataType: "json",
			   success: function(msg){
			     if(msg == "true"){
			    	 alert("申请成功!");
			    	 window.location.href=$("#PageContext").val()+"/index/index.action"
			     }else{
			    	 alert("提交申请失败，请勿重复申请！！");
			     }
			   }
			});
	}else{
		alert("请填写答案！");
	}
});

/**撤销返回*/
$("#c-answer").click(function(){
	 /*window.location.href=$("#PageContext").val()+"/index/index.action"*/
	window.history.back(-1); 
});




