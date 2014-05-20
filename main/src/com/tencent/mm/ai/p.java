package com.tencent.mm.ai;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.FileInputStream;

public final class p
{
  public static boolean gQ(String paramString)
  {
    aa.d("MicroMsg.VideoFile", " filepath " + paramString);
    if (cj.hX(paramString));
    while (true)
    {
      return false;
      try
      {
        FileInputStream localFileInputStream = new FileInputStream(paramString);
        byte[] arrayOfByte = new byte[10];
        localFileInputStream.read(arrayOfByte, 0, arrayOfByte.length);
        String str = w(arrayOfByte).toUpperCase();
        localFileInputStream.close();
        aa.d("MicroMsg.VideoFile", "file type " + str);
        if (str.contains("00000014667479707174"))
        {
          aa.d("MicroMsg.VideoFile", "file type qt ");
          return true;
        }
      }
      catch (Exception localException)
      {
      }
    }
    return false;
  }

  private static String w(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length <= 0))
      return null;
    for (int i = 0; i < paramArrayOfByte.length; i++)
    {
      String str = Integer.toHexString(0xFF & paramArrayOfByte[i]);
      if (str.length() < 2)
        localStringBuilder.append(0);
      localStringBuilder.append(str);
    }
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ai.p
 * JD-Core Version:    0.6.2
 */