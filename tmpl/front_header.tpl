{$SiteName = "Capital Coin Investment"}
{$PageTage = "Secured Investment Platform"}
{$siteLogo = "/assets/images/logo/logo.png"}
{$siteLogoDark = "/assets/images/logo/logo.png"}
{$siteIcon = "/assets/images/logo/favicon.png"}



            <!DOCTYPE html>
            <html lang="zxx" class="js">

            <head>
                <base href="../">
                <meta charset="utf-8">
                <meta name="author" content="{$SiteNAme}">
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <meta name="description" content="A powerful and conceptual apps base dashboard template that especially build for developers and programmers.">
                <!-- Fav Icon  -->
                <link rel="shortcut icon" href="./images/favicon.png">
                <!-- Page Title  -->
                <title>{$pageName} | {$SiteName} - {$PageTage}</title>
                <!-- StyleSheets  -->
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.5.3/css/bootstrap.min.css" />
                <link rel="stylesheet" href="/front_assets/css/dashlite.css?ver=3.2.0">
                <link id="skin-default" rel="stylesheet" href="/front_assets/css/theme.css?ver=3.2.0">
                <link id="skin-default" rel="stylesheet" href="/front_assets/css/jumbo.css">
                <style>
                    .carousel-inner > .item > img,
                    .carousel-inner > .item > a > img {
                        object-fit: cover;
                        width: 100%;
                        height: 360px;
                        margin: auto;
                    }
                    .about-sec-2-img{
                        width: 100%;
                        height: 490px;
                        object-fit: cover;
                        object-position: center center;
                    }
                </style>
            </head>

            <body class="nk-body bg-white npc-landing ">
            <div class="nk-app-root">
                <!-- main @s -->
                <div class="nk-main ">
                    <header class="header header-32 has-header-main-s1 bg-dark" id="home">
                        <div class="header-main header-main-s1 is-sticky is-transparent on-dark">
                            <div class="container header-container">
                                <div class="header-wrap">
                                    <div class="header-logo">
                                        <a href="/" class="logo-link">
                                            <img class="logo-light logo-img" src="{$siteLogo}" srcset="{$siteLogo} 2x" alt="logo">
                                            <img class="logo-dark logo-img" src="{$siteLogo}" srcset="{$siteLogo} 2x" alt="logo-dark">
                                        </a>
                                    </div>
                                    <div class="header-toggle">
                                        <button class="menu-toggler" data-target="mainNav">
                                            <em class="menu-on icon ni ni-menu"></em>
                                            <em class="menu-off icon ni ni-cross"></em>
                                        </button>
                                    </div><!-- .header-nav-toggle -->
                                    <nav class="header-menu" data-content="mainNav">
                                        <ul class="menu-list ms-lg-auto">
                                            <li class="menu-item has-sub">
                                            </li>
                                            <li class="menu-item" onclick="location.href='?a=home'"><a href="#home" class="menu-link nav-link">Home</a></li>
                                            <li class="menu-item" onclick="location.href='?a=about'"><a href="#feature" class="menu-link nav-link">About</a></li>
                                            <li class="menu-item" onclick="location.href='?a=faq'"><a href="#pricing" class="menu-link nav-link">FAQ</a></li>
                                            <li class="menu-item" onclick="location.href='?a=support'"><a href="#story" class="menu-link nav-link">Contact</a></li>
                                        </ul>
                                        <ul class="menu-btns">
                                            <li>
                                                {if $userinfo.logged != 1}
                                                    <a href="?a=signup" target="_blank" class="btn btn-primary btn-lg">Account</a>
                                                {else}
                                                    <a href="?a=account" target="_blank" class="btn btn-primary btn-lg">My Dashboard</a>
                                                {/if}
                                            </li>
                                        </ul>
                                    </nav><!-- .nk-nav-menu -->
                                </div><!-- .header-warp-->
                            </div><!-- .container-->
                        </div><!-- .header-main-->