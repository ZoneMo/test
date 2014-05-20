package com.tencent.mm.model;

import com.tencent.mm.sdk.platformtools.cj;

final class cp
{
  private static String decode(String paramString)
  {
    Object localObject;
    if ((cj.hX(paramString)) || (paramString.length() % 2 != 0))
      localObject = "";
    while (true)
    {
      return localObject;
      localObject = "";
      int i = 0;
      try
      {
        while (i < paramString.length())
        {
          String str = (String)localObject + (char)Integer.parseInt(paramString.substring(i, i + 2), 16);
          i += 2;
          localObject = str;
        }
      }
      catch (Exception localException)
      {
      }
    }
    return "";
  }

  private static String encode(String paramString)
  {
    char[] arrayOfChar = paramString.toCharArray();
    Object localObject;
    try
    {
      int i = arrayOfChar.length;
      localObject = "";
      int j = 0;
      while (j < i)
      {
        int k = arrayOfChar[j];
        StringBuilder localStringBuilder = new StringBuilder().append((String)localObject);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(k);
        String str = String.format("%02x", arrayOfObject);
        j++;
        localObject = str;
      }
    }
    catch (Exception localException)
    {
      localObject = "";
    }
    return localObject;
  }

  public static boolean u(String paramString1, String paramString2)
  {
    if (cj.hX(paramString1));
    String str;
    do
    {
      return true;
      str = decode(encode(paramString1));
    }
    while ((cj.hX(str)) || (!str.equals(paramString2)));
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.cp
 * JD-Core Version:    0.6.2
 */