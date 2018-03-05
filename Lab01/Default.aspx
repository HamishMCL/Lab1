<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: ">
            <h1>Calculator</h1>
            <br />
            <br />
     
            <asp:Label ID="operand1" runat="server" Text="Operand 1"></asp:Label>
            :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="firstOp" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="firstOp" ErrorMessage="Number is Out of Range Must be between 0 and 1,000,000" ForeColor="Red" MaximumValue="1000000" MinimumValue="1" Type="Double" SetFocusOnError="True"></asp:RangeValidator>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Must be a number" ForeColor="Red" ControlToValidate="firstOp" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
            <br />
            Operator:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="operatorList" runat="server" >
                <asp:ListItem Value="plus">+</asp:ListItem>
                <asp:ListItem Value="subtract">-</asp:ListItem>
                <asp:ListItem Value="multiply">*</asp:ListItem>
                <asp:ListItem Value="divide">/</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Operand 2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="secondOp" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="secondOp" ErrorMessage="Number is Out of Range Must be between 0 and 1,000,000" ForeColor="Red" MaximumValue="1000000" MinimumValue="1" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Must be a number" ForeColor="Red" ControlToValidate="secondOp" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
            <br />
            Result:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Clear" CausesValidation="False" OnClick="btnClear_Click" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
