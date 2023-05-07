<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebProject.aspx.cs" Inherits="DataTable_Project.WebProject" EnableViewState="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" />
    <link type="text/css" rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />


    <script type="text/javascript">
        $(document).ready(function () {
            firstTable();
            secondTable();
            function firstTable() {
                $.ajax({
                    url: 'WebProject.aspx/GetEmployees',
                    method: 'post',
                    dataType: 'json',
                    contentType: 'application/json',
                    async: false,
                    success: function (data) {
                        $('#myTable').dataTable({
                            data: JSON.parse(data.d),
                            columns: [

                                { 'data': 'ID' },
                                { 'data': 'Name' },
                                { 'data': 'Designation' },
                                //{
                                //    'render': function (data) {
                                //        return '<button class="btn btn-primary" id="editAccount">'
                                //    },
                                //},
                            ]
                        });
                    }
                });
                }
            function secondTable() {
                $.ajax({
                    url: 'WebProject.aspx/GetEmployees',
                    method: 'post',
                    dataType: 'json',
                    contentType: 'application/json',
                    async: false,
                    success: function (data) {
                        $('#newTable').dataTable({
                            data: JSON.parse(data.d),
                            columns: [

                                { 'data': 'ID' },
                                { 'data': 'Name' },
                                { 'data': 'Designation' },
                                //{
                                //    'render': function (data) {
                                //        return '<button class="btn btn-primary" id="editAccount">'
                                //    },
                                //},
                            ]
                        });
                    }
                });
            }
            

        });
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <table id="myTable">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Designation</th>
                    </tr>
                </thead>
            </table>
            <table id="newTable">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>name</th>
                        <th>designation</th>
                    </tr>
                </thead>
            </table>
        </div>

    </form>
</body>
</html>
