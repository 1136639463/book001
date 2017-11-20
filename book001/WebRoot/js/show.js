/**
 * 
 */

$(function(){
	//取绝对路径
	var ctx=$("#hidd").val();
	//取尾页
	var lastPage=$("#lastPage").val();
	//取当前页的值
	var page=$("#page").val();
	
	
	//隔行变色
	$(".tr:odd").css("background-color","#B0E0E6");
	$(".tr:even").css("background-color","#CDCDB4");
	
	//点击首页
	$("#b1").click(function(){
		window.location.href=ctx+"/query/1";
	});
	
	//点击上一页
	$("#b2").click(function(){
		if(page<=1){
			page=1;
		}else{
			page--;
		}
		window.location.href=ctx+"/query/"+page;
	});
	
	
	//点击下一页
	$("#b3").click(function(){
		Window.alert("======================")
		if(page>=lastPage){
			page=lastPage;
		}else{
			page=page+2;
		}
		window.location.href=ctx+"/query/"+page;
	});
	
	//点击尾页
	$("#b4").click(function(){
		window.location.href=ctx+"/query/"+lastPage;
	});
	
	//出发保存书籍事件
	$("#save").click(function(){
		window.location.href=ctx+"/init";
	});
});


//进行点击删除事件
function deleteById(id){
	//取页面绝对路径的值
	var ctx=document.getElementById("hidd").value;
	window.location.href=ctx +"/delete/"+id;
}