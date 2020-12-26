<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="Projects.aspx.cs" Inherits="Projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <center>
        <div>
            <br />
            <br />
            
            <div class="input-group">
                <div class="form-inline">    
                    <h3 class="alert alert-danger">Projects Management</h3>         
                    
                </div>
            </div>
            <br />
            <br />
          <asp:GridView ID="GridView1" runat="server" 
                CssClass="table table-responsive table-striped" AutoGenerateColumns="False" 
                DataKeyNames="ProjId" DataSourceID="LibraryDb">
              <Columns>
                 
                  <asp:CommandField ShowEditButton="True" />
                 
                  <asp:BoundField DataField="ProjId" HeaderText="ProjId" 
                      SortExpression="ProjId" Visible="False" ReadOnly="True" InsertVisible="False"  />
                  <asp:BoundField DataField="ProjectName" HeaderText="Name" 
                      SortExpression="ProjectName" />
                    <asp:BoundField DataField="ProjectManager"  Visible="False"  HeaderText="Manager" 
                      SortExpression="ProjectManager" />
                   <asp:BoundField DataField="timestamp" HeaderText="DateTime" 
                      SortExpression="timestamp" Visible="False"  />
                  <asp:BoundField DataField="Amount" HeaderText="Amount" 
                      SortExpression="Amount" />
                  <asp:BoundField DataField="Revenue" HeaderText="Revenue" 
                      SortExpression="Revenue" />
                  <asp:BoundField DataField="Description" HeaderText="Description" 
                      SortExpression="Description" />
                  <asp:CheckBoxField DataField="status" HeaderText="status" 
                      SortExpression="status" />
                  <asp:BoundField DataField="LaunchDate" HeaderText="LaunchDate" 
                      SortExpression="LaunchDate" />
                  <asp:BoundField DataField="Duration" HeaderText="Duration" 
                      SortExpression="Duration" />
                  <asp:BoundField DataField="ContactName" HeaderText="ContactName" 
                      SortExpression="ContactName" />
                  <asp:BoundField DataField="ContactMobile" HeaderText="ContactMobile" 
                      SortExpression="ContactMobile" />
                  <asp:BoundField DataField="Notes" HeaderText="Notes" 
                      SortExpression="Notes" />
              </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="LibraryDb" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SalesConnectionString %>"                
                DeleteCommand="DELETE FROM [Project_Table] WHERE [ProjId] = @ProjId"                 
                UpdateCommand="UPDATE [Project_Table] SET [ProjectName] = @ProjectName, [Amount] = @Amount, [Revenue] = @Revenue, [Description] = @Description, [status] = @status, [LaunchDate] = @LaunchDate, [Duration] = @Duration, [ContactName] = @ContactName, [ContactMobile] = @ContactMobile, [Notes] = @Notes WHERE [ProjId] = @ProjId" >
                <DeleteParameters>
                    <asp:Parameter Name="ProjId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProjectName" Type="String" />
                    <asp:Parameter Name="ProjectManager" Type="Int32" />
                    <asp:Parameter Name="timestamp" Type="DateTime" />
                    <asp:Parameter Name="Amount" Type="Single" />
                    <asp:Parameter Name="Revenue" Type="Single" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="status" Type="Boolean" />
                    <asp:Parameter Name="LaunchDate" Type="DateTime" />
                    <asp:Parameter Name="Duration" Type="String" />
                    <asp:Parameter Name="ContactName" Type="String" />
                    <asp:Parameter Name="ContactMobile" Type="String" />
                    <asp:Parameter Name="Notes" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ProjectName" Type="String" />
                    <asp:Parameter Name="ProjectManager" Type="Int32" />
                    <asp:Parameter Name="timestamp" Type="DateTime" />
                    <asp:Parameter Name="Amount" Type="Single" />
                    <asp:Parameter Name="Revenue" Type="Single" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="status" Type="Boolean" />
                    <asp:Parameter Name="LaunchDate" Type="DateTime" />
                    <asp:Parameter Name="Duration" Type="String" />
                    <asp:Parameter Name="ContactName" Type="String" />
                    <asp:Parameter Name="ContactMobile" Type="String" />
                    <asp:Parameter Name="Notes" Type="String" />
                    <asp:Parameter Name="ProjId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </center>

</asp:Content>

