<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>LiuWen's Web</title>
	<script src="./js/jquery.min.js"> </script>
	<link href="./css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!---- start-smoth-scrolling---->
		<script type="text/javascript" src="./js/move-top.js"></script>
		<script type="text/javascript" src="./js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
 	<!---- start-smoth-scrolling---->
</head>
<body>
<% String path =  request.getContextPath(); %>
<!------headerbg starts--------->
 <div id="top-top" class="headerbg">
	 <!------header starts--------->
	   <div class="header">
		 <!------container starts--------->
			  <div class="container">
				   <div class="logo">
						<a href="#">Personal Web</a>
				   </div>
				  <!------Navigation starts--------->
				  <div class="nav">
					 <ul>
						 <li><a class="scroll" href="#about">个人简介</a></li>
						 <li><a class="scroll" href="#skills">专业技能</a></li>
						 <li><a class="scroll" href="#port">个人经历</a></li>
						 <li><a class="scroll" href="#contact">留言</a></li>
						 <li><a href="<%=path %>/user/admin">管理员</a></li>
						 <li><a href="<%=path %>/joke/list">开心一刻</a></li>
					 </ul>
				 </div>
				  <!------Navigation ends-------->
					<div class="clear"></div>
			  </div>
		 <!------container ends--------->
	   </div>
	 <!------header ends--------->
	 <!------Banner starts--------->
	   <div class="banner">
	      <div class="container">
		     <div class="banner-info">
			      <div class="bannerlogo">
					  <img src="./images/diamond.png">
			      </div>
			      <div class="bannerhead">
				      <h2>My name is <span>刘文</span></h2>
				      <h3>Programming Enthusiasts</h3>
				 	  <a class="downarrow scroll" href="#about"><span> </span></a>
			      </div>
			 </div>
			 <div class="clear"></div>
		  </div>
	  </div>
	  <!------Banner ends-------->
 </div>
 <!------Headerbg ends-------->
 <!------Content starts--------->
 <div class="content">
	 <!------About starts--------->
	   <div id="about" class="about">
		 <div class="container">
			   <div class="header-section text-center">
				  <h2><span> </span>个人简介<span> </span></h2>
				  </div>
				 <span><p></p></span>
					 
			  <div class="years">	 
				<h4><b>基本信息</b></h4>
				 <span><h4>Basic Information</h4></span>
				 <p>刘文，男，天蝎座，1994年生于江西赣州，现在就读于江西师范大学</p>
			  </div> 
				
			  <div class="years">	 
				<h4><b>求职意向</b></h4>
				 <span><h4>Career Objective</h4></span>
				 <p>Java工程师、Java Web工程师</p>
			  </div>
			  
			  <div class="years">	 
				<h4><b>自我评价</b></h4>
				 <span><h4>Self-evaluation</h4></span>
				 <p>自学能力较强，曾自学过C++、Java、OpenGL、Unity3D等</p>
				 <p>有实战经验，2016年3-5月参与南昌城市配送系统Web端的开发</p>
				 <p>有团队协作经验，合作团队意识较强</p>
				 <p>热爱学习，积极参加学科竞赛和社会实践</p>
			  </div>
			  <a class="arrow scroll" href="#skills"><span> </span></a>
		  </div>
	  </div>
	 <!------About Ends--------->
	 
	<!------SKILLS Starts--------->
	  <div id="skills" class="skills">
	  <div class="container">
	     <div class="skills-grids">
			  <div class="skill-section text-center">
				  <h2><span> </span>专业技能<span> </span></h2>
			  </div>
					  <div class="services_grids">
						  <div id="canvas">
								<div class="skill-grids text-center">
										<div class="col-md-3">	
											<div class="skill-grid">
												<div class="circle" id="circles-0"></div>									
												 <h3>Java</h3>	
											 </div>								  
										</div>
										<div class="col-md-3">	
											<div class="skill-grid">
												<div class="circle" id="circles-1"></div>									
												 <h3>JavaScript</h3>	
											 </div>								  
										</div>
										<div class="col-md-3">	
											<div class="skill-grid">
												<div class="circle" id="circles-2"></div>									
												 <h3>JSP</h3>	
											 </div>								  
										</div>
										<div class="col-md-3">	
											<div class="skill-grid">
												<div class="circle" id="circles-3"></div>									
												 <h3>MySQL</h3>	
											 </div>								  
										</div>
										<div class="clearfix"> </div>
								  </div>
						   </div>
					  </div>
					<!---->
					 <script type="text/javascript" src="./js/circles.js"></script>
								 <script>
									var colors = [
											['#181115', '#30222A'], ['#181115', '#30222A'], ['#181115', '#30222A'], ['#181115', '#30222A']
										];
									var percents = [1, 1, 1, 1];
									for (var i = 0; i < 8; i++) {
										var child = document.getElementById('circles-' + i),
											percentage = percents[i];
											
										Circles.create({
											id:         child.id,
											percentage: percentage,
											radius:     80,
											width:      15,
											number:   	percentage,
											text:       '%',
											colors:     colors[i]
										});
									}
							
					</script>
					
					<!--/-->
			 </div>
		 </div>
		   <a class="down scroll" href="#port"><span> </span></a>
	  </div>
	  </div>
	 <!------SKILLS Ends--------->
		 <!------PORTFOLIO Starts--------->
		 <div id="port" class="Portfolio">
			  <div class="Portfolio-section text-center">
			      <h2><span> </span>个人经历<span> </span></h2>
			  </div>
			  <div class="container">
				  <div class="portfolio-grids">
					  <div class="portfolio-grid col-md-4">
						 <a href="#"><img src="./images/monitr1.png"></a>
						  <p>南昌电信Android开发培训</p>
						  <a class="rightarrow" href="#"><span> </span></a>
					  </div>
					  <div class="portfolio-grid col-md-4">
						  <a href="<%=path %>/WEB-INF/view/honour/icm.html"><img src="./images/monitr2.png"></a>
						  <p>参加 ICM，荣获 Honorable Mention 奖</p>
						  <a class="rightarrow" href="#"><span> </span></a>
					  </div>
					  <div class="portfolio-grid col-md-4">
						  <a href="http://tp.56tg.cn/"><img src="./images/monitr3.png"></a>
						  <p>南昌城市配送系统 Web端</p>
						  <a class="rightarrow" href="#"><span> </span></a>
					  </div>
					  <div class="clear"> </div>
				  </div>
				  <a class="portdown scroll" href="#contact"><span> </span></a>
				  
			  </div>
		 </div>
  </div>
  <!------Content Ends-------->
  <!------FOOTER Starts----------->
  <div  id="contact" class="footer">
      <div class="container">
	  
		   <div class="contact-section text-center">
			  <h2><span> </span>留言<span> </span></h2>
		  </div>
		 <div class="row">
		 
			 <div class="col-md-6">
				  <div class="footer-left">
						<div class="social-icons">
						   <a href="#"><img src="./images/in.png"></a>
						   <a href="#"><img src="./images/twt.png"></a>
						   <a href="#"><img src="./images/fb.png"></a>
					   </div>
					   <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem
					   quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh
					   id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.
					   Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a
					   ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit.</p>
				  </div>
			 </div>
			  
			  <div class="col-md-6">
				  <div class="footer-right">
				 <div class="form">
				 <form action="<%=path %>/message/add" method="post" onsubmit="return onSubmitCheck()">
					 <input type="text" class="text" name="name" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
					 <input type="text" class="text" id="eMail" name="email" value="E-mail" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'E-mail';}">
					 <textarea rows="2" cols="70" id="message" name="mes" onfocus="if(this.value == 'Your Message') this.value='';" onblur="if(this.value == '') this.value='Your Message';" >Your Message</textarea>
					 <div class="clear"> </div>
					 <input type="submit" value="SEND"> 
				 </form>
				 </div>
				  </div>
				  <div class="clear"></div>
			  </div>
		 </div>
	 </div>
	 <a class="up scroll" href="#top-top"><span> </span></a>
 </div>
 本站框架：spring mvc + hibernate<br>
 环境：ubuntu 14.04 64位、tomcat7、jdk7、mysql5

 </body>
 <script type="text/javascript">
 	function onSubmitCheck(){
 		var email = $('#eMail').val();
 		var message = $('#message').val();
 		if(email != "E-mail"){
 			if(!(/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/).test(email)){
 				alert("请输入正确的邮箱或者不填写邮箱信息！");
 	 			return false;
 			}
 		}
 		if(message == 'Your Message'){
 			alert("留言不能为空！");
 			return false;
 		}
 		return true;
 	}
 </script>
</html>