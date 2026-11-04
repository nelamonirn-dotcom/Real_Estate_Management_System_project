<?php
declare(strict_types=1);

require_once __DIR__ . '/auth.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!admin_csrf_is_valid($_POST['csrf_token'] ?? null)) {
        http_response_code(400);
        $error = 'Your sign-out request could not be verified. Reload the page and try again.';
    } else {
        $_SESSION = [];
        if (ini_get('session.use_cookies')) {
            $cookie = session_get_cookie_params();
            setcookie(session_name(), '', [
                'expires' => time() - 42000,
                'path' => $cookie['path'],
                'domain' => $cookie['domain'],
                'secure' => $cookie['secure'],
                'httponly' => $cookie['httponly'],
                'samesite' => 'Lax',
            ]);
        }
        session_destroy();
        header('Location: login.php?signed_out=1');
        exit;
    }
} elseif ($_SERVER['REQUEST_METHOD'] !== 'GET') {
    http_response_code(405);
    header('Allow: GET, POST');
    exit('Method not allowed.');
}

$isSignedIn = isset($_SESSION['admin_user']['user_id']);
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="theme-color" content="#101d35">
    <title>Sign out | EstateFlow</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Manrope:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../assets/css/global.css">
    <link rel="stylesheet" href="../assets/css/admin/auth.css">
  </head>
  <body class="admin-auth">
    <main class="auth-card" aria-labelledby="logout-heading">
      <a class="auth-brand" href="dashboard.php" aria-label="EstateFlow dashboard">
        <span class="auth-brand-symbol" aria-hidden="true">⌂</span>
        <span>Estate<span>Flow</span></span>
      </a>
      <p class="auth-eyebrow">ADMIN WORKSPACE</p>
      <h1 id="logout-heading"><?= $isSignedIn ? 'Sign out?' : 'You are signed out' ?></h1>
      <p class="auth-intro"><?= $isSignedIn ? 'Are you sure you want to end your administrator session?' : 'Your administrator session has ended.' ?></p>

      <?php if (isset($error)): ?>
        <p class="auth-error" role="alert"><?= admin_escape($error) ?></p>
      <?php endif; ?>

      <?php if ($isSignedIn): ?>
        <form class="auth-form" method="post" action="logout.php">
          <input type="hidden" name="csrf_token" value="<?= admin_escape(admin_csrf_token()) ?>">
          <button type="submit">Sign out <span aria-hidden="true">→</span></button>
        </form>
        <a class="auth-secondary-link" href="dashboard.php">Cancel and return to dashboard</a>
      <?php else: ?>
        <a class="auth-primary-link" href="login.php">Return to sign in</a>
      <?php endif; ?>
    </main>
  </body>
</html>
