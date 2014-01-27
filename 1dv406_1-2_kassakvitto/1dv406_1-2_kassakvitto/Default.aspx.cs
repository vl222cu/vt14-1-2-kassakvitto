using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1dv406_1_2_kassakvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            if (IsPostBack) 
            {
                var receipt = new Model.Receipt(double.Parse(MyTextBox.Text));
                MyReceiptPanel.Visible = true;
                TotalLabel.Text = String.Format("Totalt {0,10:c}", receipt.Subtotal);
                DiscountLabel.Text = String.Format("Rabattsats {0,10:p0}", receipt.DiscountRate);
                SavingLabel.Text = String.Format("Rabatt {0,10:c}", receipt.MoneyOff);
                ToPayLabel.Text = String.Format("Att betala {0,10:c}", receipt.Total);
            }
            
        }
    }
}