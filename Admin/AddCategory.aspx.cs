﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_AddCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OPS.mdf;Integrated Security=True;User Instance=True");


        string str;
        str = "insert into Category(Category_name)values('" + txtcategory.Text + "')   ";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        cmd.ExecuteNonQuery();

        lblMsg.Text = "Product inserted succ.";


        GridView1.DataBind();

    }
    protected void txtcategory_TextChanged(object sender, EventArgs e)
    {

    }
}