{extends 'base.tpl'} 
{block categories-nav}{/block}
{block "content"}
    <div class="container">
    <div class="row" ng-app="myApp">
	{literal}

     <div class="col-md-6 col-md-offset-3" ng-controller="registerCtrl">
    <form  novalidate id="register-form" name="regForm" class="form">
        <fieldset ng-disabled="{{ formLoading }}">
        <h3 class="page-header">Sign up to Prize Pigs</h3>
        <p>Remember. Just for signing up you will automatically be entered into out monthly "new piglets" draw. Find out about more ways to win <a href="pages.php?page=ways" target="_blank">here</a>.</p>
        <input type="email" name="email" autocapitalize="off"required ng-model="register.email" placeholder="Email">
        <!-- email field errors -->
        <div class="form-error" ng-show="regForm.email.$dirty && regForm.email.$invalid">
          <span class="error" ng-show="regForm.email.$error.required">Email address required.</span>
          <span class="error" ng-show="regForm.email.$error.email">Please enter a valid email address.</span>
        </div>

        <input type="password" name="password" autocapitalize="off" required ng-model="register.password" placeholder="Password"/>
        <!-- password field errors -->
        <div class="form-error" ng-show="regForm.password.$dirty && regForm.password.$invalid">
          <span class="error" ng-show="regForm.password.$error.required">Password is required.</span>
        </div>
            <label>DOB:</label>
        <input id="dob-input" type="text" name="dob" required ng-model="register.dob" placeholder="dd/mm/yyyy" max="1999-01-01" value="1999-01-01">
        <!-- dob field errors -->
        <div class="form-error" ng-show="regForm.dob.$dirty && regForm.dob.$invalid">
            <span class="error" ng-show="regForm.dob.$error.required">Date of birth is required.</span>
        </div>

        <label>Gender:
            <input type="radio" name="gender" ng-required="!gender" ng-model="register.gender" value="0"/> Male
            <input type="radio" name="gender" ng-required="!gender" ng-model="register.gender" value="1"/> Female
        </label>

        <!-- gender field errors -->
        <div class="form-error" ng-show="register.gender.$dirty && register.gender.$invalid">
            <span ng-show="register.gender.$error.required">please select a gender</span>
        </div>

        <label class="terms">
            By signing up, you agree to our <a href="pages.php?page=terms" target="_blank">Terms</a> and <a href="pages.php?page=privacy" target="_blank">Privacy Policy</a> which includes <a href="#pages.php?page=privacy" target="_blank">Cookie Use</a>.
        </label>

        <button id="register-btn" ng-click="regForm.$valid && register()" class="btn btn-primary">Sign Up</button>
        </fieldset>
        <!-- server error here -->
        <div class="form-error">
          <span class="error" ng-show="register.error">{{ register.error }}</span>
        </div>

        <a class="modal-link" href="login.php">Already a member? Sign In</a>
    </form>
</div>




{/literal}
</div>
</div>
    <div class="gap"></div>
{/block}

{block additional-header-scripts}
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.13/angular.min.js"></script>

<script type="text/javascript" src="js/login.js"></script>
{/block}

{block additional-footer-scripts}{/block}
<!-- template: register.tpl -->


