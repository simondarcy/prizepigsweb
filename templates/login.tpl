{extends 'base.tpl'} 


{block "content"}
    <div class="container">
    <div class="row" ng-app="myApp">
	{literal}
    <div class="col-md-6 col-md-offset-3" ng-controller="loginCtrl">
    <!-- login form -->
    <form novalidate name="loginForm" id="login-form" class="form">
        
        <fieldset ng-disabled="{{ formLoading }}">
        <h3 class="page-header">Sign in to Prize Pigs</h3>
        <p>Sign in to start entering great competitions</p>
        <input type="email" name="email" autocapitalize="off" autocomplete="off" ng-model="login.email" required placeholder="Email"/>
        <!-- email field errors -->
        <div class="form-error" ng-show="loginForm.email.$dirty && loginForm.email.$invalid">
          <span class="error" ng-show="loginForm.email.$error.required">Email address required.</span>
          <span class="error" ng-show="loginForm.email.$error.email">Please enter a valid email address.</span>
        </div>
        
        <input type="password" name="password" autocapitalize="off" ng-model="login.password" required placeholder="Password"/>
        <!-- password field errors -->
        <div class="form-error" ng-show="loginForm.password.$dirty && loginForm.password.$invalid">
          <span class="error" ng-show="loginForm.password.$error.required">Password required.</span>
        </div>

        <!-- server error here -->
        <div class="form-error">
            <span class="error" ng-show="login.error">{{ login.error }}</span>
        </div>

        <button id="login-btn" class="btn btn-primary" ng-click="loginForm.$valid && login()">Sign In</button>
        </fieldset>
        <a class="modal-link" href="forgot-password.php">Forgot password?</a>
        <a class="modal-link" href="register.php">Dont have an account? Sign up!</a>
        
    </form>


</div><!-- end grid-->

{/literal}
    </div><!-- end row -->
    </div><!-- end content -->
    <div class="gap"></div>
{/block}

{block additional-header-scripts}
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.13/angular.min.js"></script>

<script type="text/javascript" src="js/login.js"></script>
{/block}

{block additional-footer-scripts}{/block}
<!-- template: login.tpl -->


