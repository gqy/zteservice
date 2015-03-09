$("#loginBtn").click(function(){
		
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