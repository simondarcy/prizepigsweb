{extends 'base.tpl'} 


{block "content"}
    <div class="container">
    <div class="row" ng-app="myApp">
	{literal}
    <div class="col-md-6 col-md-offset-3" ng-controller="ForgotPasswordCtrl">
    <!-- forgot password form -->

    <div class="large-12 small-12 columns">
        <form novalidate id="forgot-password-form" name="forgotPasswordForm" class="form">
            <fieldset ng-disabled="{{ formLoading }}">
            <h3 class="page-header">Forgot password</h3>
            <p>Forgot your password? No problem. Simply enter your email below and hit reset</p>
            <input type="email" name="email" required ng-model="email" placeholder="Enter email address">
            <!-- email field errors -->
            <div class="form-error" ng-show="forgotPasswordForm.email.$dirty && forgotPasswordForm.email.$invalid">
              <span class="error" ng-show="forgotPasswordForm.email.$error.required">Email address required.</span>
              <span class="error" ng-show="forgotPasswordForm.email.$error.email">Please enter a valid email address.</span>
            </div>

            <div ng-show="error" class="bg-warning alert-error form-alert" style="display:block;">{{error}}</div>
            <div ng-show="message" class="bg-warning alert-success form-alert" style="display:block;">{{message}}</div>

            <button id="forgot-password-btn" ng-click="forgotPasswordForm.email.$valid && forgotPassword()" type="submit" class="btn btn-primary">Reset</button>
            </fieldset>
        
            
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
<!-- template: forgot-password.tpl -->


