using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    getset getsetobj = new getset();
    BLL bobj = new BLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        errlbl.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int flag = 0;

        getsetobj.Username = TextBox1.Text;
        getsetobj.Password = TextBox2.Text;


if (flag == 0)
        {
            try
            {

                SqlParameter un = new SqlParameter("@username", getsetobj.Username);
                SqlParameter pw = new SqlParameter("@password", getsetobj.Password);


                SqlParameter[] ddata = new SqlParameter[2] { un, pw };
        
                int x = bobj.Login("AdminLogin", ddata);

                if (x > 0)
                {
                    flag = 1;
                    errlbl.Visible = true;

                    errlbl.Text = "Admin Login Successfully ";
                    Session["Admin"] = TextBox1.Text;
                    Response.Redirect("~/admin/cityid.aspx");
                }
            }
            catch (Exception ex)
            {
                errlbl.Visible = true;
                errlbl.Text = ex.Message.ToString();
            }
        }
        if (flag == 0)
        {
            try
            {

                SqlParameter un = new SqlParameter("@username", getsetobj.Username);
                SqlParameter pw = new SqlParameter("@password", getsetobj.Password);


                SqlParameter[] ddata = new SqlParameter[2] { un, pw };
        
                int x = bobj.Login("UserLogin", ddata);
                
                if (x > 0)
                {
                    flag = 1;
                    errlbl.Visible = true;

                    errlbl.Text = "User Login Successfully  ";
                    Session["UserInfo"] = TextBox1.Text;
                    Response.Redirect("~/USER/changepassword.aspx");
                }
            }
            catch (Exception ex)
            {
                errlbl.Visible = true;
                errlbl.Text = ex.Message.ToString();
            }
        }
        if (flag == 0)
        {
            errlbl.Visible = true;
            errlbl.Text = "Invalid Info";
        }
    }
}