<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setHeader("Expires", "0"); // Proxies.
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="assets/styles/form.css">
    <script src="assets/javascript/form.js"></script>
    <title>Register</title>
</head>
<body>
    <section class="d-flex flex-column justify-content-center" style="width: 100%; height: 100vh; background: #ffffb4;">
        <div class="login-card">
            <center>
                <div class="login-form">
                    <h1>Register</h1>
                    <form action="register" method="post" onsubmit="return registrationValidate()">
                        <div class="input position-relative">
                            <span class="position-absolute" id="email1">Email</span>
                            <span class="position-absolute" id="email2">Email Required!</span>
                            <input type="email" name="email" id="email" placeholder="email" onfocus="disappearPlaceHolder(this)" onblur="showPlaceHolder(this)">
                        </div>
                        <div class="input position-relative">
                            <span class="position-absolute" id="phone1">Phone</span>
                            <span class="position-absolute" id="phone2">Phone Required!</span>
                            <input type="number" name="phone" id="phone" placeholder="phone" onfocus="disappearPlaceHolder(this)" onblur="showPlaceHolder(this)">
                        </div>
                        <div class="input position-relative">
                            <span class="position-absolute" id="name1">Name</span>
                            <span class="position-absolute" id="name2">Name Required!</span>
                            <input type="text" name="name" id="name" placeholder="name" onfocus="disappearPlaceHolder(this)" onblur="showPlaceHolder(this)">
                        </div>
                        <div class="input position-relative">
                            <span class="position-absolute" id="password1">Password</span>
                            <span class="position-absolute" id="password2">Password Required!</span>
                            <input type="password" name="password" id="password" placeholder="password" onfocus="disappearPlaceHolder(this)" onblur="showPlaceHolder(this)">
                        </div>
                        <div class="input position-relative">
                            <span class="position-absolute" id="c-password1">Confirm Password</span>
                            <span class="position-absolute" id="c-password2">Password Confirmation Required!</span>
                            <input type="password" name="" id="c-password" placeholder="confirm Password" onfocus="disappearPlaceHolder(this)" onblur="showPlaceHolder(this)">
                        </div>
                        <div class="form-button d-flex flex-column">
                            <button type="submit">Register</button>
                            <a href="index.jsp">Login</a>
                        </div>
                    </form>
                </div>
            </center>
        </div>
    </section>
</body>
</html>