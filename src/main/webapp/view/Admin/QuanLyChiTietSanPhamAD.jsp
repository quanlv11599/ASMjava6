<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<!-- Mirrored from demos.creative-tim.com/bs3/material-dashboard-pro/examples/dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 03 Jun 2021 22:11:14 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->
<head>





<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="/assetsAD/img/apple-icon.png" />
<link rel="icon" type="image/png" href="/assetsAD/img/favicon.png" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Vue - Clean Minimal eCommerce HTML Template</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />

<!-- Canonical SEO -->
<link rel="canonical"
	href="https://www.creative-tim.com/product/material-dashboard-pro" />

<!--  Social tags      -->
<meta name="keywords"
	content="material dashboard, bootstrap material admin, bootstrap material dashboard, material design admin, material design, creative tim, html dashboard, html css dashboard, web dashboard, freebie, free bootstrap dashboard, css3 dashboard, bootstrap admin, bootstrap dashboard, frontend, responsive bootstrap dashboard, premiu material design admin">

<meta name="description"
	content="Material Dashboard PRO is a Premium Material Bootstrap Admin with a fresh, new design inspired by Google's Material Design.">

<!-- Schema.org markup for Google+ -->
<meta itemprop="name"
	content="Material Dashboard PRO by Creative Tim | Premium Bootstrap Admin Template">
<meta itemprop="description"
	content="Material Dashboard PRO is a Premium Material Bootstrap Admin with a fresh, new design inspired by Google's Material Design.">
<meta itemprop="image"
	content="../../../../s3.amazonaws.com/creativetim_bucket/products/51/opt_mdp_thumbnail.jpg">

<!-- Twitter Card data -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="@creativetim">
<meta name="twitter:title"
	content="Material Dashboard PRO by Creative Tim | Premium Bootstrap Admin Template">
<meta name="twitter:description"
	content="Material Dashboard PRO is a Premium Material Bootstrap Admin with a fresh, new design inspired by Google's Material Design.">
<meta name="twitter:creator" content="@creativetim">
<meta name="twitter:image"
	content="../../../../s3.amazonaws.com/creativetim_bucket/products/51/opt_mdp_thumbnail.jpg">

<!-- Open Graph data -->
<meta property="fb:app_id" content="655968634437471">
<meta property="og:title"
	content="Material Dashboard PRO by Creative Tim | Premium Bootstrap Admin Template" />
<meta property="og:type" content="article" />
<meta property="og:url"
	content="https://www.creative-tim.com/product/material-dashboard-pro" />
<meta property="og:image"
	content="../../../../s3.amazonaws.com/creativetim_bucket/products/51/opt_mdp_thumbnail.jpg" />
<meta property="og:description"
	content="Material Dashboard PRO is a Premium Material Bootstrap Admin with a fresh, new design inspired by Google's Material Design." />
<meta property="og:site_name" content="Creative Tim" />

<!-- Bootstrap core CSS     -->
<link href="/assetsAD/css/bootstrap.min.css" rel="stylesheet" />



<!--  Material Dashboard CSS    -->
<link href="/assetsAD/css/material-dashboard98f3.css?v=1.3.0"
	rel="stylesheet" />

<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="/assetsAD/css/demo.css" rel="stylesheet" />


<!--     Fonts and icons     -->
<link href="/assetsAD/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<!-- Google Tag Manager -->
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = '../../../../www.googletagmanager.com/gtm5445.html?id=' + i
				+ dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-NKDMSK6');
</script>
<!-- End Google Tag Manager -->

</head>


<body>
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->

	<div class="wrapper">

		<div class="sidebar" data-active-color="rose"
			data-background-color="black" data-image="/assetsAD/img/sidebar-1.jpg">
			<!--
        Tip 1: You can change the color of active element of the sidebar using: data-active-color="purple | blue | green | orange | red | rose"
        Tip 2: you can also add an image using data-image tag
        Tip 3: you can change the color of the sidebar with data-background-color="white | black"
    -->

			<div class="logo"></div>

			<div class="sidebar-wrapper">
				<div class="user">
					<div class="photo">
						<img src="/assetsAD/img/faces/avatar.jpg" />
					</div>

					<form action="/index/login" method="get"
						enctype="multipart/form-data">
						<c:if test="${sessionScope.username == null}">
							<div class="info">
							<a href="/indexAD/login">Register / Sign in </a>
							</div>
						</c:if>
						<c:if test="${sessionScope.username != null}">
							<div class="info">
								<a data-toggle="collapse" href="#collapseExample"
									class="collapsed"> <span> Hello
										${sessionScope.username}! <b class="caret"></b>
								</span>
								</a>
								<div class="clearfix"></div>
								<div class="collapse" id="collapseExample">
									<ul class="nav">
										<li><a href="#"> <span class="sidebar-mini">
													HS </span> <span class="sidebar-normal"> H??? S?? C?? Nh??n </span>
										</a></li>
										<li><a href="/indexAD/login"> <span
												class="sidebar-mini"> ??X </span> <span
												class="sidebar-normal"> ????ng Xu???t </span>
										</a></li>
									</ul>
								</div>
							</div>
						</c:if>
					</form>




				</div>
				<ul class="nav">

					<li><a href="/indexAD/home"> <i
							class="material-icons">dashboard</i>
							<p>Qu???n L?? S???n Ph???m</p>
					</a></li>

					<li class="active"><a href="/indexAD/DetailProduct"> <i
							class="material-icons">image</i>
							<p>Qu???n L?? Chi Ti???t S???n Ph???m</p>
					</a></li>

					<li><a href="/indexAD/Account"> <i
							class="material-icons">content_paste</i>
							<p>Qu???n L?? Ng?????i D??ng</p>
					</a></li>

					<li><a href="/indexAD/Order"> <i
							class="material-icons">grid_on</i>
							<p>Qu???n L?? ????n H??ng</p>
					</a></li>

					<li><a href="/indexAD/OrderDetail"> <i
							class="material-icons">place</i>
							<p>Qu???n L?? Chi Ti???t ????n H??ng</p>
					</a></li>
				</ul>
			</div>
		</div>


		<div class="main-panel">

			<nav class="navbar navbar-transparent navbar-absolute">
				<div class="container-fluid">
					<div class="navbar-minimize">
						<button id="minimizeSidebar"
							class="btn btn-round btn-white btn-fill btn-just-icon">
							<i class="material-icons visible-on-sidebar-regular">more_vert</i>
							<i class="material-icons visible-on-sidebar-mini">view_list</i>
						</button>
					</div>
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#"> Dashboard </a>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#pablo" class="dropdown-toggle"
								data-toggle="dropdown"> <i class="material-icons">dashboard</i>
									<p class="hidden-lg hidden-md">Dashboard</p>
							</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <i class="material-icons">notifications</i>
									<span class="notification">5</span>
									<p class="hidden-lg hidden-md">
										Notifications <b class="caret"></b>
									</p>
							</a>
								<ul class="dropdown-menu">
									<li><a href="#">Mike John responded to your email</a></li>
									<li><a href="#">You have 5 new tasks</a></li>
									<li><a href="#">You're now friend with Andrew</a></li>
									<li><a href="#">Another Notification</a></li>
									<li><a href="#">Another One</a></li>
								</ul></li>
							<li><a href="#pablo" class="dropdown-toggle"
								data-toggle="dropdown"> <i class="material-icons">person</i>
									<p class="hidden-lg hidden-md">Profile</p>
							</a></li>

							<li class="separator hidden-lg hidden-md"></li>
						</ul>


						<form action="/indexAD/shop" method="post" class="navbar-form navbar-right" role="search">
							<div class="form-group form-search is-empty">
								<input name="keywords" value="${keywords}" type="text" class="form-control" placeholder=" Search ">
								<span class="material-input"></span>
							</div>
							<button type="submit"
								class="btn btn-white btn-round btn-just-icon">
								<i class="material-icons">search</i>
								<div class="ripple-container"></div>
							</button>
						</form>
					</div>
				</div>
			</nav>
						<div class="content">
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-12">
			            <div class="card">
			              <div class="card-header card-header-icon" data-background-color="rose">
			                <i class="material-icons">image</i>
			              </div>
			              <div class="card-content">
			                <h4 class="card-title">Chi Ti???t S???n Ph???m</h4>
			                <form:form action="/indexAD/DetailProduct" modelAttribute="item" >

			                  <div class="form-group label-floating col-sm-8">
			                    <label class="control-label">T??n S???n Ph???m</label>
			                    <form:input path="name" type="text" class="form-control"/><br/>
								  <form:errors path="name"/><br/>
			                  <span class="material-input"></span></div>

							  <div class="form-group label-floating col-sm-4">
			                    <label class="control-label">Ng??y T???o</label>
			                    <form:input path="createDate" type="text" class=" datepicker form-control" value=""/><br/>
								  <form:errors path="createDate"/><br/>
			                  <span class="material-input"></span></div>

							  <div class="form-group label-floating col-sm-4">
			                    <label class="control-label">Gi?? S???n Ph???m</label>
			                    <form:input path="price" type="text" class=" datepicker form-control" value=""/><br/>
								  <form:errors path="price"/><br/>
			                  <span class="material-input"></span></div>

							  <div class="form-group label-floating col-sm-4">
			                    <label class="control-label">Gi???m Gi??</label>
			                    <form:input path="sale" type="text" class="form-control" value=""/>
			                  <span class="material-input"></span></div>

							  <div class="fileinput fileinput-new  col-sm-4 text-center" style="padding-top: 50px;" data-provides="fileinput">
			                      <div class="fileinput-new thumbnail" data-header-animation="true">
			                        <img src="/assets/img/product/${item.image1}">
			                      </div>
			                      <div class="fileinput-preview fileinput-exists thumbnail"></div>
			                      <div>
												<span class="btn btn-rose btn-round btn-file">
													<span class="fileinput-new">Select image</span>
													<span class="fileinput-exists">Change</span>
													<form:input type="file" data-default-file="/assets/img/product/${item.image1}" path="image1"/>
												</span>
			                        <a href="#pablo" class="btn btn-danger btn-round fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i> Remove</a>
			                      </div>
			                    </div>



			                  <div class="row">
			                    <div class="col-md-6 text-center">
			                      <div class="form-group form-button">
			                      	<button formaction="/indexAD/createProductDetail" class="btn btn-fill btn-info">Create</button>
									  ${message}
									<button formaction="/indexAD/updateProductDetail" class="btn btn-fill btn-rose">Update</button>
									<a href="/indexAD/DetailProduct" class="btn btn-fill btn-rose">Reset</a>
			                      </div>
			                    </div>
			                  </div>
			                </form:form>
			              </div>
			            </div>
			          </div>
					</div>



						<div class="col-md-4">
							<div class="card card-product">
								<div class="card-image" data-header-animation="true">
									<a href="#pablo"> <img class="img"
										src="/assetsAD/img/card-1.jpg">
									</a>
								</div>

								<div class="card-content">
									<div class="card-actions">
										<button type="button"
											class="btn btn-danger btn-simple fix-broken-card">
											<i class="material-icons">build</i> Fix Header!
										</button>

										<button type="button" class="btn btn-default btn-simple"
											rel="tooltip" data-placement="bottom" title="View">
											<i class="material-icons">art_track</i>
										</button>
										<button type="button" class="btn btn-success btn-simple"
											rel="tooltip" data-placement="bottom" title="Edit">
											<i class="material-icons">edit</i>
										</button>
										<button type="button" class="btn btn-danger btn-simple"
											rel="tooltip" data-placement="bottom" title="Remove">
											<i class="material-icons">close</i>
										</button>
									</div>



							</div>
						</div>
					</div>

				</div>
			</div>




			<footer class="footer">
				<div class="container-fluid">
					<nav class="pull-left">
						<ul>
							<li><a href="#"> Home </a></li>
							<li><a href="#"> Company </a></li>
							<li><a href="#"> Portofolio </a></li>
							<li><a href="#"> Blog </a></li>
						</ul>
					</nav>
					<p class="copyright pull-right">
						&copy;
						<script>
							document.write(new Date().getFullYear())
						</script>
						<a href="https://www.creative-tim.com/"> Creative Tim </a>, made
						with love for a better web
					</p>
				</div>
			</footer>


		</div>
	</div>
	<div class="fixed-plugin">
		<div class="dropdown show-dropdown">
			<a href="#" data-toggle="dropdown"> <i class="fa fa-cog fa-2x">
			</i>
			</a>
			<ul class="dropdown-menu">
				<li class="header-title">Sidebar Filters</li>
				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger active-color">
						<div class="badge-colors text-center">
							<span class="badge filter badge-purple" data-color="purple"></span>
							<span class="badge filter badge-blue" data-color="blue"></span> <span
								class="badge filter badge-green" data-color="green"></span> <span
								class="badge filter badge-orange" data-color="orange"></span> <span
								class="badge filter badge-red" data-color="red"></span> <span
								class="badge filter badge-rose active" data-color="rose"></span>
						</div>
						<div class="clearfix"></div>
				</a></li>
				<li class="header-title">Sidebar Background</li>
				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger background-color">
						<div class="text-center">
							<span class="badge filter badge-white" data-color="white"></span>
							<span class="badge filter badge-black active" data-color="black"></span>
						</div>
						<div class="clearfix"></div>
				</a></li>

				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger">
						<p>Sidebar Mini</p>
						<div class="togglebutton switch-sidebar-mini">
							<label> <input type="checkbox" unchecked="">
							</label>
						</div>
						<div class="clearfix"></div>
				</a></li>

				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger">
						<p>Sidebar Image</p>
						<div class="togglebutton switch-sidebar-image">
							<label> <input type="checkbox" checked="">
							</label>
						</div>
						<div class="clearfix"></div>
				</a></li>

				<li class="header-title">Images</li>
				<li class="active"><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img src="/assetsAD/img/sidebar-1.jpg"
						alt="" />
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img src="/assetsAD/img/sidebar-2.jpg"
						alt="" />
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img src="/assetsAD/img/sidebar-3.jpg"
						alt="" />
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img src="/assetsAD/img/sidebar-4.jpg"
						alt="" />
				</a></li>

				<li class="button-container">
					<div class="">
						<a
							href="https://www.creative-tim.com/product/material-dashboard-pro"
							target="_blank" class="btn btn-rose btn-block">Buy Now</a>
					</div>

					<div class="">
						<a href="https://www.creative-tim.com/product/material-dashboard"
							target="_blank" class="btn btn-info btn-block">Get Free Demo</a>
					</div>
				</li>

				<li class="header-title">Thank you for 95 shares!</li>

				<li class="button-container">
					<button id="twitter" class="btn btn-social btn-twitter btn-round">
						<i class="fa fa-twitter"></i> &middot; 45
					</button>
					<button id="facebook" class="btn btn-social btn-facebook btn-round">
						<i class="fa fa-facebook-square"> &middot;</i>50
					</button>
				</li>
			</ul>
		</div>
	</div>

</body>

<!--   Core JS Files   -->
<script src="/assetsAD/js/jquery.min.js" type="text/javascript"></script>
<script src="/assetsAD/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/assetsAD/js/material.min.js" type="text/javascript"></script>
<script src="/assetsAD/js/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>

<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
<script src="/assetsAD/js/core.js" type="text/javascript"></script>

<!-- Library for adding dinamically elements -->
<script src="/assetsAD/js/arrive.min.js" type="text/javascript"></script>

<!-- Forms Validations Plugin -->
<script src="/assetsAD/js/jquery.validate.min.js"></script>

<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="/assetsAD/js/moment.min.js"></script>

<!--  Charts Plugin, full documentation here: https://gionkunz.github.io/chartist-js/ -->
<script src="/assetsAD/js/chartist.min.js"></script>

<!--  Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
<script src="/assetsAD/js/jquery.bootstrap-wizard.js"></script>

<!--  Notifications Plugin, full documentation here: https://bootstrap-notify.remabledesigns.com/    -->
<script src="/assetsAD/js/bootstrap-notify.js"></script>

<!--   Sharrre Library    -->
<script src="/assetsAD/js/jquery.sharrre.js"></script>

<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
<script src="/assetsAD/js/bootstrap-datetimepicker.js"></script>

<!-- Vector Map plugin, full documentation here: https://jvectormap.com/documentation/ -->
<script src="/assetsAD/js/jquery-jvectormap.js"></script>

<!-- Sliders Plugin, full documentation here: https://refreshless.com/nouislider/ -->
<script src="/assetsAD/js/nouislider.min.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="/assetsAD/js/js.js"></script>

<!--  Plugin for Select, full documentation here: https://silviomoreto.github.io/bootstrap-select -->
<script src="/assetsAD/js/jquery.select-bootstrap.js"></script>

<!--  DataTables.net Plugin, full documentation here: https://datatables.net/    -->
<script src="/assetsAD/js/jquery.datatables.js"></script>

<!-- Sweet Alert 2 plugin, full documentation here: https://limonte.github.io/sweetalert2/ -->
<script src="/assetsAD/js/sweetalert2.js"></script>

<!-- Plugin for Fileupload, full documentation here: https://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="/assetsAD/js/jasny-bootstrap.min.js"></script>

<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
<script src="/assetsAD/js/fullcalendar.min.js"></script>

<!-- Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
<script src="/assetsAD/js/jquery.tagsinput.js"></script>

<!-- Material Dashboard javascript methods -->
<script src="/assetsAD/js/material-dashboard98f3.js?v=1.3.0"></script>

<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="/assetsAD/js/demo.js"></script>

<script>
	// Facebook Pixel Code Don't Delete
	!function(f, b, e, v, n, t, s) {
		if (f.fbq)
			return;
		n = f.fbq = function() {
			n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
					.push(arguments)
		};
		if (!f._fbq)
			f._fbq = n;
		n.push = n;
		n.loaded = !0;
		n.version = '2.0';
		n.queue = [];
		t = b.createElement(e);
		t.async = !0;
		t.src = v;
		s = b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t, s)
	}(window, document, 'script',
			'/assetsAD/js/fbevents.js');

	try {
		fbq('init', '111649226022273');
		fbq('track', "PageView");

	} catch (err) {
		console.log('Facebook Track Error:', err);
	}
</script>
<noscript>
	<img height="1" width="1" style="display: none"
		src="https://www.facebook.com/tr?id=111649226022273&amp;ev=PageView&amp;noscript=1" />
</noscript>

<script type="text/javascript">

    	$(document).ready(function(){
        md.initSliders()
        demo.initFormExtendedDatetimepickers();
    });
</script>

<!-- Mirrored from demos.creative-tim.com/bs3/material-dashboard-pro/examples/dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 03 Jun 2021 22:11:14 GMT -->
</html>
