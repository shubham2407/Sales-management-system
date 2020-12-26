using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Proposals : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Userid"] == null)
        {
            Response.Redirect("Login.aspx");
        }

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            int i = 0;
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SalesConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("INSERT INTO dbo.[Proposal_Table] (Name,CreatedUserId,timestamp,ChanceToClose,EBudget,Duration,ContactName,ContactMobile,Description,Notes,Amount,Revenue,status,RejectionReason) Values (@Name,@CreatedUserId,@timestamp,@ChanceToClose,@EBudget,@Duration,@ContactName,@ContactMobile,@Description,@Notes ,@Amount,@Revenue,@status,@RejectionReason)", conn);

            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@CreatedUserId", Session["UserId"].ToString());
            cmd.Parameters.AddWithValue("@timestamp", DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss"));
            cmd.Parameters.AddWithValue("@ChanceToClose", txtChance.Text);
            cmd.Parameters.AddWithValue("@EBudget", txtBudget.Text);
            cmd.Parameters.AddWithValue("@Duration", txtDuration.Text);
            cmd.Parameters.AddWithValue("@ContactName", txtContactName.Text);
            cmd.Parameters.AddWithValue("@ContactMobile", txtContactNumber.Text);
            cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
            cmd.Parameters.AddWithValue("@Notes", txtNotes.Text);
            cmd.Parameters.AddWithValue("@status", chkStatus.Checked);
            cmd.Parameters.AddWithValue("@Revenue", txtRevenue.Text);
            cmd.Parameters.AddWithValue("@Amount", txtAmount.Text);
            cmd.Parameters.AddWithValue("@RejectionReason", txtReason.Text);

            try
            {
                conn.Open();
                i = cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

            }
            finally
            {
                conn.Close();
            }

            if (i > 0 && chkStatus.Checked)
            {

                cmd = new SqlCommand("INSERT INTO dbo.[Project_Table]([ProjectName],[ProjectManager],[timestamp],[Amount],[Revenue],[Description],[status],[LaunchDate],[Duration],[ContactName],[ContactMobile],[Notes]) Values (@ProjectName,@ProjectManager,@timestamp,@Amount,@Revenue,@Description,@status,@LaunchDate,@Duration,@ContactName,@ContactMobile,@Notes)", conn);

                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@ProjectName", txtName.Text);
                cmd.Parameters.AddWithValue("@ProjectManager", Session["UserId"].ToString());
                cmd.Parameters.AddWithValue("@timestamp", DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss"));
                cmd.Parameters.AddWithValue("@Amount", txtAmount.Text);
                cmd.Parameters.AddWithValue("@status", chkStatus.Checked);
                cmd.Parameters.AddWithValue("@Revenue", txtRevenue.Text);
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
                cmd.Parameters.AddWithValue("@Notes", txtNotes.Text);
                cmd.Parameters.AddWithValue("@Duration", txtDuration.Text);
                cmd.Parameters.AddWithValue("@ContactName", txtContactName.Text);
                cmd.Parameters.AddWithValue("@ContactMobile", txtContactNumber.Text);
                cmd.Parameters.AddWithValue("@LaunchDate", DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss"));
                // Response.Write("Prject Inserted");
                try
                {
                    conn.Open();
                    i = cmd.ExecuteNonQuery();

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                finally
                {
                    conn.Close();
                }
            }
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}