var API_ROOT = 'https://www.prizepigs.ie/api/';

//var API_ROOT = 'http://localhost:8888/prizepigs.ie/api/';

var myApp = angular.module('myApp', []);

function getQueryVariable(variable)
{
       var query = window.location.search.substring(1);
       var vars = query.split("&");
       for (var i=0;i<vars.length;i++) {
               var pair = vars[i].split("=");
               if(pair[0] == variable){return pair[1];}
       }
       return(false);
}
 
var nextUrl = ( !getQueryVariable('next') ) ? 'index.php':decodeURIComponent(getQueryVariable('next')); 

myApp.controller('registerCtrl', ['$scope', '$http', 
    function($scope, $http) {
        /*
        Resgister controller
        Try register user using API
        */
         $scope.register = function(){
        /* 
           Register Controller 
           Try register a new user using API
        */
        $scope.formLoading = true;
        //get details from registration form

        dob = $scope.register.dob.split('/');

        if (dob.length < 2){
            alert("Invalid DOB should be dd/mm/yyyy");
            return;
        }
        dob = dob[2] + '-' + dob[1] + '-' + dob[0];

        $scope.data = {
            email:$scope.register.email,
            password:$scope.register.password,
            dob:dob,
            gender:$scope.register.gender
        };

        $http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded";

        /* Try register new user with above details using API */
        $http.post(API_ROOT + "register.php", $scope.data).success(function (data) {
            if( data.error ){
                //Error returned, user already exists for example
                $scope.register.error = data.error;
                $scope.formLoading = false;

            }
            else{

                $scope.formLoading = false;
                //clear form errors
                $scope.regForm.$setPristine();

                //redirect user
                window.location.href=nextUrl;
                
            }
        });//end http post
    }//end register function

}]);//end controller


myApp.controller('loginCtrl', ['$scope', '$http', 
    function($scope, $http) {
    /* 
       Login Controller 
       Try log a user in using API
    */

    $scope.login = function(){
        //get credentials from login form
        $scope.formLoading = true;
        $scope.credentials = {
            email:$scope.login.email,
            password:$scope.login.password
        };
        $http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded";

        //Try log user in with these credentials using API
        $http.post(API_ROOT + "user_service.php", $scope.credentials).success(function (data) {
            if( data.error ){
                //Error returned from server, wrong password etc
                $scope.login.error = data.error;
                //clear password
                $scope.login.password = "";
                $scope.formLoading = false;
            }
            else{
                //Login successful
                $scope.formLoading = false;

                //clear form
                $scope.login.email = "";
                $scope.login.password = "";
                //clear errors
                $scope.loginForm.$setPristine();
                
                //redirect user
                
                window.location.href=nextUrl;

            }
        });//end http
    };//end login function

 }]);//end controller




myApp.controller('ForgotPasswordCtrl', ['$scope', '$http', 
    function($scope, $http) {

    $scope.forgotPassword = function(){
        $scope.formLoading = true;
        $scope.data = {
            email:$scope.email
        };
        $http.post(API_ROOT + "forgot_password.php", $scope.data).success(function (data) {
            if( data.error ){
                $scope.error = data.error;
                $scope.formLoading = false;
            }
            else{
                //clear form
                $scope.email = "";
                //clear errors
                $scope.forgotPasswordForm.$setPristine();
                $scope.formLoading = false;
                if( data.message ){  
                    $scope.message = data.message;
                }
            }
        });//end http

    };//end forget password function
}]);//end controller



myApp.controller('ResetPasswordCtrl', ['$scope', '$http', 
    function($scope, $http) {

    $scope.resetPassword = function(){
        $scope.formLoading = true;
        $scope.data = {
            key:getQueryVariable("key"),
            password:$scope.password1,
        };
        $http.post(API_ROOT + "reset_password.php", $scope.data).success(function (data) {
            if( data.error ){
                $scope.error = data.error;
                $scope.formLoading = false;
            }
            else{
                //clear form
                $scope.password1 = "";
                $scope.password2= "";
                //clear errors
                $scope.resetPasswordForm.$setPristine();
                $scope.formLoading = false;
                if( data.message ){  
                    $scope.message = data.message;
                }
            }
        });//end http

    };//end reset password function
}]);//end controller
