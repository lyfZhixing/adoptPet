function findPro(){
	$.ajax({
		  type: "POST",
		  url: $("#PageContext").val()+"/personal/getPro.action",
		  dataType: "json",
		  success: function(msg){
			 var msgObj=eval("("+msg+")");
			 var inhtml = "";
			 $.each(msgObj,function(index,pro){
				 inhtml += "<option value="+pro.code+">"+pro.name+"</option>";
			 });
			 $("#s_pro").append(inhtml);
			 pro_city();
		  }
	});
}

/**省*/
/*$(function(){
	findPro();
});*/



/**市*/
function findCity(code){
	 $.ajax({
		  type: "POST",
		  url: $("#PageContext").val()+"/personal/getCity.action",
		  data: {"code":code},
		  dataType: "json",
		  success: function(msg){
			 var msgObj=eval("("+msg+")");
			 var inhtml = "";
			 $.each(msgObj,function(index,city){
				 inhtml += "<option value="+city.code+">"+city.name+"</option>";
			 });
			 $("#s_city").html(inhtml);
		  }
		});
}

/**县*/
function findCounty(code){
	 $.ajax({
		  type: "POST",
		  url: $("#PageContext").val()+"/personal/getCounty.action",
		  data: {"code":code},
		  dataType: "json",
		  success: function(msg){
			 var msgObj=eval("("+msg+")");
			 var inhtml = "";
			 $.each(msgObj,function(index,city){
				 inhtml += "<option value="+city.code+">"+city.name+"</option>";
			 });
			 $("#s_county").html(inhtml);
		  }
		});
}

/**省市*/
function pro_city(){
	
	var code = $("#s_pro").val();
	findCity(code);
	setTimeout("var code2 = $('#s_city').val();findCounty(code2)",300)
}

/**省市县联动*/
$(".myaddress").on("click","#s_pro",function(){
	var code = $("#s_pro").val();
	findCity(code);
	setTimeout("var code2 = $('#s_city').val();findCounty(code2)",300)
});

/**市县联动*/
$(".myaddress").on("click","#s_city",function(){
	var code = $("#s_city").val();
	findCounty(code);
});