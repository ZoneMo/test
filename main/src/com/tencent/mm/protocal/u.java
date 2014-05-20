package com.tencent.mm.protocal;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class u
{
  private String dtk = "";
  private int port = 80;
  private int type = 0;

  public u()
  {
  }

  public u(int paramInt1, String paramString, int paramInt2)
  {
    this.type = paramInt1;
    this.dtk = paramString;
    this.port = paramInt2;
  }

  public static v aJ(String paramString1, String paramString2)
  {
    aa.d("MicroMsg.MMBuiltInIP", "parsing network control params:");
    aa.d("MicroMsg.MMBuiltInIP", "ports = " + paramString1);
    aa.d("MicroMsg.MMBuiltInIP", "timeouts = " + paramString2);
    int[] arrayOfInt1 = cj.sR(paramString1);
    int[] arrayOfInt2 = cj.sR(paramString2);
    if ((arrayOfInt2 == null) || (arrayOfInt2.length < 2))
    {
      arrayOfInt2 = new int[] { 0, 0 };
      aa.e("MicroMsg.MMBuiltInIP", "invalid timeouts");
    }
    return new v(arrayOfInt1, (int)(1000L * arrayOfInt2[0]), (int)(1000L * arrayOfInt2[1]));
  }

  public static String an(List paramList)
  {
    Iterator localIterator = paramList.iterator();
    u localu;
    for (String str = ""; localIterator.hasNext(); str = str + localu.toString() + "|")
      localu = (u)localIterator.next();
    return str;
  }

  private static u rs(String paramString)
  {
    String[] arrayOfString = paramString.split(",");
    if (arrayOfString.length < 3)
      return null;
    u localu = new u();
    try
    {
      localu.type = Integer.parseInt(arrayOfString[0]);
      localu.dtk = cj.hW(arrayOfString[1]);
      localu.port = Integer.parseInt(arrayOfString[2]);
      return localu;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return null;
  }

  public static List rt(String paramString)
  {
    LinkedList localLinkedList = new LinkedList();
    if (cj.hX(paramString));
    while (true)
    {
      return localLinkedList;
      try
      {
        String[] arrayOfString = paramString.split("\\|");
        int i = arrayOfString.length;
        for (int j = 0; j < i; j++)
        {
          u localu = rs(arrayOfString[j]);
          if (localu != null)
            localLinkedList.add(localu);
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.MMBuiltInIP", "unserialize split failed str[%s]", new Object[] { paramString });
      }
    }
    return localLinkedList;
  }

  public static String[] ru(String paramString)
  {
    LinkedList localLinkedList = new LinkedList();
    if (cj.hX(paramString))
      return (String[])localLinkedList.toArray(new String[0]);
    try
    {
      String[] arrayOfString = paramString.split("\\|");
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
      {
        u localu = rs(arrayOfString[j]);
        if (localu != null)
          localLinkedList.add(localu.dtk);
      }
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.MMBuiltInIP", "unserializeToStringArray split failed str[%s]", new Object[] { paramString });
    }
    return (String[])localLinkedList.toArray(new String[0]);
  }

  public final String awK()
  {
    return this.dtk;
  }

  public final String toString()
  {
    return this.type + "," + this.dtk + "," + this.port;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.u
 * JD-Core Version:    0.6.2
 */