/**
整个系统公用的JS
**/
//=====页面JS初始化========
function Initialize(){
	//初始化对话框
	$("#dialog").dialog({
		autoOpen: false,
		modal: true,
		buttons: {
			'确认': function () {
				$("#dialog form").submit();
			},
			'取消': function () {
			   $("#dialog").dialog("close");
			}
		}
	});
	//日期控件初始化
	$(".date").datepicker();
	$(".date_time").datetimepicker();
}
//调用方法dialog_add({'title':'对话框标题','w':'600','h':'400'},'url','param');
function dialog(obj,url,param){
	obj=obj?obj:'0';
	var title=obj['title']?obj['title']:"对话框";
	var width=obj['w']?obj['w']:'600';
	var height=obj['h']?obj['h']:'400';
	$("#dialog").dialog({
		"title":title,
		"width":width,
		"height":height,
	});
	//ajax参数
	var url=url?url:'add';
	var post=obj['post']?obj['post']:'post';
	var dataType=obj['dataType']?obj['dataType']:'html';
	var param=param?param:'';
	$.ajax({
		"type":post,
		"url": url,
		"dataType":dataType,
		"data":param,
		"success": function(html){
			$("#dialog").html(html);
			$("#dialog").dialog("open");
		}
	});
}