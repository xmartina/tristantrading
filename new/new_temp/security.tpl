{$pageName = "Account Security Settings"}
{include file="header.tpl"}

            <h4 class="page-title">Advanced login security settings</h4>

            <div class="row">
                <div class="col-md-12">

                    <form method="post">
                        <input type="hidden" name="a" value="security">
                        <input type="hidden" name="action" value="save">
                        Detect IP Address Change Sensitivity<br>
                        <input type="radio" name="ip" value="disabled" {if $security.detect_ip == 'disabled'}checked{/if}>Disabled<br>
                        <input type="radio" name="ip" value="medium" {if $security.detect_ip == 'medium'}checked{/if}>Medium<br>
                        <input type="radio" name="ip" value="high" {if $security.detect_ip == 'high'}checked{/if}>High<br>
                        <input type="radio" name="ip" value="always">Paranoic<br><br>

                        Detect Browser Change<br>
                        <input type="radio" name="browser" value="disabled" {if $security.detect_browser == 'disabled'}checked{/if}>Disabled<br>
                        <input type="radio" name="browser" value="enabled" {if $security.detect_browser == 'enabled'}checked{/if}>Enabled<br><br>
                        <input type="submit" value="Set" class="form-control btn btn-primary">
                    </form>


                </div></div>

{include file="footer.tpl"}
