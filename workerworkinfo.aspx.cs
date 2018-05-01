using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class workerworkinfo : System.Web.UI.Page
{
    BLL bobj = new BLL();
    getset getsetobj = new getset();
    DLL DOBJ = new DLL();

    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Visible = false;
        SqlParameter cid = new SqlParameter("@maxid", SqlDbType.Int);
        txtworkid.Text = DOBJ.max("workerworkinfomaxid", cid).ToString();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

      
        getsetobj.Workid = Convert.ToInt16(txtworkid.Text);
        getsetobj.User_id = Convert.ToInt16(txtuserid.Text);
        getsetobj.Usertypeid= txtusertypeid.Text;


        SqlParameter wrid = new SqlParameter("@workid", getsetobj.Workid);
        SqlParameter uid = new SqlParameter("@user_id", getsetobj.User_id);
        SqlParameter utid = new SqlParameter("@usertypeid", getsetobj.Usertypeid);

        SqlParameter[] ddata = new SqlParameter[3] { wrid, uid, utid };

        try
        {
            int x = bobj.insert("Workerworkinformation1", ddata);

            if (x > 0)
            {
                Label5.Visible = true;

                Label5.Text = "Successfully Inserted";
            }
        }
        catch (Exception ex)
        {
            Label5.Visible = true;
            Label5.Text = ex.Message.ToString();






        }
    }
}