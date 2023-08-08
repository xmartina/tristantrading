<html style="height: 100%;"><head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>{$pageName} | {$settings.site_name}</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no" name="viewport">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="assets/css/ready.css">
    <link rel="stylesheet" href="assets/css/demo.css">

    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">

    <link type="text/css" rel="stylesheet" charset="UTF-8" href="https://www.gstatic.com/_/translate_http/_/ss/k=translate_http.tr.69JJaQ5G5xA.L.W.O/d=0/rs=AN8SPfpC36MIoWPngdVwZ4RUzeJYZaC7rg/m=el_main_css"><script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-115538286-1"></script><script type="text/javascript" charset="UTF-8" src="https://translate.googleapis.com/_/translate_http/_/js/k=translate_http.tr.en_GB.c_zC7qUnTFY.O/d=1/exm=el_conf/ed=1/rs=AN8SPfoBlmfmYftMKBfrazMTdGZqwlOJOw/m=el_main"></script><link id="wabiCss" rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/yui/3.18.1/cssnormalize-context/cssnormalize-context-min.css" media="all">
    <link rel="stylesheet" href="assets/css/custom.css">
    <style>
        .body-class{
            position: relative; min-height: 100%; top: 0;
        }
    </style>
</head>
<body class="body-class">


<div class="wrapper">
    <div class="main-header">
        <div class="logo-header">
            <a class="navbar-brand page-scroll sticky-logo" href="/">
                <img src="images/main-logo.png" class="site-logo" alt="">
            </a>
            <button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse" data-target="collapse" aria-controls="sidebar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <button class="topbar-toggler more"><i class="la la-ellipsis-v"></i></button>
        </div>
        <nav class="navbar navbar-header navbar-expand-lg">
            <div class="container-fluid">

                <h4> DASHBOARD AREA</h4>
                <ul class="navbar-nav topbar-nav ml-md-auto align-items-center">


                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false"> <img src="../user-avatar.png" alt="user-img" width="36" class="img-circle"><span></span> </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li>
                                <div class="user-box">
                                    <div class="u-img"><img src="../user-avatar.png" alt="user"></div>
                                    <div class="u-text">
                                    {if $userinfo.logged == 1}
                                        <h4>{$userinfo.username}</h4>
                                        <p class="text-muted">{$userinfo.email}</p>
                                        <a href="/?a=edit_account" class="btn btn-rounded btn-danger btn-sm">View Profile</a></div>
                                        {else}
                                        <a href="/?a=login" class="btn btn-rounded btn-danger btn-sm">Login</a></div>
                                        {/if}
                                </div>
                            </li>
                            {if $userinfo.logged == 1}
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="?a=edit_account"><i class="ti-user"></i> My Profile</a>
                            <a class="dropdown-item" href="/?a=earnings">MY transactions</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/?a=logout"><i class="fa fa-power-off"></i> Logout</a>
                            {/if}
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    {if $userinfo.logged == 1}
    <div class="sidebar">
        <div class="scrollbar-inner sidebar-wrapper">
            <div class="user">
                <div class="photo">
                    <img src="../user-avatar.png">
                </div>
                <div class="info">
                    <a class="" data-toggle="collapse" href="#collapseExample" aria-expanded="true">
								<span>
									{$userinfo.username}								
                                    <span class="user-level">Partner</span>
									<span class="caret"></span>
								</span>
                    </a>
                    <div class="clearfix"></div>

			<style>
            .activeTop{
            	color:#0056b3 !important;
                transition:all 350ms linear !important;
            }
            a .activeTop{
            	color:#0056b3 !important;
                transition:all 350ms linear !important;
            }
             a .tophide:hover{
            	color:#0056b3 !important;
                transition:all 350ms linear !important;
            }
            .tophide:hover{
            	color:#0056b3 !important;
                transition:all 350ms linear !important;
            }
            </style>
                    <div class="in collapse show" id="collapseExample" aria-expanded="true" style="">
                        <ul class="nav">
                            <li>
                                <a href="/?a=edit_account">
                                    <span class="link-collapse tophide {if $pageName == "Edit Account"}activeTop{/if}">Edit Profile</span>
                                </a>
                            </li>
                            <li>
                                <a href="/?a=security">
                                    <span class="link-collapse tophide {if $pageName == "Account Security Settings"}activeTop{/if}">Security Setting</span>
                                </a>
                            </li>
                            <li>
                                <a href="/?a=referals">
                                    <span class="link-collapse tophide {if $pageName == "Referral Page"}activeTop{/if}">Downlinks</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <ul class="nav">
                <li class="nav-item {if $pageName == "User Dashboard"}active{/if}">
                    <a href="/?a=account">
                        <i class="la la-dashboard"></i>
                        <p>Dashboard</p>
                        <span class="badge badge-count"></span>
                    </a>
                </li>
                <li class="nav-item {if $pageName == "Deposit and Investment Page"}active{/if}">
                    <a href="/?a=deposit">
                        <i class="la la-table"></i>
                        <p>Make Deposit</p>
                        <span class="badge badge-count"> </span>
                    </a>
                </li>
                <li class="nav-item {if $pageName == "My Transaction History"}active{/if}">
                    <a href="/?a=earnings">
                        <i class="la la-keyboard-o"></i>
                        <p>My Transactions</p>
                        <span class="badge badge-count"></span>
                    </a>
                </li>
                <li class="nav-item {if $pageName == "Request for withdrawal"}active{/if}">
                    <a href="/?a=withdraw">
                        <i class="la la-th"></i>
                        <p>Withdrawal</p>
                        <span class="badge badge-count"></span>
                    </a>
                </li>
                <li class="nav-item {if $pageName == "Referral Page"}active{/if}">
                    <a href="/?a=referals">
                        <i class="la la-"></i>
                        <p>Referrers</p>
                        <span class="badge badge-success"></span>
                    </a>
                </li>
                <div id='google_translate_element'></div>

            </ul>
        </div>
    </div>
    {/if}
    
    <div class="main-panel">
    <div class="content">
        <div class="container-fluid">
