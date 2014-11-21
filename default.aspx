<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<%@ Register Assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.DynamicData" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" method="post" runat="server">
    <div>
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    Name:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="Name"  runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Enter Name" ValidationGroup="Button1" ControlToValidate="Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                &nbsp;
                </asp:TableCell>
                <asp:TableCell>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Email Id:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="EmailId"  runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Enter EmailId" ValidationGroup="Button1" ControlToValidate="EmailId"  ForeColor="Red"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*Enter Proper EmailId" ControlToValidate="EmailId" ValidationGroup="Button1" ValidationExpression="^[a-z][a-z|0-9|]*([_][a-z|0-9]+)*([.][a-z|0-9]+([_][a-z|0-9]+)*)?@[a-z][a-z|0-9|]*\.([a-z][a-z|0-9]*(\.[a-z][a-z|0-9]*)?)$" ForeColor="Red">
                    </asp:RegularExpressionValidator>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    Contact No:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="ContactNo" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Enter Contact No" ForeColor="Red" ControlToValidate="ContactNo" ValidationGroup="Button1"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Enter Proper Data" ForeColor="Red" ControlToValidate="ContactNo" ValidationGroup="Button1" ValidationExpression="^[+]?[0-9]+$" ></asp:RegularExpressionValidator>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    Upload Your Image Here:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:FileUpload ID="FileUpload1" runat="server"  />      
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow >
                <asp:TableCell >
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="reset" OnClick="Button2_click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Display" OnClick="Button3_click" />
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Lable1" runat="server"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            </asp:Table>

    </div>
    </form>
    </body>
</html>



