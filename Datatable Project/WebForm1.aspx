<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Web_Project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js" ></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>  
    <link href="~/Content/bootstrap.css" rel="stylesheet" />  
  
    <link href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css" rel="stylesheet" />  
    <link href="https://cdn.datatables.net/responsive/2.1.1/css/responsive.bootstrap.min.css" rel="stylesheet" />  
  
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>  
    <script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap4.min.js "></script>  


    <script src="https://code.jquery.com/iquery-3.4.1.min.js"></script> 
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" /> 
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" /> 
    <script type="text/javascript" src="//cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function(){
            $.ajax({
                url: 'WebForm1.aspx/getStudents',
                method: 'post',
                dataType:'json',
                contentType: 'application/json',
                async: false,
                success: function (data) {
                    $('#MyTable').dataTable({
                        data: JSON.parse(data.d),
                        columns: [
                            { 'data': 'ID' },
                            { 'data': 'Name' },
                            { 'data': 'Gender' },
                            { 'data': 'Email' },
                            { 'data': 'Phone' },
                            
                           
                            ]
                        });
                    }
            });
            $.ajax({
                url: 'WebForm1.aspx/getStudents',
                method: 'post',
                dataType: 'json',
                contentType: 'application/json',
                async: false,
                success: function (data) {
                    $('#MyTable').dataTable({
                        data: JSON.parse(data.d),
                        columns: [
                            { 'data': 'ID' },
                            { 'data': 'Name' },
                            { 'data': 'Gender' },
                            { 'data': 'Email' },
                            { 'data': 'Phone' },


                        ]
                    });
                }
            });

            })
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="MyTable">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Command</th>
                    </tr>
                </thead>
            </table>
        </div>
        <div>
            <table id="Table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Command</th>
                    </tr>
                </thead>
            </table>
        </div>
    </form>
</body>
</html>
