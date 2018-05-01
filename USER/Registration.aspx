<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="REGISTRATION" runat="server" Text="REGISTRATION FORM"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="USERID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtuserid" runat="server" CausesValidation="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="NAME"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Text="USERTYPEID"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>Customer</asp:ListItem>
                    <asp:ListItem>Plumber</asp:ListItem>
                    <asp:ListItem>kadiyo</asp:ListItem>
                    <asp:ListItem>Electrician</asp:ListItem>
                    <asp:ListItem>Home cleaner</asp:ListItem>
                    <asp:ListItem>Beautician</asp:ListItem>
                    <asp:ListItem>Computer Repair</asp:ListItem>
                    <asp:ListItem>Pest Controler</asp:ListItem>
                    <asp:ListItem>laundry</asp:ListItem>
                    <asp:ListItem>watchman</asp:ListItem>
                    <asp:ListItem>Driver</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="ADDRESS1"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtaddress1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="ADDRESS2"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtaddress2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="STATE NAME"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="statename" DataValueField="state_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT * FROM [stateid]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="CITY NAME"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="cityname" DataValueField="city_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT [city_id], [cityname] FROM [cityid]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label19" runat="server" Text="AREA NAME"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource4" DataTextField="areaname" DataValueField="areaid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT [areaid], [areaname], [city_id] FROM [Areamaster]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>PINCODE</td>
            <td>
                <asp:TextBox ID="txtpincode" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpincode" ErrorMessage="6 digit required" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="CONTACT-NO"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcontactno" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtcontactno" ErrorMessage="10 Digit required" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="EMAIL-ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemailid" ErrorMessage="Invalid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label13" runat="server" Text="USERNAME"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Text="PASSWORD"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                <asp:PasswordStrength ID="txtpassword_PasswordStrength" runat="server" Enabled="True" TargetControlID="txtpassword">
                </asp:PasswordStrength>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label15" runat="server" Text="QUETIONID"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="qquestion" DataValueField="question_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT * FROM [quetionid]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label16" runat="server" Text="ANSWER"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtanswer" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label17" runat="server" Text="IMAGE"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

