﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
     //   if (Session["admin"] == null)
      //  {
       //     Response.Redirect("~/Login.aspx");
       // }
       // Label1.Text = "WELCOME ADMIN:" + Session["admin"].ToString();
    }
}
