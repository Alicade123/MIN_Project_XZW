<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$database = "vogue";

$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Form data
$m_name = $_POST['m_name'];
$m_email = $_POST['m_email'];
$m_phone = $_POST['m_phone'];
$message = $_POST['message'];

// Insert data into the database
$sql = "INSERT INTO message (m_name, m_email,m_phone,message) VALUES ('$m_name', '$m_email', '$m_phone', '$message')";

if ($conn->query($sql) === TRUE) {
    header("Location: index.php");
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
