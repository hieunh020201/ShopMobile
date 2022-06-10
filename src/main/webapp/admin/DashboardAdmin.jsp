<%--
  Created by IntelliJ IDEA.
  User: NguyenHuuHieu
  Date: 6/7/2022
  Time: 7:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">

    <!-- Chart -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>

    <!-- style -->
    <link rel="stylesheet" href="../assets/css/indexStyle.css">

    <script src="../assets/js/main.js"></script>
    <title>Dashboard</title>
</head>

<body>
<div class="d-flex">
    <div class="col-2">
        <div class="position-fixed">
            <c:import url="/admin/SideBarAdmin.jsp"/>
        </div>
    </div>
    <div>
        <!-- statistic -->
        <div class="card-columns">
            <div class="card bg-danger p-2 m-3">
                <h4 class="font-weight-normal mb-3">monthly revenue
                    <i class="fas fa-chart-line float-right"></i>
                </h4>
                <h2 class="mb-5">$ 100</h2>
                <h6 class="card-text">Increased by 100%</h6>
                <h6 class="card-text">Decreased by 100%</h6>
            </div>
            <div class="card bg-warning p-2 m-3">
                <h4 class="font-weight-normal mb-3">monthly revenue
                    <i class="fas fa-chart-line float-right"></i>
                </h4>
                <h2 class="mb-5">$ 100</h2>
                <h6 class="card-text">Increased by 100%</h6>
                <h6 class="card-text">Decreased by 100%</h6>
            </div>
        </div>

        <!-- charts -->
        <div>
            <!-- chart -->
            <div class="col-lg-7">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Doanh thu từng tháng</h4>
                    </div>
                    <div class="card-body">
                        <canvas id="line-chart"></canvas>
                    </div>
                </div>
            </div>
            <!-- control -->
            <div>

            </div>
        </div>
        <div class="mt-4">
            <!-- chart -->
            <div class="col-lg-7">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Doanh thu từng tháng</h4>
                    </div>
                    <div class="card-body">
                        <canvas id="myChart" style="width:100%;max-width:600px"></canvas>
                    </div>
                </div>
            </div>
            <!-- control -->
            <div>

            </div>
        </div>
    </div>
</div>
</body>

</html>


<script>
    var xValues = [100, 200, 300, 400, 500, 600, 700, 800, 900, 1000];

    var chart = new Chart(document.getElementById("line-chart"), {
        type: "line",
        data: {
            labels: xValues,
            datasets: [{
                data: [860, 1140, 1060, 1060, 1070, 1110, 1330, 2210, 7830, 2478],
                borderColor: "red",
                fill: false
            }, {
                data: [1600, 1700, 1700, 1900, 2000, 2700, 4000, 5000, 6000, 7000],
                borderColor: "green",
                fill: false
            }, {
                data: [300, 700, 2000, 5000, 6000, 4000, 2000, 1000, 200, 100],
                borderColor: "blue",
                fill: false
            }]
        },
        options: {
            legend: { display: false }
        }
    });
</script>

<script>
    var xValues = ["Italy", "France", "Spain", "USA", "Argentina"];
    var yValues = [55, 49, 44, 24, 15];
    var barColors = [
        "#b91d47",
        "#00aba9",
        "#2b5797",
        "#e8c3b9",
        "#1e7145"
    ];

    new Chart("myChart", {
        type: "doughnut",
        data: {
            labels: xValues,
            datasets: [{
                backgroundColor: barColors,
                data: yValues
            }]
        },
        options: {
            title: {
                display: true,
                text: "World Wide Wine Production 2018"
            }
        }
    });
</script>