<!-- masthead  including main naviagtion -->
<header class="main">
    <div class="container">
        <div class="row">
            <div class="col-md-9">   
            {include file="snippets/main-navigation.tpl"}
            </div>
            <div class="col-md-3">

               {nocache}

                <!-- LOGIN REGISTER LINKS -->
                <ul class="login-register">
                    {if $user}
                    <li>
                        <a href="logout.php?next={$smarty.server.REQUEST_URI|urlencode}">
                            <i class="fa fa-user loggedin"></i>{$user} - logout
                        </a>
                    </li>
                    {else}
                    <li>
                        <a href="login.php?next={$smarty.server.REQUEST_URI|urlencode}">
                        <i class="fa fa-sign-in"></i>Sign in
                        </a>
                    </li>
                    <li>
                        <a href="register.php?next={$smarty.server.REQUEST_URI|urlencode}">
                        <i class="fa fa-edit"></i>Sign up</a>
                    </li>
                    {/if}
                </ul>
             {/nocache}
            </div>
        </div>
    </div>
</header>

<!--template: mashead.tpl -->