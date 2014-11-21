<% @ Page Language="C#" AutoEventWireup="true" CodeFile="Display_Data.aspx.cs" Inherits="test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView" runat="server" GridLines="None" AutoGenerateColumns="False"

      AlternatingRowStyle-BackColor="#EEEEEE" EditRowStyle-BorderColor="Red"

      onrowcancelingedit="GridView_RowCancelling" 

      onrowdeleting="GridView_RowDeleting" onrowediting="GridView_RowEditing"

      onrowupdating="GridView_RowUpdating" DataKeyNames="ID" CellPadding="4" 
            ForeColor="#333333">           

<AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

      <Columns>           

         <asp:TemplateField Visible="false" HeaderText="ID">

            <ItemTemplate>

              <asp:Label runat="server" ID="ID" Text='<%#Eval("ID")%>' />

            </ItemTemplate>

         </asp:TemplateField>

         <asp:TemplateField HeaderText="Name">
               <ItemTemplate>

              <asp:Label runat="server" ID="Name" Text='<%#Eval("Name") %>' />

         </ItemTemplate>
         <EditItemTemplate>

            <asp:TextBox runat="server" ID="txtName"  Text='<%#Eval("Name") %>' />

            <asp:RequiredFieldValidator runat="server" ID="rfdName" ControlToValidate="txtName" ValidationGroup="imgbtnUpdate" ErrorMessage="*" />

         </EditItemTemplate>

         </asp:TemplateField>

         <asp:TemplateField HeaderText="EmailId">

            <ItemTemplate>

              <asp:Label runat="server" ID="EmailId" Text='<%#Eval("EmailId") %>' />

            </ItemTemplate>

            <EditItemTemplate>

              <asp:TextBox runat="server" ID="txtEmailId" Text='<%#Eval("EmailId") %>' />

              <asp:RequiredFieldValidator runat="server" ID="rfdEmailId"  ControlToValidate="txtEmailId" ValidationGroup="imgbtnUpdate" ErrorMessage="*" />

            </EditItemTemplate>

         </asp:TemplateField>

         <asp:TemplateField HeaderText="ContactNo">
            <ItemTemplate>

                <asp:Label  ID="ContactNo" runat="server" Text='<%#Eval("ContactNo") %>' />

           </ItemTemplate>

           <EditItemTemplate>

             <asp:TextBox runat="server" ID="txtContactNo" Text='<%#Eval("ContactNo") %>' />

             <asp:RequiredFieldValidator runat="server" ID="rfdContactNo" ControlToValidate="txtContactNo" ValidationGroup="imgbtnUpdate" ErrorMessage="*" />

           </EditItemTemplate>

          </asp:TemplateField>

          <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="Image" runat="server" ImageUrl='<%#Eval("Image") %>' Height="50" Width="50" />
            </ItemTemplate>
          </asp:TemplateField>

      <asp:TemplateField HeaderText="Action">

      <ItemTemplate>

      <asp:ImageButton ID="imgbtnEdit"  runat="server" Height="25px" Width="25px" ImageUrl="~/Edit_img.jpg" CommandName="Edit" />
      
      <asp:ImageButton ID="imgbtnDelete"  runat="server" Height="25px" Width="25px" ImageUrl="~/Delete_img.jpg" CommandName="Delete" />
      </ItemTemplate>

      <EditItemTemplate>

      <asp:ImageButton ID="imgbtnUpdate" Height="25px" Width="25px" runat="server" ImageUrl="~/Update_img.jpg" CommandName="Update" />

      <asp:ImageButton ID="imgbtnCancel" Height="25px" Width="25px" runat="server" ImageUrl="~/Calcel_img.jpg" CommandName="Cancel" />

      </EditItemTemplate>

 

      </asp:TemplateField>

 

   </Columns>

<EditRowStyle BorderColor="Red"></EditRowStyle>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />

</asp:GridView>

        
    </div>
    </form>
</body>
</html>
