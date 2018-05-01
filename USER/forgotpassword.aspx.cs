using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class forgotpassword : System.Web.UI.Page
{
    DLL dobj = new DLL();
    getset getsetobj = new getset();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Visible = false;
    }
    protected void sbtforgotpass_Click(object sender, EventArgs e)
    {
  


        SqlParameter uid = new SqlParameter("@Username", getsetobj.Worker_id);
        SqlParameter que = new SqlParameter("@Questionid", getsetobj.Workerdesc);
        SqlParameter ans = new SqlParameter("@Answer", getsetobj.Wages);

        SqlParameter[] ddata = new SqlParameter[3] { uid, que, ans };
        DataTable dt =dobj.RetrieveInfo("forgotpassword", ddata); 
        if(dt.Rows.Count>0)
        {
            foreach(DataRow temp in dt.Rows)
            {
                Label3.Text = temp["password"].ToString();
            }
        }
        else{

            Label3.Text = "invalid info";
        }
    }
}

        
        