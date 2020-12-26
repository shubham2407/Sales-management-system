using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class CreateSales : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Userid"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        LibraryDb.SelectCommand = "SELECT * FROM [Users_Table] Where [Role]='Sales' And [CreatedUserId]='" + Session["UserId"].ToString() + "'";
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SalesConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("insert into Users_Table (UserName,Pwd,Role,CreatedUserId) values (@name,@pwd,@role,@lUserid)", conn);
            cmd.Parameters.AddWithValue("@name", txtStudentId.Text);
            cmd.Parameters.AddWithValue("@pwd", txtStudentName.Text);
            cmd.Parameters.AddWithValue("@role", "Sales");
            cmd.Parameters.AddWithValue("@lUserid", Session["UserId"].ToString());

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
                txtStudentId.Text = "";
                txtStudentName.Text = "";
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