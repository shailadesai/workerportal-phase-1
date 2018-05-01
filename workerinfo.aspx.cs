using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class workerinfo : System.Web.UI.Page
{

    BLL bobj = new BLL();
    getset getsetobj = new getset();
    DLL DOBJ = new DLL();

    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Visible = false;
        SqlParameter cid = new SqlParameter("@maxid", SqlDbType.Int);
        txtworkerid.Text = DOBJ.max("workerinfomaxid", cid).ToString();
    }
    protected void sbtbutton_Click(object sender, EventArgs e)
    {
        getsetobj.Worker_id = Convert.ToInt16(txtworkerid.Text);
        getsetobj.Workerdesc = txtworkerdesc.Text;
        getsetobj.Wages = txtwages.Text;


        SqlParameter wid = new SqlParameter("@workerid", getsetobj.Worker_id);
        SqlParameter wdesc = new SqlParameter("@workerdesc", getsetobj.Workerdesc);
        SqlParameter wwages = new SqlParameter("@wages", getsetobj.Wages);

        SqlParameter[] ddata = new SqlParameter[3] {wid,wdesc,wwages };

        try
        {
            int x = bobj.insert("Workerinformation", ddata);

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
    