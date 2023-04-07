<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pageNotFound.aspx.cs" Inherits="HamroAirway.pageNotFound" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>page not found</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">

    <section class="vh-100 " style="background-color: #ffffff;">
    <div class="container py-5">
    <div class="row d-flex justify-content-center align-items-center">
        <div id="error-img"><img src="../Images/404NotFound.png" alt="404logo"></div>
        <div class="main-icon text-warning"><span class="uxicon uxicon-alert"></span></div>
        <h1>File not found (404 error)</h1>
        <p class="lead">If you think what you're looking for should be here, please contact the site owner.</p>
        <a href="../base/home.aspx"> <input type="button" value="Back to home" class="btn btn-primary"/> </a>
    </div>
  </div>
</section>


    </form>
    
    <%--Bootstrap Scripts--%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
   
</body>
</html>
