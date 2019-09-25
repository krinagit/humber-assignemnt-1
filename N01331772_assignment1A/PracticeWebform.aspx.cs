using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace N01331772_assignment1A
{
    public partial class PracticeWebform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                
                Page.Validate();

                
                if (Page.IsValid)
                {
                    string Diver_Name = aspx_diver_name.Text.ToString();
                    string Incident_Place_Address = aspx_incident_place_address.Text.ToString();
                    string Incident_Date = aspx_incident_date.Text.ToString();
                    string Diver_Phone = aspx_diver_phone.Text.ToString();
                    string Diver_EmailId = aspx_diver_emailid.Text.ToString();
                    int Diver_Age = Convert.ToInt32(aspx_diver_age.Text);
                    string Diver_Gender = aspx_diver_gender.Text.ToString();
                    string Diver_Experienced= aspx_diver_experienced.SelectedValue.ToString();
                    string Incident_dive_site = aspx_incident_dive_site.Text.ToString();
                    string Incident_Type_Factors = aspx_incident_type_factors.Text.ToString();
        



                    confirmbox.InnerHtml += "Scuba diving incident report. Your Summary is as follows: <br>";

                    
                    confirmbox.InnerHtml += " Name: " + Diver_Name + "<br>";
                    confirmbox.InnerHtml += "Address: " + Incident_Place_Address + "<br>";
                    confirmbox.InnerHtml += "Date:"+ Incident_Date + "<br>";
                    confirmbox.InnerHtml += "Phone:"+ Diver_Phone + "<br>";
                    confirmbox.InnerHtml += "Email:" + Diver_EmailId + "<br>";
                    confirmbox.InnerHtml += "Age:"+ Diver_Age + "<br>";
                    confirmbox.InnerHtml += "Gender:"+ Diver_Gender + "<br>";
                    confirmbox.InnerHtml += "Diver_Experienced:"+ Diver_Experienced + "<br>";
                    confirmbox.InnerHtml += "Incident_Type_Factors:" + Incident_Type_Factors + "<br>";
                    confirmbox.InnerHtml += "Incident_dive_site:" + Incident_dive_site + "<br>";





                    //For “Incident Report” Contexts: Determine if the incident is “Resolved”, 
                    // “Requires Urgent Attention”, 
                    //or “Pending Investigation” based on the information the user submitted. 
                    //- Print out a summary of the information you’ve received. 




                    //confirmbox.InnerHtml += " Incident Report " + Incident_investigation_status.ToString()  + "<br>";
                    if (Incident_Type_Factors.CompareTo("Whale attack") ==0 || Incident_Type_Factors.CompareTo("Faulty equipment") == 0)
                    {
                        confirmbox.InnerHtml += " Resolved";
                    }
                    else if (Incident_Type_Factors.CompareTo("Infection") == 0 || Incident_Type_Factors.CompareTo("Minor bruises") == 0)

                    {
                        confirmbox.InnerHtml += "Requires Urgent Attention";
                    }
                    else
                    {
                        confirmbox.InnerHtml += "Pending Investigation";
                    }


                }
            }
        }
    }
}