package com.tencent.mm.storage;

final class aw
{
  public static String[] g(Object[] paramArrayOfObject)
  {
    String[] arrayOfString = new String[paramArrayOfObject.length];
    int i = 0;
    if (i < arrayOfString.length)
    {
      if (!(paramArrayOfObject[i] instanceof String))
        arrayOfString[i] = null;
      while (true)
      {
        i++;
        break;
        arrayOfString[i] = ((String)paramArrayOfObject[i]);
      }
    }
    return arrayOfString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.aw
 * JD-Core Version:    0.6.2
 */