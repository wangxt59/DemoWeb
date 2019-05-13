<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="../../assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Light Bootstrap Dashboard PRO by Creative Tim</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

     <!-- Canonical SEO -->
    <link rel="canonical" href="https://www.creative-tim.com/product/light-bootstrap-dashboard-pro"/>

    <!--  Social tags      -->
    <meta name="keywords" content="creative tim, html dashboard, html css dashboard, web dashboard, bootstrap dashboard, bootstrap, css3 dashboard, bootstrap admin, light bootstrap dashboard, frontend, responsive bootstrap dashboard">

    <meta name="description" content="Forget about boring dashboards, get an admin template designed to be simple and beautiful.">

    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="Light Bootstrap Dashboard PRO by Creative Tim">
    <meta itemprop="description" content="Forget about boring dashboards, get an admin template designed to be simple and beautiful.">

    <meta itemprop="image" content="http://s3.amazonaws.com/creativetim_bucket/products/34/original/opt_lbd_pro_thumbnail.jpg">
    <!-- Twitter Card data -->

    <meta name="twitter:card" content="product">
    <meta name="twitter:site" content="@creativetim">
    <meta name="twitter:title" content="Light Bootstrap Dashboard PRO by Creative Tim">

    <meta name="twitter:description" content="Forget about boring dashboards, get an admin template designed to be simple and beautiful.">
    <meta name="twitter:creator" content="@creativetim">
    <meta name="twitter:image" content="http://s3.amazonaws.com/creativetim_bucket/products/34/original/opt_lbd_pro_thumbnail.jpg">
    <meta name="twitter:data1" content="Light Bootstrap Dashboard PRO by Creative Tim">
    <meta name="twitter:label1" content="Product Type">
    <meta name="twitter:data2" content="$29">
    <meta name="twitter:label2" content="Price">

    <!-- Open Graph data -->
    <meta property="og:title" content="Light Bootstrap Dashboard PRO by Creative Tim" />
    <meta property="og:type" content="article" />
    <meta property="og:url" content="http://demos.creative-tim.com/light-bootstrap-dashboard-pro/examples/dashboard.html" />
    <meta property="og:image" content="http://s3.amazonaws.com/creativetim_bucket/products/34/original/opt_lbd_pro_thumbnail.jpg"/>
    <meta property="og:description" content="Forget about boring dashboards, get an admin template designed to be simple and beautiful." />
    <meta property="og:site_name" content="Creative Tim" />


    <!-- Bootstrap core CSS     -->
    <link href="/css/bootstrap.min.css" rel="stylesheet" />

    <!--  Light Bootstrap Dashboard core CSS    -->
    <link href="/css/light-bootstrap-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="/css/font-awesome.min.css" rel="stylesheet">
    <link href='/css/685fd913f1e14aebad0cc9d3713ee469.css' rel='stylesheet' type='text/css'>
    <link href="/css/pe-icon-7-stroke.css" rel="stylesheet" />

</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="orange" data-image="/picture/full-screen-image-3.jpg">

        <div class="logo">
            <a href="http://www.creative-tim.com" class="logo-text">
                	管理系统
            </a>
        </div>
		<div class="logo logo-mini">
			<a href="http://www.creative-tim.com" class="logo-text">
				Ct
			</a>
		</div>

    	<div class="sidebar-wrapper">

            <div class="user">
                <div class="photo">
                    <img src="/picture/50308.png" />
                </div>
                <div class="info">
                    <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                       	 用户
                        <b class="caret"></b>
                    </a>
                    <div class="collapse" id="collapseExample">
                        <ul class="nav">
                            <li><a href="#">我的资料</a></li>
                            <li><a href="#">修改资料</a></li>
                            <li><a href="#">个人设置</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 菜单 -->
        	    <ul class="nav">
                <#list  menus as menu>
				<li >
					<a class="aa" data-toggle="collapse" id=${menu.menu_id} onclick="showMenuList(${menu.menu_id});">
						<i><img src="${menu.icon_url}" /></i>
	                    <p style="font-size:15px">${menu.menu_name}<b class="caret"></b></p>
                  	</a>
					<div class="collapse" id="formsExamples">
						<ul class="nav">
						<#list menu.childMenuList as childMenu>
							<li id="${childMenu.menu_id}">
								<a onclick="toUrl('${childMenu.menu_name }','${childMenu.url}',this)" > ${childMenu.menu_name }</a>
							</li>
						</#list>
						</ul>
					</div>
				</li>
				</#list>
            </ul>
            <!-- 菜单 -->
    	</div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
				<div class="navbar-minimize">
    				<button id="minimizeSidebar" class="btn btn-warning btn-fill btn-round btn-icon">
    					<i class="fa fa-ellipsis-v visible-on-sidebar-regular"></i>
    					<i class="fa fa-navicon visible-on-sidebar-mini"></i>
    				</button>
    			</div>
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a id="title" class="navbar-brand" href="#"></a>
                </div>
                <div class="collapse navbar-collapse">

                    <form class="navbar-form navbar-left navbar-search-form" role="search">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-search"></i></span>
                            <input type="text" value="" class="form-control" placeholder="Search...">
                        </div>
                    </form>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="../charts.html">
                                <i class="fa fa-line-chart"></i>
                                <p>Stats</p>
                            </a>
                        </li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-gavel"></i>
                                <p class="hidden-md hidden-lg">
                                    Actions
                                    <b class="caret"></b>
                                </p>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Create New Post</a></li>
                                <li><a href="#">Manage Something</a></li>
                                <li><a href="#">Do Nothing</a></li>
                                <li><a href="#">Submit to live</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Another Action</a></li>
                            </ul>
                        </li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-bell-o"></i>
                                <span class="notification">5</span>
                                <p class="hidden-md hidden-lg">
    								Notifications
    								<b class="caret"></b>
    							</p>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Notification 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Another notification</a></li>
                            </ul>
                        </li>

                        <li class="dropdown dropdown-with-icons">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-list"></i>
                                <p class="hidden-md hidden-lg">
    								More
    								<b class="caret"></b>
    							</p>
                            </a>
                            <ul class="dropdown-menu dropdown-with-icons">
                                <li>
                                    <a href="#">
                                        <i class="pe-7s-mail"></i> Messages
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="pe-7s-help1"></i> Help Center
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="pe-7s-tools"></i> Settings
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">
                                        <i class="pe-7s-lock"></i> Lock Screen
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="text-danger">
                                        <i class="pe-7s-close-circle"></i>
                                        Log out
                                    </a>
                                </li>
                            </ul>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>

      	<!--页面主体-->
		<div class="content">
		<div id="myManu" ></div>
		</div>
		<!--页面主体 over-->
		
		
        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Company
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Portfolio
                            </a>
                        </li>
                        <li>
                            <a href="#">
                               Blog
                            </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy; 2016 <a href="http://www.creative-tim.com">Creative Tim</a>, made with love for a better web
                </p>
            </div>
        </footer>


    </div>
</div>



</body>
    <!--   Core JS Files and PerfectScrollbar library inside jquery.ui   -->
    <script src="/js/jquery.min.js" type="text/javascript"></script>
    <script src="/js/jquery-ui.min.js" type="text/javascript"></script>
	<script src="/js/bootstrap.min.js" type="text/javascript"></script>


	<!--  Forms Validations Plugin -->
	<script src="/js/jquery.validate.min.js"></script>

	<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
	<script src="/js/moment.min.js"></script>

    <!--  Date Time Picker Plugin is included in this js file -->
    <script src="/js/bootstrap-datetimepicker.js"></script>

    <!--  Select Picker Plugin -->
    <script src="/js/bootstrap-selectpicker.js"></script>

	<!--  Checkbox, Radio, Switch and Tags Input Plugins -->
	<script src="/js/bootstrap-checkbox-radio-switch-tags.js"></script>

	<!--  Charts Plugin -->
	<script src="/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="/js/bootstrap-notify.js"></script>

    <!-- Sweet Alert 2 plugin -->
	<script src="/js/sweetalert2.js"></script>

    <!-- Vector Map plugin -->
	<script src="/js/jquery-jvectormap.js"></script>

    <!--  Google Maps Plugin    -->
    <script src="/js/aa743e8f448a4792bad10d201a7080f6.js"></script>

	<!-- Wizard Plugin    -->
    <script src="/js/jquery.bootstrap.wizard.min.js"></script>

	<!--  Bootstrap Table Plugin    -->
	<script src="/js/bootstrap-table.js"></script>

	<!--  Plugin for DataTables.net  -->
	<script src="/js/jquery.datatables.js"></script>

    <!--  Full Calendar Plugin    -->
    <script src="/js/fullcalendar.min.js"></script>

    <!-- Light Bootstrap Dashboard Core javascript and methods -->
	<script src="/js/light-bootstrap-dashboard.js"></script>

	<!--   Sharrre Library    -->
    <script src="/js/jquery.sharrre.js"></script>

	<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
	<script src="/js/demo.js"></script>

    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-46172202-1', 'auto');
      ga('send', 'pageview');

    </script>
	<script type="text/javascript">
		function toUrl(name,url,Obj){
			$.ajax({
	             type: "GET",
	             url: "/todo.do",
	             data: {url:url},
	             dataType: "json",
	             success: function(data){
	            	 //alert(data.code);
	            	 //alert(data.url);
	            	url=data.url;
	            	 
	            	$("#myManu").load('/page/'+url+'.html');
	     			var title=document.getElementById("title");
	     			title.innerText=name;
	     			$("ul li").attr("class","")
	     			$(Obj).parent().attr("class","active");
	     			var aa=$(Obj).parent().parent().parent().parent().prop("nodeName");
	     			if(aa=="LI"){
	     				$(Obj).parent().parent().parent().parent().attr("class","active");
	     			}
	                        /*  $('#resText').empty();   //清空resText里面的所有内容
	                         var html = ''; 
	                         $.each(data, function(commentIndex, comment){
	                               html += '<div class="comment"><h6>' + comment['username']
	                                         + ':</h6><p class="para"' + comment['content']
	                                         + '</p></div>';
	                         });
	                         $('#resText').html(html); */
	                      }
	         });
			
		}
		
		
		//这是给div的一个初始页面
       $(document).ready(function(){
      	$("#myManu").load('/page/NewFile2.html');
       	})
       
     /*    var menuClick = function(menuUrl) {
           
            $("#myManu").load(menuUrl);
        }; */
</script>
<script>
/*     function changeIframe(obj) {
       	var url = $(obj).attr('state');
       	$("#content_iframe").attr("src",url)
       	} */
	function showMenuList(menuId){
	    var classValue = $(menuId).parent().find("div").attr("class");
	    if('collapse'==classValue){
			$(menuId).parent().parent().find("li").find("div").attr("class","collapse");
	   		$(menuId).parent().find("div").attr("class","collapse in");
	    }
		if(classValue == 'collapse in'){
		    $(menuId).parent().find("div").attr("class","collapse");
	    }
	}	
</script>
</html>