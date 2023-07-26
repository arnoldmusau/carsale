<!DOCTYPE html>
<html>
<head>
  <title>Cart</title>
  <style>
    .card-container {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
    }

    .card {
      width: calc(33.33% - 1rem);
      margin-bottom: 1rem;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      transition: all 0.3s ease-in-out;
    }

    .card:hover {
      transform: translateY(-5px);
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    }

    .card img {
      width: 100%;
      height: 200px;
      object-fit: cover;
      border-radius: 10px 10px 0 0;
    }

    .card h3 {
      font-size: 1.5rem;
      font-weight: bold;
      margin-bottom: 0.5rem;
    }

    .card p {
      font-size: 1.2rem;
      line-height: 1.5;
      margin-bottom: 0.5rem;
    }
  </style>
</head>
<body>
  <h1>Cart</h1>
  <div class="card-container">
    <?php
    $conn = new mysqli("localhost", "root", "", "carrental");
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM cart";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
      while ($row = $result->fetch_assoc()) {
        echo "<div class='card'>
          <img src='admin/img/vehicleimages/" . $row["carimage"] . "' alt='" . $row["car"] . "'>
          <div class='card-body'>
            <h3>" . $row["car"] . "</h3>
            <p>Price: $" . $row["price"] . "</p>
          </div>
        </div>";
      }
    }

    $conn->close();
    ?>
  </div>
</body>
</html>