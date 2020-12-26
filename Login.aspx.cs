using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Request.Cookies.Remove("user");
            Session.RemoveAll();
        }
        catch(Exception)
        {
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if(inputEmail.Value.ToUpper() == "ADMIN" && inputPassword.Value.ToUpper() == "ADMIN@123")
        {
            Session["userid"] = "1";
            Session["role"] = "Admin";
            Session["username"] = "Admin";
            Session["IsAuth"] = "true";
            Response.Redirect("Home.aspx");
        }
        else
        {
            LoginDetails log = ValidateUser(inputEmail.Value, inputPassword.Value);

            if(log.IsAuthUser)
            {
                Session["userid"] = log.UserId;
                Session["role"] = log.Role;
                Session["username"] = log.UserName;
                Session["IsAuth"] = log.IsAuthUser;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }


    private LoginDetails ValidateUser(string username, string password)
    {
        LoginDetails obj = new LoginDetails();
        obj.IsAuthUser = false;
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bs"].ConnectionString);
            SqlDataAdapter da;
            DataSet ds = new DataSet();
            string query = "select * from users_table where username='" + username.Trim() + "' and pwd='" + password.Trim() + "'";
            da = new SqlDataAdapter(query, con);
            con.Open();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                obj.IsAuthUser = true;
                obj.UserName = ds.Tables[0].Rows[0]["UserName"].ToString();
                obj.UserId = int.Parse(ds.Tables[0].Rows[0]["UserId"].ToString());
                obj.Role = ds.Tables[0].Rows[0]["Role"].ToString();
            }
        }
        catch (Exception ex)
        {
            obj.IsAuthUser = false;
        }
        return obj;
    }

    private struct LoginDetails
    {
        public int UserId { get; set; }
        public string UserName { get; set; }
        public string Role { get; set; }
        public bool IsAuthUser { get; set; }
    }
}