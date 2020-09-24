using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Employer_AddJobDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
        if (Page.IsPostBack == false)
        {
            BindEducation();
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        if (drpqualification.SelectedItem.Text == "Select Degree")
        {
            lblEdu.Text = "Please select Degree.";
            return;
        }
        SqlConnection con1 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        string str1;
        str1 = "insert into jobdetail(Employer_id,Job_title,Job_desc,Qual_req,Exp_req,Job_sal)values(" + Convert.ToInt32(Session["EmployerId"]) + ",'" + txtjobtitle.Text + "','" + txtjobdescription.Text + "'," + drpqualification.SelectedItem.Value + "," + txtsalaryoffer.Text + "," + txtexperience.Text + ")";

        SqlCommand cmd1 = new SqlCommand(str1, con1);


        con1.Open();
        cmd1.ExecuteNonQuery();
        con1.Close();


        Labmsg.Text = "Records Are Inserted Successfully...";
    }
    public void BindEducation()
    {

        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        String str = "";
        str = "Select * from Education";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        drpqualification.DataSource = dr;
        drpqualification.DataTextField = "Degree";
        drpqualification.DataValueField = "Education_id";
        drpqualification.DataBind();

        drpqualification.Items.Insert(0, "Select Degree");
    }
    



}