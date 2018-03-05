using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        firstOp.Focus();
    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {

        if (Page.IsValid)
        {

            var useOP = operatorList.SelectedValue;
            Decimal op1 = Decimal.Parse(firstOp.Text);
            Decimal op2 = Decimal.Parse(secondOp.Text);

            Decimal result = Math.Round(Calculate(op1, useOP, op2), 4);

            lblResult.Text = result.ToString();
        }
        else
        {

        }
        
    }


    private Decimal Calculate(Decimal operand1, string operator1, Decimal operand2)
    {


        switch(operator1)
        {
            case "plus":
               return operand1 + operand2;
               
            case "subtract":
                return operand1 - operand2;
            case "multiply":
                return operand1 * operand2;
            case "divide":
                return operand1  /operand2;
        }

        return 0;
     
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        firstOp.Text = "";
        secondOp.Text = "";
        lblResult.Text = "";
             
    }
}