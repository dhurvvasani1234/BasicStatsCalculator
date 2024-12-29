using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // clear ErrorLabel
            ErrorLabel.Visible = false;
            ErrorLabel.Text = "";

            // clear results
            MaximumLabel.Text = "";
            MinimumLabel.Text = "";
            AverageLabel.Text = "";
            TotalLabel.Text = "";
        }

        protected void calculateButtonClick(object sender, EventArgs e)
        {
            // clear ErrorLabel
            ErrorLabel.Visible = false;
            ErrorLabel.Text = "";

            if (FirstNumber.Text == "")
            {
                // set ErrorLabel
                ErrorLabel.Visible = true;
                ErrorLabel.Text = "Please enter values to find out statistics";
            }
            else
            {
                try
                {
                    int firstNumber = int.Parse(FirstNumber.Text);
                    int secondNumber = int.Parse(SecondNumber.Text);
                    int thirdNumber = int.Parse(ThirdNumber.Text);

                    // find maximum number
                    int max = FindMaximum(firstNumber, secondNumber, thirdNumber);
                    MaximumLabel.Text = max.ToString();

                    // find minimum number
                    int min = FindMinimum(firstNumber, secondNumber, thirdNumber);
                    MinimumLabel.Text = min.ToString();

                    // find average
                    double average = (Convert.ToDouble(firstNumber) + Convert.ToDouble(secondNumber) + Convert.ToDouble(thirdNumber))/3;
                    AverageLabel.Text = Math.Round(average, 2).ToString();

                    TotalLabel.Text = (firstNumber + secondNumber + thirdNumber).ToString();
                }
                catch (Exception ex)
                {
                    // set error
                    ErrorLabel.Visible = true;
                    ErrorLabel.Text = ex.Message;
                }
            }
        }

        protected int FindMaximum(int FirstNumber, int SecondNumber, int ThirdNumber)
        {
            int maximum;

            if (FirstNumber > SecondNumber)
            {
                maximum = FirstNumber;
            } else
            {
                maximum = SecondNumber;
            }

            if (ThirdNumber > maximum)
            {
                maximum = ThirdNumber;
            }

            return maximum;
        }

        protected int FindMinimum(int FirstNumber, int SecondNumber, int ThirdNumber)
        {
            int minimum;

            if (FirstNumber < SecondNumber)
            {
                minimum = FirstNumber;
            } else
            {
                minimum = SecondNumber;
            }

            if (ThirdNumber < minimum)
            {
                minimum = ThirdNumber;
            }

            return minimum;
        }
    }
}