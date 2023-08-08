{$pageName = "Referral Page"}
{include file="header.tpl"}

            <div class="row">
                <div class="col-md-12">

                    <h3>Your Referrals:</h3><br>
                    <br>
                    <table width="300" cellspacing="1" cellpadding="1" class="tab">
                        <tbody><tr>
                            <td class="item">Referrals:</td>
                            <td class="item">{$total_ref}</td>
                        </tr><tr>
                            <td class="item">Active referrals:</td>
                            <td class="item">{$active_ref}</td>
                        </tr><tr>
                            <td class="item">Total referral commission:</td>
                            <td class="item">{$currency_sign}{$commissions}</td>
                        </tr>
                        </tbody></table>
                    <br>


                    <div class="card">
                        <div class="card-body">
                            <p>Your Unique Referral Link: copy and share <a href="{$settings.site_url}/?ref={$userinfo.username}">{$settings.site_url}/?ref={$userinfo.username}</a>
                            </p>


                        </div>

                    </div>
                </div>
                <br>


            </div></div>
{include file="footer.tpl"}
