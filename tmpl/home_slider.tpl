{$SiteName = "Capital Coin Investment"}
<div class="jumbo">
    <div class="jumbo-bg py-5">
        <div class="jumbo-cont pl-4 container py-4">
            <div class="cont-1 pb-3 align-items-center d-flex flex-row no-wrap">
                <div class="d-flex justify-content-center align-items-center mr-2">
                    <hr class="bg-set">
                </div>
                <span class="text-light">Unbeatable Investment Plans</span>
            </div>
            <div class="cont-2 text-warning h5">Welcome to</div>
            <div class="cont-3 h1 font-weight-bolder ff-base text-warning">{$SiteName}</div>
            <div class="cont-4 text-light my-3">
                <div class="row">
                    <div class="col-lg-6">
                        Our knowledgeable professionals and industry leading tools are united to do one thing: make you a smarter, more profitable investor.
                    </div>
                </div>
            </div>
            <div class="cont-5">
                <button class="btn bg-warning text-dark" onclick="location.href='{if $userinfo.logged != 1}?a=login{else}?a=account{/if}'">{if $userinfo.logged != 1}Get Started{else}My Account{/if}</button>
            </div>
        </div>
    </div>
</div>