<html lang="en">
  <head>
    <link rel="icon" type="image/png" href="/static/images/favicon.ico"/>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Lora&family=Yeseva+One&display=swap');

        * {
            -hibiscus-love: #00acee;
                --fine-ii: #ffff;
                --afl: #ffff;
                --mexican-sky: #00acee;
                --brasillia-peach: #ffff;
                --free: #00acee;
                --captured: #fffcfc;
                --primary-color: var(--brasillia-peach);
                --secondary-color: #00acee;
                --tertiary-color: var(--fine-ii);
                --quadrary-color: #00acee;
                --bg-color: var(--mexican-sky);
                --text-color: var(--free);
                --header-color: #00acee;
                --error-color: var(--hibiscus-love);
                --success-color: #68cd1e;

        }

        h1,
        h2,
        h3,
        h4,
        h5 {
          font-family: 'Yeseva One', Georgia, cursive;
          color: var(--header-color);
        }

        body {
          font-family: 'Lora', 'Times New Roman', serif;
          background-color: var(--bg-color);
          color: var(--free);
          display: flex;
          align-items: center;
          justify-content: center;
          flex-flow: column nowrap;
          min-height: 100vh;
        }

        .container {
          width: 400px;
          border-radius: 0.6em;
          padding: 20px;
          background-color: var(--primary-color);
          box-shadow: 20px 20px 60px #97a1a1, -20px -20px 60px #ffffff;
          margin: 20px auto;
        }

        .form {
          padding: 30px 40px;
        }

        .form h2 {
          text-align: center;
          margin: 0 0 20px;
        }

        .form-control {
          margin-bottom: 10px;
          padding-bottom: 20px;
          position: relative;
        }

        .form-control label {
          color: var(--text-color);
          display: block;
          margin-bottom: 5px;
        }
        .form-control input {
          border-radius: 6px;
          background: var(--primary-color);
          box-shadow: inset 3px 3px 7px #e9bd7c, inset -3px -3px 7px #ffd98e;
          min-height: 2.618em;
          border: var(--quadrary-color) solid 2px;
          display: block;
          width: 100%;
          font-size: 14px;
          padding: 10px;
        }

        .form-control input:focus {
          outline: 0;
          border-color: var(--tertiary-color);
        }

        .form-control.success input {
          border-color: var(--success-color);
        }

        .form-control.error input {
          border-color: var(--error-color);
        }

        .form-control small {
          color: var(--error-color);
          position: absolute;
          bottom: 0;
          left: 0;
          visibility: hidden;
        }

        .form-control.error small {
          visibility: visible;
        }

        .form button {
          cursor: pointer;
          background: var(--secondary-color);
          box-shadow: 4px 4px 8px #c19c66, -4px -4px 8px #fffaa4;
          border: 1px solid #ec263c66;
          color: #fff;
          font-size: 16px;
          padding: 0.618em 1.2em;
          border-radius: 0.4em;
          font-family: 'Yeseva One', Georgia, cursive;
          display: block;
          margin-top: 1.2em;
          width: 100%;
        }

        .form button:active,
        .form button:focus {
          outline: 0;
          background-color: #fc364c;
        }
    </style>
  </head>
  <body>
    <div class="container">
      <form id="form" class="form">
        <h2>Create your account</h2>
        <p style="text-align:center;">Welcome to the social network of coders by Mission Helix</p>
        <div class="form-control">
          <label for="username">Username</label>
          <input type="text" id="username" placeholder="Enter username here" />
          <small>Error message</small>
        </div>
        <div class="form-control">
          <label for="email">Email</label>
          <input type="text" id="email" placeholder="Enter email here" />
          <small>Error message</small>
        </div>
        <div class="form-control">
          <label for="password">Password</label>
          <input type="password" id="password" placeholder="Enter password here" />
          <small>Error message</small>
          <p style="color:red; display:none" id="signup-error">Error here! </p>
        </div>


        <button type="submit" id="btn-signup">SignUp</button>

      </form>
    </div>
    <script>
        function validateSignupForm(){
                var name =$("#username").val();
                var email = $("#email").val();
                var password =$("#password").val();
                var error="";
                if(!name){
                    error+="Name is empty";
                }
                if(!email){
                    error+="Email is empty";
                }
                if(!password){
                    error+="Password is empty" ;
                }
                if(password.length<=3){
                    error+="password length must be greater than 3";
                }
                $("#signup-error").html(error);

                if(error.length>0){
                    return false;
                 }

                 return true;
            }

        $("#btn-signup").click(function(){
            var isvalid = validateSignupForm();
            if(isvalid){
                $("#signup-error").hide();
               var name =$("#username").val();
               var email = $("#email").val();
               var  password =$("#password").val();
                var user={
                "name" :name,
                "email":email,
                "password":password
                };

                $.ajax({
                  type: "POST",
                  url: "/signup",
                  data: JSON.stringify(user),
                  success: function(response){
                    if(!!response){
                        if(response.user_created===true){
                            alert(response.message)
                        }

                    }
                  },
                  contentType:"application/json"
                });

            }
            else{
                $("#signup-error").show();
            }

        });
    </script>

  </body>
</html>