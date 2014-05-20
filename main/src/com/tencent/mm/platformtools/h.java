package com.tencent.mm.platformtools;

public final class h
{
  public static String hI(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString.trim())))
      return paramString;
    char[] arrayOfChar = paramString.toCharArray();
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    int j = arrayOfChar.length;
    while (i < j)
    {
      String str = SpellMap.j(arrayOfChar[i]);
      if (str != null)
        localStringBuffer.append(str);
      i++;
    }
    return localStringBuffer.toString();
  }

  public static String hJ(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString.trim())))
      return paramString;
    char[] arrayOfChar = paramString.toCharArray();
    StringBuffer localStringBuffer = new StringBuffer();
    int i = arrayOfChar.length;
    for (int j = 0; j < i; j++)
      if (!Character.isSpace(arrayOfChar[j]))
      {
        String str = SpellMap.j(arrayOfChar[j]);
        if ((str != null) && (str.length() > 0))
          localStringBuffer.append(str.charAt(0));
      }
    return localStringBuffer.toString().toUpperCase();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.h
 * JD-Core Version:    0.6.2
 */