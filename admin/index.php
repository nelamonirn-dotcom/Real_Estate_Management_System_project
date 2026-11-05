<?php
              if (isset($_POST['login'])) {
                extract($_POST);
                $password = sha1($password);

                include_once('dbconfig.php');
                echo "SELECT * FROM users WHERE email = '$email' AND password = '$password'";
                $result = $conn->query("SELECT * FROM users WHERE email = '$email' AND password = '$password'");

                $row = $result->fetch_assoc();


                if ($result->num_rows > 0) {
                  session_start();
                  $_SESSION['email'] = $email;
                  $_SESSION['name'] = $row['name'];
                  $_SESSION['role'] = $row['role'];


                  if ($row['role'] == 'users') {
                    $_SESSION['url'] = 'users_dashboard.php';
                    header("Location: users_dashboard.php");
                  } else if ($row['role'] == 'customers') {
                    $_SESSION['url'] = 'customers_dashboard.php';
                    header("Location: customers_dashboard.php");
                  } else if ($row['role'] == 'agents') {
                    $_SESSION['url'] = 'agents_dashboard.php';
                    header("Location: agents_dashboard.php");
                  }
                } else {
                  echo '
                  <div class="alert border-0 bg-danger-subtle alert-dismissible fade show">
                  <div class="d-flex align-items-center">
                    <div class="text-danger">Problem Login</div>
                  </div>
                  </div>
                  ';
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

            <form class="auth-form" method="post" action="">
        <label for="email">Email address</label>
        <input id="email" name="email" type="email" autocomplete="username" maxlength="100" value="nelamonirn@gmail.com" required autofocus>
        <label for="password">Password</label>
        <input id="password" name="password" type="password" autocomplete="current-password" required>
        <button type="submit">Sign in <span aria-hidden="true">→</span></button>
      </form>

      <p class="auth-footnote">Administrator access only. Contact your system administrator if you need an account.</p>
    </main>
  </body>
</html>
