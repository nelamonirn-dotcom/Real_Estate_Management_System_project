
<?php
if (isset($_POST['submit'])) {

    $email = $_POST['email'];
    $password = $_POST['password'];

    if (filter_var($email, FILTER_VALIDATE_EMAIL) && !empty($password)) {

        header("Location: admin/dashboard.php");
        exit();

    } else {
        $error = "Please enter a valid email and password.";
    }
}
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="theme-color" content="#101d35">
    <title>Administrator sign in | EstateFlow</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Manrope:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../assets/css/global.css">
    <link rel="stylesheet" href="../assets/css/admin/auth.css">
  </head>
  <body class="admin-auth">
    <main class="auth-card" aria-labelledby="login-heading">
      <a class="auth-brand" href="../index.html" aria-label="EstateFlow home">
        <span class="auth-brand-symbol" aria-hidden="true">⌂</span>
        <span>Estate<span>Flow</span></span>
      </a>
      <p class="auth-eyebrow">ADMIN WORKSPACE</p>
      <h1 id="login-heading">Welcome back</h1>
      <p class="auth-intro">Sign in with your administrator account to continue.</p>

            <form class="auth-form" method="post" action="login.php">
        <input type="hidden" name="csrf_token" value="">
        <label for="email">Email address</label>
        <input id="email" name="email" type="email" autocomplete="username" maxlength="100" value="" required autofocus>
        <label for="password">Password</label>
        <input id="password" name="password" type="password" autocomplete="current-password" required>
        <button type="submit">Sign in <span aria-hidden="true">→</span></button>
      </form>

      <p class="auth-footnote">Administrator access only. Contact your system administrator if you need an account.</p>
    </main>
  </body>
</html>
