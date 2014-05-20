package com.tencent.mm.sdk.platformtools;

import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class bc
{
  public static bd gef = null;

  public static String aO(String paramString1, String paramString2)
  {
    Object localObject;
    if ((cj.hX(paramString1)) || (cj.hX(paramString2)))
      localObject = paramString2;
    while (true)
    {
      return localObject;
      if (gef == null)
        gef = new bd();
      be localbe;
      bf localbf;
      label345: label490: 
      do
      {
        StringBuffer localStringBuffer2;
        int n;
        do
        {
          Iterator localIterator1 = gef.geg.iterator();
          Iterator localIterator2;
          while (!localIterator2.hasNext())
          {
            do
            {
              if (!localIterator1.hasNext())
                break;
              localbe = (be)localIterator1.next();
            }
            while ((localbe.gei == null) || (!paramString1.trim().toLowerCase().equals(localbe.gei.trim().toLowerCase())) || (localbe.gel == null));
            localObject = sL(paramString2);
            if ((localObject != null) && (((String)localObject).length() > localbe.gej))
              break;
            localIterator2 = localbe.gel.iterator();
          }
          localbf = (bf)localIterator2.next();
          if (!cj.hX(localbf.gem))
            break label490;
          if (localbe.gel.size() <= 1)
            break label345;
          localStringBuffer2 = new StringBuffer();
          localStringBuffer2.append((String)localObject);
          n = ((String)localObject).length();
        }
        while (n > ad(localbf.geo, localbe.gek));
        while (localStringBuffer2.toString().length() < localbe.gek)
          localStringBuffer2.append("0");
        String str2 = v(localbf.geo, localbf.gen, localStringBuffer2.toString());
        int i1 = 0;
        localObject = str2;
        int i2 = 0;
        while (i1 < ((String)localObject).length())
        {
          int i3 = ((String)localObject).charAt(i1);
          if (i2 >= n)
            localObject = ((String)localObject).substring(0, i1);
          if ((i3 != 32) && (i3 != 45) && (i3 != 12290))
            i2++;
          i1++;
        }
        break;
        StringBuffer localStringBuffer3 = new StringBuffer();
        localStringBuffer3.append((String)localObject);
        int i4 = ((String)localObject).length();
        while (localStringBuffer3.toString().length() < localbe.gek)
          localStringBuffer3.append("0");
        String str3 = v(localbf.geo, localbf.gen, localStringBuffer3.toString());
        int i5 = 0;
        int i6 = 0;
        while (i5 < str3.length())
        {
          int i7 = str3.charAt(i5);
          if (i6 >= i4)
            str3 = str3.substring(0, i5);
          if ((i7 != 32) && (i7 != 45) && (i7 != 12290))
            i6++;
          i5++;
        }
        return str3;
      }
      while (!Pattern.compile(localbf.gem).matcher((CharSequence)localObject).lookingAt());
      StringBuffer localStringBuffer1 = new StringBuffer();
      localStringBuffer1.append((String)localObject);
      int i = ((String)localObject).length();
      while (localStringBuffer1.toString().length() < localbe.gek)
        localStringBuffer1.append(((String)localObject).charAt(i - 1));
      String str1 = v(localbf.geo, localbf.gen, localStringBuffer1.toString());
      int j = 0;
      localObject = str1;
      int k = 0;
      while (j < ((String)localObject).length())
      {
        int m = ((String)localObject).charAt(j);
        if (k >= i)
          localObject = ((String)localObject).substring(0, j);
        if ((m != 32) && (m != 45) && (m != 12290))
          k++;
        j++;
      }
    }
    return paramString2;
  }

  private static int ad(String paramString, int paramInt)
  {
    Pattern localPattern = Pattern.compile(paramString);
    String str = "1";
    for (int i = 0; (i < paramInt) && (!localPattern.matcher(str).find()); i++)
      str = str + "1";
    return i + 1;
  }

  public static String sK(String paramString)
  {
    String str = sL(paramString).replace("+", "");
    if (gef == null)
      gef = new bd();
    Iterator localIterator = gef.geg.iterator();
    while (localIterator.hasNext())
    {
      be localbe = (be)localIterator.next();
      if (str.startsWith(localbe.gei))
      {
        int i = str.length() - localbe.gei.length();
        if ((i >= localbe.gej) && (i <= localbe.gek))
          return localbe.gei;
      }
    }
    return null;
  }

  public static String sL(String paramString)
  {
    if (cj.hX(paramString))
      return "";
    return paramString.replaceAll("[\\.\\-\\ ]", "").trim();
  }

  private static String v(String paramString1, String paramString2, String paramString3)
  {
    Pattern localPattern = Pattern.compile(paramString1);
    String str = "";
    Matcher localMatcher = localPattern.matcher(paramString3);
    if (localMatcher.find())
      str = localMatcher.replaceAll(paramString2);
    return str;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.bc
 * JD-Core Version:    0.6.2
 */