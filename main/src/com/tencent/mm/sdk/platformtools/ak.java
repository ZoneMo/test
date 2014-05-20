package com.tencent.mm.sdk.platformtools;

import com.tencent.mm.a.f;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class ak
{
  protected static char[] gdC = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  protected static MessageDigest gdD = null;

  static
  {
    try
    {
      gdD = MessageDigest.getInstance("MD5");
      return;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
    }
  }

  @Deprecated
  public static String i(File paramFile)
  {
    return f.c(paramFile);
  }

  public static String sC(String paramString)
  {
    byte[] arrayOfByte1 = paramString.getBytes();
    gdD.update(arrayOfByte1);
    byte[] arrayOfByte2 = gdD.digest();
    int i = arrayOfByte2.length;
    StringBuffer localStringBuffer = new StringBuffer(i * 2);
    int j = i + 0;
    for (int k = 0; k < j; k++)
    {
      int m = arrayOfByte2[k];
      char c1 = gdC[((m & 0xF0) >> 4)];
      char c2 = gdC[(m & 0xF)];
      localStringBuffer.append(c1);
      localStringBuffer.append(c2);
    }
    return localStringBuffer.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.ak
 * JD-Core Version:    0.6.2
 */