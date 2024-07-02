<?php
session_start();
require_once('DBConnection.php');

// Redirect if the user is already logged in
if (isset($_SESSION['user_id']) && $_SESSION['user_id'] > 0) {
    header("Location:./");
    exit;
}

// Handle the form submission
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $fullname = $_POST['fullname'];
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
    $type = isset($_POST['type']) ? $_POST['type'] : 0; // 1 for Administrator, 0 for Cashier

    // Check if the username already exists
    $check = $conn->prepare("SELECT * FROM user_list WHERE username = ?");
    $check->bind_param('s', $username);
    $check->execute();
    $result = $check->get_result();

    if ($result->num_rows > 0) {
        $error = "Username already exists.";
    } else {
        // Insert the new user into the database
        $stmt = $conn->prepare("INSERT INTO user_list (username, fullname, password, type) VALUES (?, ?, ?, ?)");
        $stmt->bind_param('sssi', $username, $fullname, $password, $type);
        
        if ($stmt->execute()) {
            $success = "Registration successful. Redirecting to login page...";
            header("Refresh: 2; URL=login.php");
        } else {
            $error = "Registration failed.";
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>REGISTER | Bakery Shop Management System</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <script src="./js/jquery-3.6.0.min.js"></script>
    <script src="./js/popper.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <style>
        html, body {
            height: 100%;
        }
        body {
            background-image: url('background.jpg');
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .card {
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="card">
        <div class="card-body">
            <h3 class="card-title text-center">Register</h3>
            <?php if (isset($error)): ?>
                <div class="alert alert-danger"><?php echo $error; ?></div>
            <?php endif; ?>
            <?php if (isset($success)): ?>
                <div class="alert alert-success"><?php echo $success; ?></div>
            <?php endif; ?>
            <form method="POST" action="">
                <div class="mb-3">
                    <label for="fullname" class="form-label">Full Name</label>
                    <input type="text" class="form-control" id="fullname" name="fullname" required>
                </div>
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control" id="username" name="username" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <div class="mb-3">
                    <label for="type" class="form-label">User Type</label>
                    <select class="form-select" id="type" name="type" required>
                        <option value="0">Cashier</option>
                        <option value="1">Administrator</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary w-100">Register</button>
            </form>
            <p class="text-center mt-3">Already have an account? <a href="login.php">Login here</a>.</p>
        </div>
    </div>
</body>
</html>
