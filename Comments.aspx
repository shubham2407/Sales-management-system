<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="Comments.aspx.cs" Inherits="Comments" %>

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
                    <h3 class="alert alert-info">Sales Announcement Management</h3>          
                    <table border="0" cellpadding="5" cellspacing="5" class="table bg-success ">
                        <tr>
                            <td>
                                <span>Announcement </span>
                            </td>
                            <td>
                                <span>Date</span>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                
                                <asp:TextBox TextMode="MultiLine" runat="server" ID="txtStudentId" class="form-control" placeholder="Message" required  CssClass="form-control"/>
                            </td>
                            <td>
                                
                                 <asp:TextBox  runat="server" ID="txtStudentName" class="form-control" placeholder="eg: 2016/01/29" required CssClass="form-control"/>
                            </td>
                            <td>
                                <asp:Button Text="Publish Announcement" runat="server" ID="btnAdd" 
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
                DataKeyNames="id" DataSourceID="LibraryDb">
              <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                  <asp:BoundField DataField="id" HeaderText="id" 
                      SortExpression="id" ReadOnly="True" Visible="False" InsertVisible="False"  />
                  <asp:BoundField DataField="Message" HeaderText="Message" 
                      SortExpression="Message" />
                    <asp:BoundField DataField="datetime" ReadOnly="True" HeaderText="Date"  
                      SortExpression="datetime" />
                   <asp:BoundField DataField="CreatedUserId" Visible="False" HeaderText="CreatedUserId" 
                      SortExpression="CreatedUserId" />
                     
              </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="LibraryDb" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SalesConnectionString %>" 
                DeleteCommand="DELETE FROM [Announcement_table] WHERE [id] = @id" 
                UpdateCommand="UPDATE [Announcement_table] SET [Message] = @Message WHERE [id] = @id" 
            >
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Message" Type="String" />
                    <asp:Parameter Name="datetime" DbType="Date" />
                    <asp:Parameter Name="CreatedUserId" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Message" Type="String" />
                    <asp:Parameter Name="datetime" DbType="Date" />
                    <asp:Parameter Name="CreatedUserId" Type="Int32" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </center>
</asp:Content>

