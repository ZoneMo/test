package com.tencent.mm.storage;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class av
{
  private static String aj(Object paramObject)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject;
    if ((paramObject instanceof byte[]))
    {
      localObject = (byte[])paramObject;
      localStringBuilder.append("##");
    }
    while (true)
    {
      int i = 0;
      while (true)
        if (i < localObject.length)
        {
          String str2 = Integer.toHexString(0xFF & localObject[i]);
          if (str2.length() == 1)
            str2 = "0" + str2;
          localStringBuilder.append(str2);
          i++;
          continue;
          String str1 = paramObject.toString();
          if (cj.hX(str1))
            return "";
          try
          {
            byte[] arrayOfByte = str1.getBytes("UTF-8");
            localObject = arrayOfByte;
            if (!cj.A((byte[])localObject))
              break;
            return "";
          }
          catch (Exception localException)
          {
            return "";
          }
        }
    }
    return localStringBuilder.toString();
  }

  public static String f(Object[] paramArrayOfObject)
  {
    String str = "";
    int i = paramArrayOfObject.length;
    for (int j = 0; j < i; j++)
    {
      Object localObject = paramArrayOfObject[j];
      str = str + aj(localObject) + ",";
    }
    aa.v("MicroMsg.OpLogStorage", "to buffer:" + str);
    return str + ";";
  }

  private static Object vs(String paramString)
  {
    if ((cj.hX(paramString)) || (paramString.length() % 2 != 0))
      return "";
    boolean bool = paramString.startsWith("##");
    if (bool)
      paramString = paramString.replace("##", "");
    byte[] arrayOfByte = new byte[paramString.length() / 2];
    int i = 0;
    while (i < paramString.length())
      try
      {
        arrayOfByte[(i / 2)] = ((byte)Integer.parseInt(paramString.substring(i, i + 2), 16));
        i += 2;
      }
      catch (Exception localException2)
      {
        return "";
      }
    if (bool)
      return arrayOfByte;
    try
    {
      String str = new String(arrayOfByte, "UTF-8");
      return str;
    }
    catch (Exception localException1)
    {
    }
    return "";
  }

  public static Object[] vt(String paramString)
  {
    String[] arrayOfString = paramString.split(",");
    Object[] arrayOfObject = new Object[arrayOfString.length];
    for (int i = 0; i < arrayOfString.length; i++)
      arrayOfObject[i] = vs(arrayOfString[i]);
    return arrayOfObject;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.av
 * JD-Core Version:    0.6.2
 */