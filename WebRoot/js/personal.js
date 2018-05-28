/**查看更多我发布的领养信息*/
$("#adopt_more").click(function(){
	window.location.href=$("#PageContext").val()+"/publish/toMyPublish.action";
});
$("#apply_more").click(function(){
	window.location.href=$("#PageContext").val()+"/publish/toMyApply.action";
});

$(".adopt-info img").click(function(){
	window.location.href=$("#PageContext").val()+"/publish/toMyPublish.action";
});

$(".apply-info img").click(function(){
	window.location.href=$("#PageContext").val()+"/publish/toMyApply.action";
});