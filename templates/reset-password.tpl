{extends 'base.tpl'} 


{block "content"}
    <div class="container">
    <div class="row" ng-app="myApp">
	{literal}
    <div class="col-md-6 col-md-offset-3" ng-controller="ResetPasswordCtrl">
    <!-- reset password form -->

    <div class="large-12 small-12 columns">
        <form novalidate id="reset-password-form" name="resetPasswordForm" class="form">
            <fieldset ng-disabled="{{ formLoading }}">
            <h3 class="page-header">Forgot password</h3>
            <p>Enter your new password then hit reset.</p>

            <input type="password" name="password1" required ng-model="password1" placeholder="New password">
            <!-- password1 field errors -->
            <div class="form-error" ng-show="resetPasswordForm.password1.$dirty && resetPasswordForm.password1.$invalid">
              <span class="error" ng-show="resetPasswordForm.password1.$error.required">Password required.</span>
            </div>
            <input type="password" name="password2" required ng-model="password2" placeholder="Repeat new password">
            <!-- password2 field errors -->
            <div class="form-error" ng-show="resetPasswordForm.password2.$dirty && resetPasswordForm.password2.$invalid">
              <span class="error" ng-show="resetPasswordForm.password2.$error.required">Password required.</span>
            </div>
            <!-- password2 field errors -->
            <div class="form-error" ng-show="resetPasswordForm.password2.$dirty && password2!==password1">
              <span class="error">Passwords must match</span>
            </div>

            <div ng-show="error" class="bg-warning alert-error form-alert" style="display:block;">{{error}}</div>
            <div ng-show="message" class="bg-warning alert-success form-alert" style="display:block;">{{message}}</div>

            <button id="forgot-password-btn" ng-click="resetPasswordForm.password1.$valid && password2==password1 && resetPassword()" type="submit" class="btn btn-primary">Reset</button>
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


