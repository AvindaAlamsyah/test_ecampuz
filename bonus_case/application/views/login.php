<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>

<body>
    <div>
        <?php
        echo $pesan;
        ?>
        <form action="<?php echo base_url('login/cek_akun') ?>" method="POST">
            <div>
                <label>username</label>
                <input type="text" name="username">
            </div>
            <div>
                <label>password</label>
                <input type="password" name="password">
            </div>
            <button type="submit">Login</button>
        </form>
    </div>
</body>

</html>