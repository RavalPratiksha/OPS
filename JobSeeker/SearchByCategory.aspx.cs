﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class JobSeeker_SearchByCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            BindCategory();
        }
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        if (drpcategory.SelectedItem.Text == "Select Category")
        {
            lblcategory.Text = "Please select your Category.";
            GridView1.Visible = false;
            return;
        }
        lblcategory.Text = "";
        GridView1.Visible = true;
        SqlConnection con1 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        string str1;
        str1 = "select Job_title,Job_desc,Qual_req,Exp_req from jobdetail where Category_id=" + drpcategory.SelectedItem.Value + "   ";


        SqlCommand cmd1 = new SqlCommand(str1, con1);
        con1.Open();

        SqlDataReader dr1;
        dr1 = cmd1.ExecuteReader();

        GridView1.DataSource = dr1;
        GridView1.DataBind();
        con1.Close();
    }

    public void BindCategory()
    {

        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        String str = "";
        str = "Select * from Category ";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        drpcategory.DataSource = dr;
        drpcategory.DataTextField = "Category_name";
        drpcategory.DataValueField = "Category_id";
        drpcategory.DataBind();

        drpcategory.Items.Insert(0, "Select Category");
    }
}