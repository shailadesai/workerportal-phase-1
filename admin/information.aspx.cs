using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class admin_Default : System.Web.UI.Page
{
    DLL DOBJ = new DLL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable DT = new DataTable();
        DT = DOBJ.RetrieveAll("callmanagmentselect");
        //DataSet DS = new DataSet();
        GridView1.DataSource = DT;
        GridView1.DataBind();
    }
}