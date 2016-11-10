/*
 * THIS CODE IS MY OWN WORK, IT WAS WRITTEN WITHOUT CONSULTING A TUTOR   
 * OR CODE WRITTEN BY OTHER STUDENTS 
 * Code provided by the instructor was used per instruction of the homework
 *- Yiyang Zhao
 */
import java.util.Arrays;

public class Nano
{
   public static char[] digit 
            = {'#', '!', '%', '@', '(', ')', '[', ']', '$'};

   /* ==========================================================
      Return the 2's complement binary representation for the
      Nano number given in String s
      ========================================================== */
   public static int parseNano(String s)
   {
      /* ------------------------------------------------------------------
         This loop checks if the input contains an illegal (non-Nano) digit
         ------------------------------------------------------------------ */
      for (int i = 0 ; i < s.length(); i++)
      {
         int j = 0;
         while ( j < digit.length )
         {
            if ( s.charAt(i) == digit[j] || s.charAt(i) == '-' )
            {
               break;
            }

            j++;
         }

         if ( j >= digit.length )
         {
            System.out.println("Illegal nano digit found in input: " 
					+ s.charAt(i) );
            System.out.println("A Nano digit must be one of these: " 
				+ Arrays.toString (digit) );
            System.exit(1);
         }
      }

      // Write the parseNano() code here
      
      int dec = 0;
      
      boolean neg = false;
      
      //This loop gets the digits from back to front
      for (int i=0; i<s.length(); i++)
      {
    	
    	
    	//This loop identifies each digit
    	for (int j = 0; j<=8; j++)
    	{
    		if (s.charAt(i) == digit[j]) {dec = j+dec*9;}
    		
    	}
    	
    	
      }
      if (s.charAt(0) == '-') {dec = -dec; }
       
      return dec;
      
   }
   

   /* ==========================================================
      Return the String of Nano digit that represent the value
      of the 2's complement binary number given in 
      the input parameter 'value'
      ========================================================== */
   public static String toString(int value)
   {
      // Write the toString() code here
	   if (value == 0 ) return "#";
	   String duang = "";
	   boolean neg = false;
	   if (value < 0) {neg = true; value = -value;} 
	   
	   while (value != 0)
	   {
		   //each time the dec number is divided by nine and the remainder is collected and converted
		   duang = digit[value%9] + duang;
		   value = value / 9;
	   }
	   if (neg) duang = "-"+duang;
	   return duang;
   }
  

}

