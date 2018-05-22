using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Payment : System.Web.UI.Page
{
    BLL bobj = new BLL();
    DLL dobj = new DLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label8.Visible = false;
        paydate.Text = DateTime.Now.ToShortDateString();
    }
    protected void Btnsbt_Click(object sender, EventArgs e)
    {
        SqlParameter pid = new SqlParameter("@paymentid", payid.Text);
        SqlParameter pdt = new SqlParameter("@paymentdate", paydate.Text);
        SqlParameter cn = new SqlParameter("@companyname", txtcmpname.Text);
        SqlParameter trw = new SqlParameter("@totalreqworker", reqwrk.Text);
        SqlParameter tw = new SqlParameter("@wages",paywage.Text);
        SqlParameter ta = new SqlParameter("@amount", payamt.Text);
        SqlParameter tf = new SqlParameter("@fees",payfees.Text);
       

        SqlParameter[] ddata = new SqlParameter[7] { pid,pdt,cn,trw,tw,ta,tf};

        try
        {
            int x = bobj.insert("PaymentInsert", ddata);

            if (x > 0)
            {
                Label8.Visible = true;

                Label8.Text = "Successfully Inserted";
            }
        }
        catch (Exception ex)
        {
            Label8.Visible = true;
            Label8.Text = ex.Message.ToString();
        }
    }
    }

    