
$(function(){
	
	//动态获取id
	$("input[name='app_serialno']").each(function(){
		var appserialno = jQuery(this).val();
        //alert(appserialno);
        $("#mypub_answerbt"+appserialno+"").click(function () {
    	    $(".theanswer").show();
    	    $(".theanswer"+appserialno+"").show();
    	    $(".theanswer"+appserialno+"").attr("style","width: 800px; height: 500px; border:1px solid #cccccc;"+
   " position: fixed; top: 0px; left: 0px;  right: 0px; bottom: 0px; " +
   "margin: auto;background:rgba(255,255,255,1);border-radius: 10px;z-index: 666");
    	});
        
        $("#myAnswer_bt1"+appserialno+"").click(function(){
        	var adoserialno = $("#"+appserialno+"_adopt").val();
        	if(confirm("确定要他领养吗？")){
        		$.ajax({
      			  type: "POST",
      			   url: $("#PageContext").val()+"/apply/confirmApply.action",
      			   data: {"serialno":appserialno,"serialno2":adoserialno},
      			   dataType: "json",
      			   success: function(msg){
      			     if(msg == "true"){
      			    	 location.reload();
      			     }else{
      			    	 alert("操作失败，请稍后重试！");
      			     }
      			   }
      			});
        	}
    	});
        
        $("#myAnswer_bt2"+appserialno+"").click(function(){
        	$(".theanswer"+appserialno+"").hide();
    	    $(".theanswer"+appserialno+"").remove("style");
    	});
	});
	
	
	
	
});


