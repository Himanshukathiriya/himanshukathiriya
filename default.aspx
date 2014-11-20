<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Table ID="Table1" CaptionAlign="Bottom"  runat="server" BackColor="red" BorderStyle="Groove"  
        BorderColor="yellow" style="margin-bottom: 21px" Height="184px" 
        Width="451px" BorderWidth="5px" Caption="Calculater">
        <asp:TableRow >
        
        <asp:TableCell>
        <asp:Label ID="Label1" runat="server" Text="Value1"></asp:Label>
        </asp:TableCell>
        
        <asp:TableCell>
        <asp:TextBox ID="TextBox1"  runat="server" ></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ForeColor="blue" ErrorMessage="*Enter Value1"></asp:RequiredFieldValidator>
        </asp:TableCell>
        <asp:TableCell>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ForeColor="Blue" ValidationExpression="^[-+]?[0-9]*\.?[0-9]+$" ErrorMessage="*Enter numeric value only"></asp:RegularExpressionValidator>
            
        </asp:TableCell>

        </asp:TableRow>
        
        <asp:TableRow>
        
        <asp:TableCell>
        <asp:Label ID="Label2" runat="Server" Text="Value2"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
        <asp:TextBox ID="TextBox2"  runat="server" ></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server"  ForeColor="Blue" ErrorMessage="*Enter Value2"></asp:RequiredFieldValidator>
        </asp:TableCell>
         <asp:TableCell>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ForeColor="Blue" ValidationExpression="^[-+]?[0-9]*\.?[0-9]+$" ErrorMessage="*Enter numeric value only"></asp:RegularExpressionValidator>
            
        </asp:TableCell>
        </asp:TableRow>
        
        <asp:TableRow >

        <asp:TableCell ColumnSpan="2" >
        <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_click"/>
            
        <asp:Button ID="Button2" runat="server" Text="Subtract" onclick="Button2_click"/>
                        
        <asp:Button ID="Button3" runat="server" Text="Multiply" onclick="Button3_click"/>
            
        <asp:Button ID="Button4" runat="server" Text="Devide" onclick="Button4_click"/>
        </asp:TableCell>
        </asp:TableRow>
        
        <asp:TableRow>
        <asp:TableCell>
            <asp:Label runat="server" Text="Reselt"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="TextBox3"  runat="server"></asp:TextBox>
        </asp:TableCell>
        </asp:TableRow>

     </asp:Table>
    
    </form>
</body>
</html>
