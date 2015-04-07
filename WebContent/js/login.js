//初始化页面时验证是否记住了密码
$(document).ready(function() {
    if ($.cookie("rmbUser") == "true") {
        $("#re").attr("checked", true);
        $("#inputUsername").val($.cookie("userName"));
        $("#inputPassword").val($.cookie("passWord"));
    }
});



$("#loginBtn").click(function(){
//	    if(document.getElementById("re").checked){
//	    
//	    	  $.cookie("username",$("inputUsername").val(),{expires:7});
//	    }
//	    else{
//	    	$.cookie("username",'',{expires:-1});//删除cookie
//	    }
	 if (document.getElementById("re").checked) {
		    
	        var userName = $("#inputUsername").val();
	        var passWord = $("#inputPassword").val();
	       
	        $.cookie("rmbUser", "true", { expires: 30 }); // 存储一个带7天期限的 cookie
	        $.cookie("userName", userName, { expires: 30 }); // 存储一个带7天期限的 cookie
	        $.cookie("passWord", passWord, { expires: 30}); // 存储一个带7天期限的 cookie
	      
	    }
	    else {
	        $.cookie("rmbUser", "false", { expires: -1 });        // 删除 cookie
	        $.cookie("userName", '', { expires: -1 });
	        $.cookie("passWord", '', { expires: -1 });
	    }
	  
		$("#loading").empty();
		$("#show").empty();
		$("#loading").hide();
		$("#show").hide();
	    $("#loading").append("正在登陆，请稍等.......");
	    $("#loading").show(1000);
	
	
	 $.ajax({ url: "loginaction.html", 
		      data:$("#loginForm").serializeArray(), 
		      dataType: "html",
		      timeout: 10000, 
		      success: function(data,textStatus){
		    	  if(data=="登录成功"){
		    		  window.location.reload();
		  			
		  		}
		  		else{
		  			$("#loading").empty();
		  			$("#show").empty();
		  			$("#loading").hide();
		  			$("#show").hide();
		  			$("#show").append("登录结果：" + data + "<br />");
		  			$("#show").show(1000);
		  		   }
	            },
	            error:function(XMLHttpRequest, textStatus, errorThrown){
	            	$("#show").empty();
	            	$("#show").append("出现未知错误");
	       	    }
	 
	 } ); 

 });