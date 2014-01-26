using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _1dv406_1_2_kassakvitto.Model
{
    public class Receipt
    {
        // Privat fält
        private double _subtotal;

        // Egenskap som representerar rabatten i procent
        public double DiscountRate {get; private set;}

        // Egenskap som representerar rabatten i kronor
        public double MoneyOff {get; private set;}

        // Egenskap som representerar den totala köpesumman 
        public double Subtotal
        {
            get 
            {
                return _subtotal;
            }
            set
            {
                if (_subtotal <= 0.0)
                {
                    throw new ArgumentOutOfRangeException("Måste vara ett tal större än 0");
                }
                _subtotal = value;
            }
        }

        // Egenskap som representerar beloppt efter att rabatten dragits 
        // från den totala köpesumman
        public double Total {get; private set;}

        // Metod som beräknar rabatten och totalt att betala
        public void Calculate(double subtotal)
        {
            Subtotal = subtotal;

            if (Subtotal < 500)
            {
                DiscountRate = 0;
            }
            else if (Subtotal < 1000)
            {
                DiscountRate = 0.05;
            }
            else if (Subtotal < 5000)
            {
                DiscountRate = 0.10;
            }
            else
            {
                DiscountRate = 0.15;
            }

            MoneyOff = Subtotal * DiscountRate;
            Total = Subtotal - MoneyOff;
        }

        // Konstruktor
        public Receipt(double subtotal)
        {
            Calculate(subtotal);
        }
    }
}