<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="N01331772_assignment1A.WebForm1" %>

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
                    <label>Please provide name and address of the place where the incident occured?</label>
                    <asp:TextBox runat="server" ID="aspx_incident_place" ></asp:TextBox>
                </section>
                <section>
                 
                    <h3>What is your age?</h3>
                    <div>
                       
                        <asp:DropDownList runat="server" ID="aspx_diver_age">
                        <asp:ListItem Text="Minor(less than 18 years)" Value="minor"></asp:ListItem>
                        <asp:ListItem Text="Adult(more than 18years)" Value="Adult"></asp:ListItem>
                    </asp:DropDownList>
                       
                    </div>
                </section>
                <section>
                    <h3>What is your gender?</h3>
                         <asp:RadioButtonList runat="server" ID="aspx_gender">
                            <asp:ListItem Text="Male" Value="malefemale"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="malefemale"></asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true"  ErrorMessage="Enter diver's gender" ControlToValidate="aspx_gender"></asp:RequiredFieldValidator>
                    
                </section>
                <section>
                    <h3>How experienced was the diver?</h3>
                    <asp:DropDownList runat="server" ID="aspx_diver_experienced">
                        <asp:ListItem Text="Student" Value="Student"></asp:ListItem>
                        <asp:ListItem Text="Instructor" Value="instructor"></asp:ListItem>
                        <asp:ListItem Text="Recreationalist" Value="recreationalist"></asp:ListItem>
                    </asp:DropDownList>

                </section>
                <section>
                    <h3>Tell us about near-misses, injuries, fatalities that you have witnessed or experienced?</h3>
                    <asp:CheckBoxList ID="incident_type_factors" runat="server">
                        <asp:ListItem Text="Whale attack" Value="Whale attack"></asp:ListItem>
                        <asp:ListItem Text="Running out of air" Value="Running out of air"></asp:ListItem>
                        <asp:ListItem Text="Infection" Value="Infection"></asp:ListItem>
                        <asp:ListItem Text="Minor bruises" Value="Minor bruises"></asp:ListItem>
                    </asp:CheckBoxList>
                 
                </section>
                <section>
                    <asp:Button Text="Submit" runat="server" />
                </section>
            </div>
         </main>
    </form>
</body>
</html>
       