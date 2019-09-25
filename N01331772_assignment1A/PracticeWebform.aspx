<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PracticeWebform.aspx.cs" Inherits="N01331772_assignment1A.PracticeWebform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Scuba diving incident report in WebForm</title>
    <link rel="stylesheet" type="text/css" href="Content/Site.css" />
</head>
<body>
    <form id="form1" runat="server">
        <main>
            <div>
                <h2>Scuba diving incident report</h2>
                <section>
                    <h3>Please provide name and address of the place where the incident occured?</h3>
                    <div>
                   <label>Name:</label><asp:TextBox runat="server" ID="aspx_diver_name" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ForeColor="DarkRed" ErrorMessage="enter diver's name" ControlToValidate="aspx_diver_name"></asp:RequiredFieldValidator>
                   </div>
                   <div>
						<label>Address:</label>
						<asp:TextBox runat="server" ID="aspx_incident_place_address"></asp:TextBox>
						<asp:RequiredFieldValidator runat="server" EnableClientScript="true" ForeColor="DarkRed" ErrorMessage="enter incident's place address" ControlToValidate="aspx_incident_place_address"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <label>Date of the incident:</label><asp:TextBox runat="server" ID="aspx_incident_date"></asp:TextBox>
                        <asp:RangeValidator runat="server" Type="Date" ControlToValidate="aspx_incident_date"  MaximumValue="01/01/2100" MinimumValue="01/01/1900" ForeColor="DarkRed" ErrorMessage="enter valid date" Display="Dynamic"></asp:RangeValidator>
                    </div>
                    <div>
                       <label>Enter Your phone number:</label>
                       <asp:TextBox runat="server" ID="aspx_diver_phone"></asp:TextBox>
                       <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="aspx_diver_phone" ValidationExpression="^([0-9\(\)\/\+ \-]*)$" ForeColor="DarkRed" ErrorMessage="Please enter a valid phone number."></asp:RegularExpressionValidator>
                    </div>
                    <div>
                        <label>Enter Your email id:</label>
                        <asp:TextBox runat="server" ID="aspx_diver_emailid"></asp:TextBox>
<%--                     This link I used to find validation for email  , Author:WebDude, Site:stackoverflow, Date: sept 22, 2019 https://stackoverflow.com/questions/182542/email-address-validation-for-asp-net                                                                                                                         --%>
                        <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="aspx_diver_emailid" ValidationExpression= "\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Please enter a valid email id."></asp:RegularExpressionValidator>
                    </div>
                </section>
                <section>
					<h3>What is your age?(Between 18-50)</h3>
					<asp:TextBox runat="server" ID="aspx_diver_age" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="enter a valid age" ControlToValidate="aspx_diver_name"></asp:RequiredFieldValidator>
					<asp:RangeValidator runat="server" EnableClientScript="true" ErrorMessage="your age between 18 to 50" ControlToValidate="aspx_diver_age"  MinimumValue="18" MaximumValue="50"></asp:RangeValidator>
                </section>
                <section>
                    <h3>What is your gender?</h3>
                        <asp:RadioButtonList runat="server" ID="aspx_diver_gender">
                            <asp:ListItem Text="Male" Value="male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="female"></asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true"  ErrorMessage="select your gender" ControlToValidate="aspx_diver_gender"></asp:RequiredFieldValidator>
                </section>
                <section>
                    <h3>How experienced was the diver?</h3>
                    <asp:DropDownList runat="server" ID="aspx_diver_experienced">
                        <asp:ListItem Text="Student" Value="Student"></asp:ListItem>
                        <asp:ListItem Text="Instructor" Value="instructor"></asp:ListItem>
                        <asp:ListItem Text="Recreationalist" Value="recreationalist"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please select an option related to you" ControlToValidate="aspx_diver_experienced"></asp:RequiredFieldValidator>
                </section>
                 <section>
                   <h3>Give the name of dive site</h3>
				        <asp:CheckBoxList ID="aspx_incident_dive_site" runat="server">
                        <asp:ListItem Text="Lake" Value="lake"></asp:ListItem>
                        <asp:ListItem Text="Ocean" Value="ocean"></asp:ListItem>
                        <asp:ListItem Text="Boat" Value="boat"></asp:ListItem>
                        <asp:ListItem Text="Shore" Value="shore"></asp:ListItem>                                                                                                                                                                                                                                                                                                                                                                        
                    </asp:CheckBoxList>
                </section>
                <section>
                    <h3>Tell us about near-misses, injuries, fatalities that you have witnessed or experienced?</h3>
                    <asp:RadioButtonList runat="server" ID="aspx_incident_type_factors">
                            <asp:ListItem Text="Whale attack" Value="Whale attack"></asp:ListItem>
                            <asp:ListItem Text="Faulty equipment" Value="Faulty equipment"></asp:ListItem>
                            <asp:ListItem Text="Infection" Value="Infection"></asp:ListItem>
                            <asp:ListItem Text="Minor bruises" Value="Minor bruises"></asp:ListItem>
                            <asp:ListItem Text="lack of proper guidance" Value="lack of proper guidance"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true"  ErrorMessage="Select your incident type factor" ControlToValidate="aspx_incident_type_factors"></asp:RequiredFieldValidator>
                </section>
                <section>
                    <asp:ValidationSummary runat="server" ShowSummary="true" />
                </section>
				<section id="confirmbox" runat="server">
				</section>
				<section>
                    <input type="submit" value="submit" />
				</section>
			</div>
        </main>
    </form>
</body>
</html>
       
