<?php
if (isset($_SESSION['auth']) != 1) {
    header('Location: /home');
} 
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <link href= "/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href="/favicon.png">
        <title>COSC 4806</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="mobile-web-app-capable" content="yes">
    </head>
    <body>
        <nav class="navbar navbar-expand-sm navbar-dark bg-primary">
            <a class="navbar-brand" href="/home">COSC</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mr-auto">
                    <?php if ($_SESSION['acl'] == 3) { ?>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown">
                            Admin
                            </a>
                            <div class="dropdown-menu bg-primary">
                                <a class="dropdown-item nav-link bg-primary" href="/reports/login_report">Login Report</a>
                                <a class="dropdown-item nav-link bg-primary" href="/reports/user_report">User Report</a>
                                <a class="dropdown-item nav-link bg-primary" href="/reports/join_report">Join Report</a>
                                <a class="dropdown-item nav-link bg-primary" href="/login/register">Add User</a>
                            </div>
                        </li>
                    <?php } ?>
                    <?php if ($_SESSION['acl'] >= 2) { ?>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown">
                            Manager
                            </a>
                            <div class="dropdown-menu bg-primary">
                                <a class="dropdown-item nav-link bg-primary" href="/reports/staff_report">Staff Report</a>
                            </div>
                        </li>
                    <?php } ?>
                    <?php if ($_SESSION['acl'] >= 1) { ?>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown">
                            Staff
                            </a>
                            <div class="dropdown-menu bg-primary">
                                <a class="dropdown-item nav-link bg-primary" href="/reports/staff_report">Add Client</a>
                            </div>
                        </li>
                    <?php } ?>
                    <li class="nav-item">
                        <a href="/reminder/reminder_list" class="nav-link">Reminders</a>
                    </li>
                    <li class="nav-item">
                        <a href="/profile/phone_list" class="nav-link">Phone List</a>
                    </li>
                </ul>

                <ul class="navbar-nav navbar-right">
                    <li class="nav-item">
                        <a href="/logout/logout" class="nav-link">
                        <span class="fa fa-sign-out"></span> Logout</a>
                        </li>
                </ul>
            </div>
        </nav>