
class List
{
   int  value;
   List next;
}

public class HelpList
{
   /* =====================================================
      InsertList(h,e): write teh algorithm in Java first !

      Compile with:  javac HelpList.java
      Run with:      java HelpList

      Correct output:
			List = 30
			List = 10 30
			List = 10 30 50
			List = 10 20 30 50
			List = 10 20 30 40 50
      ===================================================== */
   public static List InsertList(List h, List e)
   {


   }

   public static void main(String[] args)
   {
      int[] v = {30, 50, 10, 40, 20};
      List head = null;
      List elem;

      for ( int i = 0; i < v.length; i++ )
      {
         elem = new List(); 
         elem.value = v[i];
         head = InsertList(head, elem);
         System.out.print("List = ");
         PrintList( head );
         System.out.println();
      }
   }

   public static void PrintList(List h)
   {
      if ( h == null )
         return;
      else
      {
	 System.out.print(h.value + " ");
	 PrintList(h.next);
      }
   }
}

