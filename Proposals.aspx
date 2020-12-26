<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="Proposals.aspx.cs" Inherits="Proposals" %>

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <center>
        <div>
            <br />
            <br />
            
            <div class="input-group">
                <div class="form-inline">    
                    <h3 class="alert alert-danger">Proposals Management</h3>          
                    <table border="0" cellpadding="5" cellspacing="5" class="table bg-success table-responsive ">
                         <tr class="alert-info">
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
                                <span>Amount</span>
                            </td>
                              <td>
                                <span>Duration</span>
                            </td>
                               <td>
                                <span>Revenue</span>
                            </td>
                            </tr>
                        
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="txtName"  placeholder="Proposals Name" required  CssClass="form-control"/>
                            </td>
                            <td>
                                 <asp:TextBox runat="server" ID="txtChance"  placeholder="Chance to Close" required CssClass="form-control"/>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtBudget"  placeholder="Estimated Budget" required  CssClass="form-control"/>
                            </td>
                            <td>
                                 <asp:TextBox runat="server" ID="txtAmount"  placeholder="eg: 2.45" required  CssClass="form-control"/>
                              
                            </td>
                             <td>
                                <asp:TextBox runat="server" ID="txtDuration"  placeholder="Duration in days" required  CssClass="form-control"/>
                            </td>
                             <td>
                                <asp:TextBox runat="server" ID="txtRevenue"  placeholder="Total Revenue" required  CssClass="form-control"/>
                            </td>
                             </tr>
                        <tr class="alert-info">
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
                            <td> Rejection Reason
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
                               <asp:TextBox runat="server" ID="txtReason"  placeholder="Rejection Reason" required  CssClass="form-control"/>
                            </td>
                            <td>
                                <asp:checkbox text="Accept" runat="server" ID="chkStatus" />
                                &nbsp;&nbsp;  <asp:Button Text="Add User" runat="server" ID="btnAdd" 
                                    class="btn btn-sm btn-primary" OnClick="btnAdd_Click" />
                              
                            </td>
                          
                        </tr>
                    </table>
                </div>
            </div>
            <br />
            <br />
          <asp:GridView ID="GridView1" runat="server" 
                CssClass="table table-responsive table-striped" AutoGenerateColumns="False" 
                DataKeyNames="Id" DataSourceID="LibraryDb">
              <Columns>
                 
                  <asp:CommandField ShowEditButton="True" />
                 
                  <asp:BoundField DataField="Id" HeaderText="Id" 
                      SortExpression="Id" ReadOnly="True" InsertVisible="False"  />
                  <asp:BoundField DataField="Name" HeaderText="Name" 
                      SortExpression="Name" />
                    <asp:BoundField DataField="CreatedUserId" HeaderText="CreatedUserId" 
                      SortExpression="CreatedUserId" />
                   <asp:BoundField DataField="timestamp" HeaderText="timestamp" 
                      SortExpression="timestamp" />
                  <asp:BoundField DataField="ChanceToClose" HeaderText="ChanceToClose" 
                      SortExpression="ChanceToClose" />
                  <asp:BoundField DataField="EBudget" HeaderText="EBudget" 
                      SortExpression="EBudget" />
                  <asp:BoundField DataField="Duration" HeaderText="Duration" 
                      SortExpression="Duration" />
                  <asp:BoundField DataField="ContactName" HeaderText="ContactName" 
                      SortExpression="ContactName" />
                  <asp:BoundField DataField="ContactMobile" HeaderText="ContactMobile" 
                      SortExpression="ContactMobile" />
                  <asp:BoundField DataField="Description" HeaderText="Description" 
                      SortExpression="Description" />
                  <asp:BoundField DataField="Notes" HeaderText="Notes" 
                      SortExpression="Notes" />
                  <asp:BoundField DataField="Amount" HeaderText="Amount" 
                      SortExpression="Amount" />
                  <asp:BoundField DataField="Revenue" HeaderText="Revenue" 
                      SortExpression="Revenue" />
                  <asp:CheckBoxField DataField="status" HeaderText="status" 
                      SortExpression="status" />
                  <asp:BoundField DataField="RejectionReason" HeaderText="RejectionReason" 
                      SortExpression="RejectionReason" />
              </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="LibraryDb" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SalesConnectionString %>" 
                SelectCommand="SELECT * FROM [Proposal_Table]" 
                DeleteCommand="DELETE FROM [Proposal_Table] WHERE [Id] = @Id" 
                InsertCommand="INSERT INTO [Proposal_Table] ([Name], [CreatedUserId], [timestamp], [ChanceToClose], [EBudget], [Duration], [ContactName], [ContactMobile], [Description], [Notes], [Amount], [Revenue], [status], [RejectionReason]) VALUES (@Name, @CreatedUserId, @timestamp, @ChanceToClose, @EBudget, @Duration, @ContactName, @ContactMobile, @Description, @Notes, @Amount, @Revenue, @status, @RejectionReason)" 
                UpdateCommand="UPDATE [Proposal_Table] SET [Name] = @Name, [CreatedUserId] = @CreatedUserId, [timestamp] = @timestamp, [ChanceToClose] = @ChanceToClose, [EBudget] = @EBudget, [Duration] = @Duration, [ContactName] = @ContactName, [ContactMobile] = @ContactMobile, [Description] = @Description, [Notes] = @Notes, [Amount] = @Amount, [Revenue] = @Revenue, [status] = @status, [RejectionReason] = @RejectionReason WHERE [Id] = @Id" >
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="CreatedUserId" Type="Int32" />
                    <asp:Parameter Name="timestamp" Type="DateTime" />
                    <asp:Parameter Name="ChanceToClose" Type="String" />
                    <asp:Parameter Name="EBudget" Type="String" />
                    <asp:Parameter Name="Duration" Type="String" />
                    <asp:Parameter Name="ContactName" Type="String" />
                    <asp:Parameter Name="ContactMobile" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Notes" Type="String" />
                    <asp:Parameter Name="Amount" Type="Single" />
                    <asp:Parameter Name="Revenue" Type="Single" />
                    <asp:Parameter Name="status" Type="Boolean" />
                    <asp:Parameter Name="RejectionReason" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="CreatedUserId" Type="Int32" />
                    <asp:Parameter Name="timestamp" Type="DateTime" />
                    <asp:Parameter Name="ChanceToClose" Type="String" />
                    <asp:Parameter Name="EBudget" Type="String" />
                    <asp:Parameter Name="Duration" Type="String" />
                    <asp:Parameter Name="ContactName" Type="String" />
                    <asp:Parameter Name="ContactMobile" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Notes" Type="String" />
                    <asp:Parameter Name="Amount" Type="Single" />
                    <asp:Parameter Name="Revenue" Type="Single" />
                    <asp:Parameter Name="status" Type="Boolean" />
                    <asp:Parameter Name="RejectionReason" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </center>
</asp:Content>

