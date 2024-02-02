<!DOCTYPE html>
<html>

<head>
  <title>INF115 - Assignment 2</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="style/style.css">

</head>

<body>
  <!-- DO NOT TOUCH HERE -->
  <h1>INF115 - Compulsory Exercise 2</h1>
  <div class="bgimg-1 w3-display-container w3-opacity-min" id="home">
    <div class="w3-display-middle" style="white-space:nowrap;">
      <span class="w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity"> <span
          class="w3-hide-small">INF</span> 115</span>
    </div>
  </div>
  <!-- ############################################################# -->

  <?php
  /*
  Database configuration
  */

  // Connection parameters
  $host = 'localhost';
  $user = 'root';
  $password = '';
  $db = 'assignment_2';

  // Connect to the database
  $conn = mysqli_connect($host, $user, $password, $db);

  // Connection check
  if (!$conn) {
    exit('Error: Could not connect to the database.');
  }

  // Set the charset
  mysqli_set_charset($conn, 'utf8');
  ?>


  <!-- PROBLEM 4 -->

  <div class="w3-content w3-container w3-padding-64" id="about">
    <h3 class="w3-center">Problem 4: HTML Form</h3>
    <!-- write your solution here -->

  </div>


  <!-- PROBLEM 5 -->

  <div class="w3-content w3-container w3-padding-64" id="about">
    <h3 class="w3-center">Problem 5: Insert into Table</h3>
    <!-- write your solution here -->

  </div>


  <!-- PROBLEM 6 -->

  <div class="w3-content w3-container w3-padding-64" id="about">
    <h3 class="w3-center w3-content">Problem 6: Show data</h3>
    <!-- write your solution here -->
    <table>
      <tr>
        <th>Name</th>
        <th>Username</th>
        <th>Email</th>
        <th>Register date</th>
      </tr>
      <tr>
        <td>Stacy Flowers</td>
        <td>guzmangrant</td>
        <td>adamgordon@example.com</td>
        <td>2021-06-11</td>
      </tr>
    </table>
  </div>


  <!-- PROBLEM 7 -->
  <div class="w3-content w3-container w3-padding-64" id="about">
    <h3 class="w3-center">Problem 7: Search data</h3>
    <!-- write your solution here -->

  </div>


</body>

</html>