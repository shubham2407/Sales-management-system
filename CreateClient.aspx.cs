using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CreateClient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Userid"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        LibraryDb.SelectCommand = "SELECT Id,Name,CreatedUserId,CONVERT(CHAR(23),CONVERT(DATETIME,timestamp,101),121) as timestamp,dbo.fn_getType(CType) as CType,ChanceToClose,EBudget,Duration,ContactName,ContactMobile,Description,Notes FROM[Client_Table] Where [CreatedUserId]='" + Session["UserId"].ToString() + "' ORDER BY[Name]";
        SalesDb.SelectCommand = "SELECT [OppId], [Name] FROM [OppType_Table] where [CreatedByUserId]='" + Session["UserId"].ToString() + "'";
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SalesConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("INSERT INTO dbo.Client_Table (Name,CreatedUserId,timestamp,CType,ChanceToClose,EBudget,Duration,ContactName,ContactMobile,Description,Notes) Values (@Name,@CreatedUserId,@timestamp,@CType,@ChanceToClose,@EBudget,@Duration,@ContactName,@ContactMobile,@Description,@Notes)", conn);

            cmd.Parameters.AddWithValue("Name", txtName.Text);
            cmd.Parameters.AddWithValue("CreatedUserId", Session["UserId"].ToString());
            cmd.Parameters.AddWithValue("timestamp", DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss"));
            cmd.Parameters.AddWithValue("CType", ddlType.SelectedValue);
            cmd.Parameters.AddWithValue("ChanceToClose", txtChance.Text);
            cmd.Parameters.AddWithValue("EBudget", txtBudget.Text);
            cmd.Parameters.AddWithValue("Duration", txtDuration.Text);
            cmd.Parameters.AddWithValue("ContactName", txtContactName.Text);
            cmd.Parameters.AddWithValue("ContactMobile", txtContactNumber.Text);
            cmd.Parameters.AddWithValue("Description", txtDescription.Text);
            cmd.Parameters.AddWithValue("Notes", txtNotes.Text);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {

            }
            finally
            {
                conn.Close();
            }


        }
        catch (Exception ex)
        {

        }
    }
}