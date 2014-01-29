using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cloudapp
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            switch (ddlOperation.SelectedItem.Value)
            {
                case "1": CheckPrime(txtNumber.Text); break;
                //case "2": CheckFibonacci(txtNumber.Text); break;
                case "3": CheckOddEven(txtNumber.Text); break;
                case "4": CheckArmstrong(txtNumber.Text); break;
                default:
                    break;
            }
        }

        private void CheckArmstrong(string p)
        {
            int numberToCheck = int.Parse(p);
            int lenthOfNumber = numberToCheck.ToString().Length;
            double reminder = 0;
            double sum = 0;
            int tempNo = numberToCheck;
            while (tempNo > 0)
            {
                reminder = tempNo % 10;
                sum = sum + Math.Pow(reminder, lenthOfNumber);
                tempNo = tempNo / 10;
            }
            if (sum == numberToCheck)
            {
                lblMessage.Text= String.Format("The given Number {0} is a Armstrong Number", numberToCheck);
            }
            else
            {
                lblMessage.Text = String.Format("The given Number {0} is NOT a Armstrong Number", numberToCheck);
            }
        }
        

        private void CheckOddEven(string p)
        {
             long number = long.Parse(p);
           
                if (number % 2 == 0)                
                    lblMessage.Text = p + " Number is even number";                   
                else 
                     lblMessage.Text = p + " Number is odd number";
        }    

       
        

        private void CheckPrime(string p)
        {
            long number = long.Parse(p);


            for (int i = 2; i < number; i++)
            {
                if (number % i == 0)
                {
                    lblMessage.Text = p + " Number is not a prime number";
                    return;
                }
            }

            lblMessage.Text = p + " Number is a prime number";
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}
