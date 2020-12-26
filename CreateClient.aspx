<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="CreateClient.aspx.cs" Inherits="CreateClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

 <style>
        .myddls {
            align-items: center;
            background-color: rgb(255, 255, 255);
            border-bottom-color: rgb(204, 204, 204);
            border-bottom-left-radius: 4px;
            border-bottom-right-radius: 0px;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-collapse: collapse;
            border-image-outset: 0px;
            border-image-repeat: stretch;
            border-image-slice: 100%;
            border-image-source: none;
            border-image-width: 1;
            border-left-color: rgb(204, 204, 204);
            border-left-style: solid;
            border-left-width: 1px;
            border-right-color: rgb(204, 204, 204);
            border-right-style: solid;
            border-right-width: 1px;
            border-top-color: rgb(204, 204, 204);
            border-top-left-radius: 4px;
            border-top-right-radius: 0px;
            border-top-style: solid;
            border-top-width: 1px;
            box-shadow: rgba(0, 0, 0, 0.0745098) 0px 1px 1px 0px inset;
            box-sizing: border-box;
            color: rgb(85, 85, 85);
            cursor: default;
            display: inline-block;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-size: 14px;
            font-stretch: normal;
            font-style: normal;
            font-variant: normal;
            font-weight: normal;
            height: 34px;
            letter-spacing: normal;
            line-height: normal;
            margin-bottom: 0px;
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 0px;
            max-width: 280px;
            overflow-x: visible;
            overflow-y: visible;
            padding-bottom: 6px;
            padding-left: 12px;
            padding-right: 12px;
            padding-top: 6px;
            text-align: start;
            text-indent: 0px;
            text-rendering: auto;
            text-shadow: none;
            text-transform: none;
            transition-delay: 0s, 0s;
            transition-duration: 0.15s, 0.15s;
            transition-property: border-color, box-shadow;
            transition-timing-function: ease-in-out, ease-in-out;
            vertical-align: middle;
            white-space: pre;
            width: 48px;
            word-spacing: 0px;
            writing-mode: horizontal-tb;
            -webkit-appearance: menulist-button;
            -webkit-rtl-ordering: logical;
        }
    </style>
    <script  src="https://code.jquery.com/jquery-3.1.1.js" crossorigin="anonymous"></script>
    <link href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <script>
        function filter2(phrase, _id) {
            var words = phrase.value.toLowerCase().split(" ");
            var table = document.getElementById(_id);
            var ele;
            for (var r = 1; r < table.rows.length; r++) {
                ele = table.rows[r].innerHTML.replace(/<[^>]+>/g, "");
                var displayStyle = 'none';
                for (var i = 0; i < words.length; i++) {
                    if (ele.toLowerCase().indexOf(words[i]) >= 0)
                        displayStyle = '';
                    else {
                        displayStyle = 'none';
                        break;
                    }
                }
                table.rows[r].style.display = displayStyle;
            }
        }
        $(function () {
            $("#GridView1").DataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <center>
        <div>
            <br />
            <br />
            
            <div class="input-group">
                <div class="form-inline">    
                    <h3 class="alert alert-info">Opportunities Management</h3>          
                    <table border="0" cellpadding="5" cellspacing="5" class="table bg-success table-responsive ">
                         <tr class="alert-danger">
                            <td>
                                <span>Name</span>
                            </td>
                            <td>
                                <span>Chance to Close </span>
                            </td>
                             <td>
                                <span>Estimated Budget</span>
                            </td>
                             <td>
                                <span>Type</span>
                            </td>
                              <td>
                                <span>Duration</span>
                            </td>
                            </tr>
                        
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="txtName"  placeholder="Opportunity Name" required  CssClass="form-control"/>
                            </td>
                            <td>
                                 <asp:TextBox runat="server" ID="txtChance"  placeholder="Chance to Close" required CssClass="form-control"/>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtBudget"  placeholder="Estimated Budget" required  CssClass="form-control"/>
                            </td>
                            <td>
                                <asp:dropdownlist runat="server" ID="ddlType"  required CssClass="form-control" 
                                    DataSourceID="SalesDb" DataTextField="Name" DataValueField="OppId"></asp:dropdownlist>
                              
                                <asp:SqlDataSource ID="SalesDb" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:SalesConnectionString %>" 
                                    SelectCommand="SELECT * FROM [OppType_Table]" >
                                </asp:SqlDataSource>
                              
                            </td>
                             <td>
                                <asp:TextBox runat="server" ID="txtDuration"  placeholder="Duration in days" required  CssClass="form-control"/>
                            </td>
                             </tr>
                        <tr class="alert-danger">
                               <td>
                                <span>Contact Name</span>
                            </td>
                               <td>
                                <span>Contact Number</span>
                            </td>
                               <td>
                                <span>Description </span>
                            </td>
                               <td>
                                <span>Notes</span>
                            </td>                               
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="txtContactName"  placeholder="Contact Name" required  CssClass="form-control"/>
                            </td>
                            <td>
                                  <asp:TextBox runat="server" ID="txtContactNumber"  placeholder="Contact Number" required  CssClass="form-control"/>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtDescription"  placeholder="Description" required  CssClass="form-control"/>
                            </td>
                            <td>
                                  <asp:TextBox runat="server" ID="txtNotes"  placeholder="Notes" required  CssClass="form-control"/>
                            </td>
                            <td>
                                <asp:Button Text="Add User" runat="server" ID="btnAdd" 
                                    class="btn btn-sm btn-primary" OnClick="btnAdd_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <br />
            <br />
            <div style="float:left;padding:10px;">
                Search : <input name="txtTerm" onkeyup="filter2(this, '<%=GridView1.ClientID %>')" type="text" />
            </div>
          <asp:GridView ID="GridView1" runat="server" 
                CssClass="table table-responsive table-striped" AutoGenerateColumns="False" 
                DataKeyNames="Id" DataSourceID="LibraryDb">
              <Columns>
                 
                  <asp:BoundField DataField="Id" HeaderText="Id" 
                      SortExpression="Id" ReadOnly="True" Visible="False" InsertVisible="False"  />
                  <asp:BoundField DataField="Name" HeaderText="Name" 
                      SortExpression="Name" />
                    <asp:BoundField DataField="CreatedUserId" Visible="False" HeaderText="CreatedUserId" 
                      SortExpression="CreatedUserId" />
                   <asp:BoundField DataField="timestamp" HeaderText="DateTime" 
                      SortExpression="timestamp" />
                  <asp:BoundField DataField="CType" HeaderText="Type" SortExpression="CType" />
                  <asp:BoundField DataField="ChanceToClose" HeaderText="ChanceToClose" 
                      SortExpression="ChanceToClose" />
                  <asp:BoundField DataField="EBudget" HeaderText="Budget" 
                      SortExpression="EBudget" />
                  <asp:BoundField DataField="Duration" HeaderText="Duration" 
                      SortExpression="Duration" />
                  <asp:BoundField DataField="ContactName" HeaderText="Contact Name" 
                      SortExpression="ContactName" />
                  <asp:BoundField DataField="ContactMobile" HeaderText="Contact Mobile" 
                      SortExpression="ContactMobile" />
                  <asp:BoundField DataField="Description" HeaderText="Description" 
                      SortExpression="Description" />
                  <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
              </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="LibraryDb" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SalesConnectionString %>" >
            </asp:SqlDataSource>
        </div>
    </center>
</asp:Content>

