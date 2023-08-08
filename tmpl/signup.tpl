{$SiteName = "Capital Coin Investment"}
{$PageTage = "Secured Investment Platform"}
{$siteLogo = "/assets/images/logo/logo.png"}
{$siteLogoDark = "/assets/images/logo/logo.png"}
{$siteIcon = "/assets/images/logo/favicon.png"}
{$pageName = "Signup"}
{include file="auth_header.tpl"}
<body class="nk-body npc-crypto bg-white pg-auth">
<!-- app body @s -->
<div class="nk-app-root">
    <div class="nk-split nk-split-page nk-split-md">
        <div class="nk-split-content nk-block-area nk-block-area-column nk-auth-container bg-white w-lg-45">
            <div class="nk-block nk-block-middle nk-auth-body">
                <div class="brand-logo pb-5">
                    <a href="/" class="logo-link">
                        <img class="logo-light logo-img logo-img-lg" src="{$siteLogoDark}" srcset="{$siteLogoDark} 2x" alt="logo">
                        <img class="logo-dark logo-img logo-img-lg" src="{$siteLogoDark}" srcset="{$siteLogoDark} 2x" alt="logo-dark">
                    </a>
                </div>
                <div class="nk-block-head">
                    <div class="nk-block-head-content">
                        <h5 class="nk-block-title">Register</h5>
                        <div class="nk-block-des">
                            <p>Create New {$SiteName} Account</p>
                        </div>
                    </div>
                </div><!-- .nk-block-head -->

                {if $deny_registration}
                <h3 style="text-align: center;"> We are closed for new registrations now.</h3>
                {elseif $settings.use_referal_program && $settings.force_upline && !$referer && !$settings.get_rand_ref}
                <h5 style="text-align: center;"> You do not have a upline. Our system require a upline for each user.</h5>
                {else}
                {literal}

                    <script language=javascript>
                        function checkform() {
                            if (document.regform.fullname.value == '') {
                                alert("Please enter your full name!");
                                document.regform.fullname.focus();
                                return false;
                            } {
                                /literal} {
                                if $settings.use_user_location == 1
                                    } {
                                literal
                            }
                            if (document.regform.address.value == '') {
                                alert("Please enter your address!");
                                document.regform.address.focus();
                                return false;
                            }
                            if (document.regform.city.value == '') {
                                alert("Please enter your city!");
                                document.regform.city.focus();
                                return false;
                            }
                            if (document.regform.state.value == '') {
                                alert("Please enter your state!");
                                document.regform.state.focus();
                                return false;
                            }
                            if (document.regform.zip.value == '') {
                                alert("Please enter your ZIP!");
                                document.regform.zip.focus();
                                return false;
                            }
                            if (document.regform.country.options[document.regform.country.selectedIndex].text == '--SELECT--') {
                                alert("Please choose your country!");
                                document.regform.country.focus();
                                return false;
                            } {
                                /literal} { /
                                if
                                    } {
                                literal
                            }
                            if (document.regform.username.value == '') {
                                alert("Please enter your username!");
                                document.regform.username.focus();
                                return false;
                            }
                            if (!document.regform.username.value.match(/^[A-Za-z0-9_\-]+$/)) {
                                alert("For username you should use English letters and digits only!");
                                document.regform.username.focus();
                                return false;
                            }
                            if (document.regform.password.value == '') {
                                alert("Please enter your password!");
                                document.regform.password.focus();
                                return false;
                            }
                            if (document.regform.password.value != document.regform.password2.value) {
                                alert("Please check your password!");
                                document.regform.password2.focus();
                                return false;
                            } {
                                /literal} {
                                if $settings.use_transaction_code
                                    } {
                                literal
                            }
                            if (document.regform.transaction_code.value == '') {
                                alert("Please enter your transaction code!");
                                document.regform.transaction_code.focus();
                                return false;
                            }
                            if (document.regform.transaction_code.value != document.regform.transaction_code2.value) {
                                alert("Please check your transaction code!");
                                document.regform.transaction_code2.focus();
                                return false;
                            } {
                                /literal} { /
                                if
                                    } {
                                literal
                            }
                            if (document.regform.email.value == '') {
                                alert("Please enter your e-mail address!");
                                document.regform.email.focus();
                                return false;
                            }
                            if (document.regform.email.value != document.regform.email1.value) {
                                alert("Please retupe your e-mail!");
                                document.regform.email.focus();
                                return false;
                            }

                            for (i in document.regform.elements) {
                                f = document.regform.elements[i];
                                if (f.name && f.name.match(/^pay_account/)) {
                                    if (f.value == '') continue;
                                    var notice = f.getAttribute('data-validate-notice');
                                    var invalid = 0;
                                    if (f.getAttribute('data-validate') == 'regexp') {
                                        var re = new RegExp(f.getAttribute('data-validate-regexp'));
                                        if (!f.value.match(re)) {
                                            invalid = 1;
                                        }
                                    } else if (f.getAttribute('data-validate') == 'email') {
                                        var re = /^[^\@]+\@[^\@]+\.\w{2,4}$/;
                                        if (!f.value.match(re)) {
                                            invalid = 1;
                                        }
                                    }
                                    if (invalid) {
                                        alert('Invalid account format. Expected ' + notice);
                                        f.focus();
                                        return false;
                                    }
                                }
                            }

                            if (document.regform.agree.checked == false) {
                                alert("You have to agree with the Terms and Conditions!");
                                return false;
                            }

                            return true;
                        }

                        function IsNumeric(sText) {
                            var ValidChars = "0123456789";
                            var IsNumber = true;
                            var Char;
                            if (sText == '') return false;
                            for (i = 0; i < sText.length && IsNumber == true; i++) {
                                Char = sText.charAt(i);
                                if (ValidChars.indexOf(Char) == -1) {
                                    IsNumber = false;
                                }
                            }
                            return IsNumber;
                        }

                    </script>
                {/literal}


                <form method=post onsubmit="return checkform()" name="regform">
                <input type=hidden name=a value="signup">
                <input type=hidden name=action value="signup">

                    {if $errors}
                        <ul style="color:red">
                            {section name=e loop=$errors}
                            {if $errors[e] eq 'full_name'}
                            <li>Please enter your full name!
                                {/if}
                                {if $errors[e] eq 'address'}
                            <li>Please enter your address!
                                {/if}
                                {if $errors[e] eq 'city'}
                            <li>Please enter your city!
                                {/if}
                                {if $errors[e] eq 'state'}
                            <li>Please enter your state!
                                {/if}
                                {if $errors[e] eq 'zip'}
                            <li>Please enter your zip!
                                {/if}
                                {if $errors[e] eq 'country'}
                            <li>Please choose your country!
                                {/if}
                                {if $errors[e] eq 'username'}
                            <li>Please enter valid username! It should contains English letters and digits only.
                                {/if}
                                {if $errors[e] eq 'username_exists'}
                            <li>Sorry, such user already exists! Please try another username.
                                {/if}
                                {if $errors[e] eq 'email_exists'}
                            <li>Sorry, such email already exists! Please try another email.
                                {/if}
                                {if $errors[e] eq 'password'}
                            <li>Please enter a password!
                                {/if}
                                {if $errors[e] eq 'password_confirm'}
                            <li>Please check your password!
                                {/if}
                                {if $errors[e] eq 'password_too_small'}
                            <li>The password you provided is too small, please enter at least {$settings.min_user_password_length} characters!
                                {/if}
                                {if $errors[e] eq 'transaction_code'}
                            <li>Please enter the Transaction Code!
                                {/if}
                                {if $errors[e] eq 'transaction_code_confirm'}
                            <li>Please check your Transaction Code!
                                {/if}
                                {if $errors[e] eq 'transaction_code_too_small'}
                            <li>The Transaction Code you provided is too small, please enter at least {$settings.min_user_password_length} characters!
                                {/if}
                                {if $errors[e] eq 'transaction_code_vs_password'}
                            <li>The Transaction Code should differ from the Password!
                                {/if}
                                {if $errors[e] eq 'egold'}
                            <li>Please enter your e-gold account number!
                                {/if}
                                {if $errors[e] eq 'invalid_perfectmoney_account'}
                            <li>Please enter USD PerfectMoney account number!
                                {/if}
                                {if $errors[e] eq 'email'}
                            <li>Please enter your e-mail!
                                {/if}
                                {if $errors[e] eq 'agree'}
                            <li>You have to agree with the Terms and Conditions!
                                {/if}
                                {if $errors[e] eq 'turing_image'}
                            <li>Enter the verification code as it is shown in the corresponding box.
                                {/if}
                                {if $errors[e] eq 'no_upline'}
                            <li>The system requires an upline to register. {if $settings.get_rand_ref}You have to be agreed to random one or found a referral link in the net.{/if}
                                {/if}
                                {if $errors[e] eq 'ip_exists_in_database'}
                            <li>Your IP already exists in our database. Sorry, but registration impossible.
                                {/if}

                                {if $errors[e] eq 'invalid_account_format'}
                                {foreach from=$account_errors item=err}
                            <li>{$err}
                                {/foreach}
                                {/if}

                                <br>
                                {/section}
                        </ul>
                    {/if}
                    <div class="form-group">
                        <label class="form-label" for="Full Name" >Full Name</label>
                        <div class="form-control-wrap">
                            <input name=fullname value="{$frm.fullname|escape:" quotes"}" type="text" class="form-control form-control-lg" id="email" placeholder="Enter Full Name">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label class="form-label" for="Full Name" >Email</label>
                                <div class="form-control-wrap">
                                    <input name=email value="{$frm.email|escape:" quotes"}" type="email" class="form-control form-control-lg" id="email" placeholder="Enter Email">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label class="form-label" for="Full Name" >Retype Email</label>
                                <div class="form-control-wrap">
                                    <input name=email1 value="{$frm.email1|escape:" quotes"}" type="email" class="form-control form-control-lg" id="email" placeholder="Retype Email">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="Full Name" >Username</label>
                        <div class="form-control-wrap">
                            <input name=username value="{$frm.username|escape:" quotes"}" type="text" class="form-control form-control-lg" id="email" placeholder="Enter Username">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label class="form-label" for="Secret_Question" >Secret Question</label>
                                <div class="form-control-wrap">
                                    <input name=sq value="{$frm.sq|escape:" quotes"}" type="text" class="form-control form-control-lg" id="email" placeholder="Enter Secret Question">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label class="form-label" for="Secret_Answer" >Secret Answer</label>
                                <div class="form-control-wrap">
                                    <input name=sa value="{$frm.sa|escape:" quotes"}" type="text" class="form-control form-control-lg" id="email" placeholder="Enter Secret_Answer">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="password">Passcode</label>
                        <div class="form-control-wrap">
                            <a tabindex="-1" href="#" class="form-icon form-icon-right passcode-switch lg" data-target="password">
                                <em class="passcode-icon icon-show icon ni ni-eye"></em>
                                <em class="passcode-icon icon-hide icon ni ni-eye-off"></em>
                            </a>
                            <input type="password" name=password value="{$frm.password|escape:" quotes"}" class="form-control form-control-lg" id="password" placeholder="Enter your passcode">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-8">
                            <div class="form-group">
                                <label class="form-label" for="password">Retype Passcode</label>
                                <div class="form-control-wrap">
                                    <a tabindex="-1" href="#" class="form-icon form-icon-right passcode-switch lg" data-target="retype-password">
                                        <em class="passcode-icon icon-show icon ni ni-eye"></em>
                                        <em class="passcode-icon icon-hide icon ni ni-eye-off"></em>
                                    </a>
                                    <input type="password" name=password2 value="{$frm.password2|escape:" quotes"}" class="form-control form-control-lg" id="retype-password" placeholder="Retype your passcode">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group text-right mt-3">
                        <div class="custom-control custom-control-xs custom-checkbox text-right">
                            <input type="checkbox" name=agree value=1 class="custom-control-input" id="checkbox">
                            <label class="custom-control-label text-right" for="checkbox">I agree to {$SiteName} <a tabindex="-1" href="?a=rules">Privacy Policy</a> &amp; <a tabindex="-1" href="?a=rules"> Terms.</a></label>
                        </div>
                    </div>

                    <div class="form-group">
                        <button type=submit value="Register" class="btn btn-lg btn-primary btn-block">Register</button>
                    </div>
                </form><!-- form -->
                <div class="form-note-s2 pt-4"> Already have an account ? <a href="?a=login"><strong>Sign in instead</strong></a>
                </div>
            </div><!-- .nk-block -->
            {/if}
            {include file="auth_footer.tpl"}