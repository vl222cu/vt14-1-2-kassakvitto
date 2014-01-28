<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1dv406_1_2_kassakvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
    <link href="~/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="MyForm" runat="server">
        <div id="maincontainer">
            <h1>
                <asp:Label ID="TitleLabel" runat="server" Text="Kassakvitto"></asp:Label>
            </h1>
            <div id="content">
                <p>
                    <asp:Label ID="TextLabel" runat="server" Text="Total köpesumma:"></asp:Label>
                </p>
                <%-- Textbox och validering --%>
                <p>
                    <asp:TextBox ID="MyTextBox" runat="server"></asp:TextBox>kr
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Textfältet får inte vara tomt!" ControlToValidate="MyTextBox" 
                        Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="Köpesumman måste vara ett tal större än 0" ControlToValidate="MyTextBox" 
                        Type="Double" ValueToCompare="0" Operator="GreaterThan" Display="Dynamic">
                    </asp:CompareValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" 
                        ErrorMessage="För stort belopp eller ogiltigt inmatning" ControlToValidate="MyTextBox" 
                        Type="Double" ValueToCompare="10000000" Operator="LessThan" Display="Dynamic">
                    </asp:CompareValidator>
                </p>
                <p>
                    <asp:Button ID="SendButton" runat="server" Text="Beräkna rabatt" OnClick="SendButton_Click" />
                </p>
                <%-- Kvittolayout --%>
                <asp:Panel ID="MyReceiptPanel" runat="server" Visible="false">
                    <p>
                        <asp:Label ID="ReceiptLabel" runat="server" Text="Vivlas Vitamines"></asp:Label><br />
                        <asp:Label ID="MottoLabel" runat="server" Text="Live life!"></asp:Label>
                    </p>
                    <asp:Label ID="PhoneLabel" runat="server" Text="Tel: 0772-28 80 00"></asp:Label><br />
                    <asp:Label ID="OpeningHoursLabel" runat="server" Text="Öppettider 8:00-18:00"></asp:Label><br />
                    <asp:Label ID="LineLabel" runat="server" Text="-------------------------"></asp:Label><br />
                    <asp:Label ID="TotalTitleLabel" runat="server" Text="Totalt"></asp:Label>                 
                    <asp:Label ID="TotalLabel" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="DiscountTitleLabel" runat="server" Text="Rabattsats"></asp:Label>
                    <asp:Label ID="DiscountLabel" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="SavingTitleLabel" runat="server" Text="Rabatt"></asp:Label>
                    <asp:Label ID="SavingLabel" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="ToPayTitleLabel" runat="server" Text="Att betala"></asp:Label>
                    <asp:Label ID="ToPayLabel" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="EndLineLabel" runat="server" Text="-------------------------"></asp:Label><br />
                    <asp:Label ID="BranschNoLabel" runat="server" Text="ORG.NR: 202100-6271"></asp:Label><br />
                    <asp:Label ID="GreetingsLabel" runat="server" Text="VÄLKOMMEN ÅTER!"></asp:Label>
                </asp:Panel>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        document.getElementById("MyTextBox").focus();
    </script>
</body>
</html>
