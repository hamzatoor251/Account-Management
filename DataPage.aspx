
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataPage.aspx.cs" Inherits="DataTable_Project.DataPage" %>

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
        var emptyRow = "<tr><td colspan='4' class='text-center'></td></tr>";
        var emptyNewRow = "<tr class='trNewRow'>";
        emptyNewRow += "        <td></td> ";
        emptyNewRow += "    <td class='tdName'>";
        emptyNewRow += "        <input  type='text' ID='tddName' class='form-control txtName' placeholder='Enter Name'/>";
        emptyNewRow += "    </td>";
        emptyNewRow += "    <td class='tdEmail'>";
        emptyNewRow += "        <input type='text'  ID='tddEmail' class='form-control txtEmail' placeholder='Enter Email'/>";
        emptyNewRow += "    </td>";
        emptyNewRow += "    <td class='tdPassword'>";
        emptyNewRow += "        <input type='text'  ID='tddPassword' class='form-control txtPassword' placeholder='Enter Password'/>";
        emptyNewRow += "    </td>";
        emptyNewRow += "    <td class='tdAction'>";
        emptyNewRow += "        <button class='btn btn-sm btn-success btn-save'> Save</button>";
        emptyNewRow += "        <button class='btn btn-sm btn-success btn-cancel'> Cancel</button>";
        emptyNewRow += "    </td>";
        emptyNewRow += "</tr>";
        var rowButtons = "<button class='btn btn-success btn-sm btn-edit' > Edit </button>  <button class='btn btn-danger btn-sm' > Delete </button> ";
        //var rowUpdateButtons = "<button class='btn btn-success btn-sm btn-save' > Update </button>  <button class='btn btn-danger btn-sm btn-save' > Cancel </button> ";
        var rowEditButtons = "<button class='btn btn-success btn-sm btn-update' > Update </button>  <button class='btn btn-danger btn-sm btn-updtCncl' > Cancel </button> ";

        //Customer New Account Row
        var cstmrRow = "<tr><td colspan='4' class='text-center'></td></tr>";
        var cstmrNewRow = "<tr class='trNewRow'>";
        cstmrNewRow += "        <td></td> ";
        cstmrNewRow += "    <td class='tdName'>";
        cstmrNewRow += "        <input  type='text' ID='tddName' class='form-control txtName' placeholder='Enter Name'/>";
        cstmrNewRow += "    </td>";
        cstmrNewRow += "    <td class='tdPassword'>";
        cstmrNewRow += "        <input type='text'  ID='tddPassword' class='form-control txtPassword' placeholder='Enter Password'/>";
        cstmrNewRow += "    </td>";
        cstmrNewRow += "    <td class='tdEmail'>";
        cstmrNewRow += "        <input type='text'  ID='tddEmail' class='form-control txtEmail' placeholder='Enter Email'/>";
        cstmrNewRow += "    </td>";
        cstmrNewRow += "    <td class='tdAddress'>";
        cstmrNewRow += "        <input type='text'  ID='tddAddress' class='form-control txtAddress' placeholder='Enter Address'/>";
        cstmrNewRow += "    </td>";
        cstmrNewRow += "    <td class='tdAction'>";
        cstmrNewRow += "        <button class='btn btn-sm btn-success btn-save'> Save</button>";
        cstmrNewRow += "        <button class='btn btn-sm btn-success btn-cancel'> Cancel</button>";
        cstmrNewRow += "    </td>";
        cstmrNewRow += "</tr>";
        var cstmrButtons = "<button class='btn btn-success btn-sm btn-edit' > Edit </button>  <button class='btn btn-danger btn-sm' > Delete </button> ";
        //var rowUpdateButtons = "<button class='btn btn-success btn-sm btn-save' > Update </button>  <button class='btn btn-danger btn-sm btn-save' > Cancel </button> ";
        var cstmrEditButtons = "<button class='btn btn-success btn-sm btn-update' > Update </button>  <button class='btn btn-danger btn-sm btn-updtCncl' > Cancel </button> ";


        $(document).ready(function () {
            var AccTable = document.getElementById("AccTable");
            let hdnUser = document.getElementById("hdnUser").value;
            var BillBtn = document.getElementById("BillBtn");
            if (hdnUser == "Admin") {
                debugger
                AccTable.innerHTML = '<h2>Accountants</h2><table id="myTable" class="table table-hover table-dark"><thead><tr><th>ID</th><th>Name</th><th>Email</th><th></th><th >Edit</th><th class="tdAction"></th></tr></thead><tbody></tbody ></table ><input type="button" id="btnAdd" class="btn btn-primary para" value="Add New Accountant" /> ';
                firstTable();
                $("#btnAdd").click(function () {
                    ////debugger;
                    if ($("#tblData tbody").children().children().length == 1) {
                        $("#tblData tbody").html("");
                    }
                    //debugger;
                    $("#myTable").append(emptyNewRow); // appending dynamic string to table tbody
                

                });
                $("#myTable").on('click', '.btn-save', function () {
                    var Email = $(this).parent().parent().find(".txtEmail").val();
                    //$(this).parent().parent().find(".tdEmail").html("" + Email + "");
                    var Name = $(this).parent().parent().find(".txtName").val();
                    //$(this).parent().parent().find(".tdName").html("" + Name + "");
                    var password = $(this).parent().parent().find(".txtPassword").val();
                    if (Email != "" && Name != "" && password != "") {
                        $.ajax({
                            url: 'Datapage.aspx/AddAcc',
                            type: 'post',
                            data: JSON.stringify({ "Name": Name, "Email": Email, "Password": password }),
                            contentType: 'application/json',
                            async: false,
                            success: function (data) {
                                if (data.d) {
                                    alert("Accountant Added Successfully.......")
                                }
                            }
                        });
                    }
                    else {
                        $(this).parent().parent().find(".txtName").focus();
                        alert("Wrong Inputs");
                        return false;
                    }
                });
                $('#myTable').on('click', '.btn-delete', function () { // registering function for delete button  
                    $(this).parent().parent().remove();
                });
                $('#myTable').on('click', '.btn-cancel', function () {
                    $(this).parent().parent().remove();
                });
                $('#myTable').on('click', '.btn-edit', function () {    //edit button call
                    var row = $(this).closest('tr');
                    var Name = row.children('td:eq(1)').text();
                    var Email = row.children('td:eq(2)').text();
                    var Password = row.children('td:eq(3)').text();
                    
                    row.children('td:eq(1)').html("<input type='text' id='newName' value='" + Name + "' class='form-control newName' placeholder='Enter Name '/>");


                    //const Email = $(this).parent().parent().find(".tdEmail").html();

                    row.children('td:eq(2)').html("<input type='text' id='newEmail' value='" + Email + "' class='form-control newEmail' placeholder='Enter Email  '/>");


                    //const Password = $(this).parent().parent().find(".tdPassword").html();

                    //$(this).parent().parent().find(".tdPassword").html("<input type='text' value='" + Password + "' class='form-control txtPassword' placeholder='Enter Password'/>");
                    row.children('td:eq(3)').html("<input type='text' id='newPass' value='" + Password + "'  class='form-control newPassword' placeholder='Enter Password'/>");

                    $(this).parent().parent().find(".btn-delete").remove();
                    $(this).parent().parent().find(".tdAction").html(rowEditButtons);
                    $(this).parent().parent().find(".btn-edit").remove();
                    


                });
                $("#myTable").on('click', 'btn-updtCncl', function () {
                    $(this).parent().parent().find("#newName").remove();
                    $(this).parent().parent().find("#newEmail").remove()
                });
                $("#myTable").on('click', '.btn-update', function () {
                    var row = $(this).closest('tr');
                    var ID = row.children('td:eq(0)').text();
                    var Email = document.getElementById("newEmail").value;
                    var Name = document.getElementById("newName").value;
                    var Password = document.getElementById("newPass").value;

                    if (Email != "" && Name != "" && Password!="") {
                        
                       
                        
                        $.ajax({
                            url: 'Datapage.aspx/UpdateAcc',
                            type: 'post',
                            data: JSON.stringify({ "Name": Name, "Email": Email, "Password": Password, "ID": ID }),
                            contentType: 'application/json',
                            async: false,
                            success: function (data) {
                                if (data.d) {
                                    row.children('td:eq(1)').html(Name)
                                    row.children('td:eq(2)').html(Email);
                                    row.children('td:eq(2)').html(Password);
                                    $(this).parent().parent().find(".tdAction").remove(rowEditButtons);
                                    alert("Accountant Updated Successfully.......")
                                }


                            }
                        });
                        
                    }
                    else {
                        document.getElementById("newName").focus();
                        alert("Wrong Inputs");
                        return false;
                    }
                    
                });


            }
            
            else if (hdnUser == "Accountant") {
                BillBtn.innerHTML = '<button runat="server" OnClick="FwdBill_Click" ID="FwdBill" Value="Bill Button">Bill Button</button>'
            }


            $("#btnCAdd").click(function () {
                ////debugger;
                if ($("#tblData tbody").children().children().length == 1) {
                    $("#tblData tbody").html("");
                }
                //debugger;
                $("#newTable").append(cstmrNewRow);
            });
            $("#newTable").on('click', '.btn-save', function () {
                var Email = $(this).parent().parent().find(".txtEmail").val();
                //$(this).parent().parent().find(".tdEmail").html("" + Email + "");
                var Name = $(this).parent().parent().find(".txtName").val();
                //$(this).parent().parent().find(".tdName").html("" + Name + "");
                var password = $(this).parent().parent().find(".txtPassword").val();
                if (Email != "" && Name != "" && password != "") {
                    $.ajax({
                        url: 'Datapage.aspx/AddCust',
                        type: 'post',
                        data: JSON.stringify({ "Name": Name, "Email": Email, "Password": password }),
                        contentType: 'application/json',
                        async: false,
                        success: function (data) {
                            if (data.d) {
                                alert("Accountant Added Successfully.......")
                            }
                        }
                    });
                }
                else {
                    $(this).parent().parent().find(".txtName").focus();
                    alert("Wrong Inputs");
                    return false;
                }
            });


            secondTable();
            itemsTable();
            function firstTable() {
                $.ajax({
                    url: 'DataPage.aspx/GetAccountants',
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
                                { 'data': 'Email' },
                                { 'data': 'Password' },
                                {
                                    'data': 'ID',
                                    'render': function (ID, type, full, meta) {
                                        debugger
                                        return '<button type="button" class="btn btn-success btn-edit" id="editAccountantID"  >Edit</button>' + '<button type="button" class="btn btn-danger btn-delete" id="delAccountID" onclick=" delAcc(' + ID + ') ">Delete</button>'
                                    },
                                },
                                {
                                    'render': function () {
                                        //return '<td class="tdAction"> </td>"';
                                        return '<span class="tdAction"></span>';
                                    },
                                },
                            ]
                        });
                    }
                });
            }

            function secondTable() {
                $.ajax({
                    url: 'DataPage.aspx/GetCustomers',
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
                                { 'data': 'Email' },
                                { 'data':'Adress'},
                                {
                                    'data': 'ID',
                                    'render': function (data) {
                                        return '<button type="button" class="btn btn-success btn-edit" id="editAccountantID"  >Edit</button>' + '<button type="button" class="btn btn-danger btn-delete" id="delAccountID" onclick=" delCustomer(' + data + ') ">Delete</button>'
                                    },
                                },
                            ]
                        });
                    }
                });
            }
            function itemsTable() {
                $.ajax({
                    url: 'DataPage.aspx/GetItems',
                    method: 'post',
                    dataType: 'json',
                    contentType: 'application/json',
                    async: false,
                    success: function (data) {
                        $('#itemsTable').dataTable({
                            data: JSON.parse(data.d),
                            columns: [

                                { 'data': 'ID' },
                                { 'data': 'Name' },
                                { 'data': 'CostPrice' },
                                { 'data': 'SalePrice' },
                                {
                                    'data': 'ID',
                                    'render': function (data) {
                                        return '<button  id="editAccount" class="btn btn-primary" >Edit</button>'
                                    },
                                },
                            ]
                        });
                    }
                });
            }


        });
        function editEmployee(id) {
            //var a = document.getElementById("myTable").rows[1].cells[0].innerHTML;
            var nameTag = document.createElement("input");
            nameTag.setAttribute("Type", "Text");
            nameTag.setAttribute("ID", "nameTag");

            alert(a);
        }

        function delAcc(id) {
            $.ajax({
                url: 'DataPage.aspx/DelAcc',
                type: 'post',
                data: JSON.stringify({ "ID": id }),
                contentType: 'application/json',
                async: false,
                success: function (data) {
                    if (data.d) {
                        alert("Accountant Deleted Successfully.......")
                    }


                }
            });
        }
        function delCustomer(id) {
            $.ajax({
                url: 'DataPage.aspx/DelCust',
                type: 'post',
                data: JSON.stringify({ "ID": id }),
                contentType: 'application/json',
                async: false,
                success: function (data) {
                    if (data.d) {
                        alert("Accountant Deleted Successfully.......")
                    }


                }
            });
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div>
                <asp:HiddenField runat="server" ID="hdnUser"/>
            </div>
                <div id="AccTable">
            </div>
            <h2>Customers</h2>
            <div>
                <table id="newTable" class="table table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Customer Name</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Edit</th>
                        
                        <span></span>
                    </tr>
                </thead>
            </table>
<input type="button" id="btnCAdd" class="btn btn-primary para" value="Add New Customer" />
            </div>
            <h2>Items List</h2>
            <div>
                <table id="itemsTable" class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>Item ID</th>
                        <th>Items Name</th>
                        <th>Cost Price</th>
                        <th>Sale Price</th>
                        <th>Edit</th>
                        <%--<th><asp:CheckBox runat="server" /></th>--%>
                    </tr>
                </thead>
                    
            </table>
            <asp:HiddenField runat="server" ID="hdnPSwd" />
            </div>
            <div id="BillBtn">
                <%--<asp:Button runat="server" OnClick="FwdBill_Click" ID="CalBill" Text="Bill Button" Value="Bill Button" />--%>
            </div>
            
        </div>
    </form>
</body>
</html>
