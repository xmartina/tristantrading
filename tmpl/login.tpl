{$SiteName = "Capital Coin Investment"}
{$PageTage = "Secured Investment Platform"}
{$siteLogo = "/assets/images/logo/logo.png"}
{$siteLogoDark = "/assets/images/logo/logo.png"}
{$siteIcon = "/assets/images/logo/favicon.png"}
{$pageName = "Login"}
{include file="auth_header.tpl"}
<body class="nk-body npc-crypto bg-white pg-auth">
<!-- app body @s -->
<div class="nk-app-root">
    <div class="nk-split nk-split-page nk-split-md">
        <div class="nk-split-content nk-block-area nk-block-area-column nk-auth-container bg-white">
            <div class="nk-block nk-block-middle nk-auth-body">
                <div class="brand-logo pb-5">
                    <a href="/" class="logo-link">
                        <img class="logo-light logo-img logo-img-lg" src="{$siteLogo}" srcset="{$siteLogo} 2x" alt="logo">
                        <img class="logo-dark logo-img logo-img-lg" src="{$siteLogoDark}" srcset="{$siteLogoDark} 2x" alt="logo-dark">
                    </a>
                </div>
                <div class="nk-block-head">
                    <div class="nk-block-head-content">
                        <h5 class="nk-block-title">Sign-In</h5>
                        <div class="nk-block-des">
                            <p>Access your {$SiteName} panel using your email and passcode.</p>
                        </div>
                    </div>
                </div><!-- .nk-block-head -->

                {literal}
                    <script language=javascript>
                        function checkform() {
                            if (document.mainform.username.value == '') {
                                alert("Please type your username!");
                                document.mainform.username.focus();
                                return false;
                            }
                            if (document.mainform.password.value == '') {
                                alert("Please type your password!");
                                document.mainform.password.focus();
                                return false;
                            }
                            return true;
                        }

                    </script>
                {/literal}
                <form method=post name=mainform onsubmit="return checkform()">
                    <input type=hidden name=a value='do_login'>
                    <input type=hidden name=follow value='{$frm.follow}'>
                    <input type=hidden name=follow_id value='{$frm.follow_id}'>
                    <input type=hidden name=a value='do_login'>
                    <input type=hidden name=follow value=''>
                    <input type=hidden name=follow_id value=''>
                    <div class="form-group">
                        {if $frm.say eq 'invalid_login'}
                            <h3 style="text-align: center; color: #243b6a; font-size: 19px; font-weight: 600" class="mb-2">Login error:</h3>

                            <h5 style="text-align: center; color: #6f0707; font-size: 12px; font-weight: 600">Your login or password or turing image code is wrong. Please check this information.</h5>
                        {/if}
                        <div class="form-label-group">
                            <label class="form-label"  for="default-01">Username</label>
                            <a class="link link-primary link-sm" tabindex="-1" href="#">Need Help?</a>
                        </div>
                        <div class="form-control-wrap">
                            <input type="text" name=username value='' class="form-control form-control-lg" id="default-01" placeholder="Enter username">
                        </div>
                    </div><!-- .form-group -->
                    <div class="form-group">
                        <div class="form-label-group">
                            <label class="form-label" for="password">Passcode</label>
                            <a class="link link-primary link-sm" tabindex="-1" href="?a=forgot_password">Forgot Code?</a>
                        </div>
                        <div class="form-control-wrap">
                            <a tabindex="-1" href="#" class="form-icon form-icon-right passcode-switch lg" data-target="password">
                                <em class="passcode-icon icon-show icon ni ni-eye"></em>
                                <em class="passcode-icon icon-hide icon ni ni-eye-off"></em>
                            </a>
                            <input type="password" name=password value='' class="form-control form-control-lg" id="password" placeholder="Enter your passcode">
                            {if $ti.check.login}
                                <tr>
                                    <td class=menutxt>Code: <img src="{" ?a=show_validation_image&`$ti.session.name`=`$ti.session.id`&rand=`$ti.session.rand`"|encurl}"></td>
                                    <td><input type=text name=validation_number class=inpts size=30></td>
                                </tr>
                            {/if}
                        </div>
                    </div><!-- .form-group -->
                    <div class="form-group">
                        <button class="btn btn-lg btn-primary btn-block" type=submit value="Login">Sign in</button>
                    </div>
                </form><!-- form -->
                <div class="form-note-s2 pt-4"> New on our platform? <a href="?a=signup">Create an account</a>
                </div>

            </div><!-- .nk-block -->
{include file="auth_footer.tpl"}