package com.tencent.mm.plugin.ext.a;

import java.io.ByteArrayInputStream;
import java.io.ObjectInputStream;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;

public final class a
{
  private static SecretKey dfr = null;
  private static char[] dfs = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };

  private static void Mn()
  {
    try
    {
      if (dfr == null)
      {
        ObjectInputStream localObjectInputStream = new ObjectInputStream(new ByteArrayInputStream(jv("aced00057372001f6a617661782e63727970746f2e737065632e5365637265744b6579537065635b470b66e230614d0200024c0009616c676f726974686d7400124c6a6176612f6c616e672f537472696e673b5b00036b65797400025b427870740003414553757200025b42acf317f8060854e0020000787000000010402a2173bd6f2542e5e71ee414b2e1e8")));
        dfr = (SecretKey)localObjectInputStream.readObject();
        localObjectInputStream.close();
      }
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static String V(long paramLong)
  {
    byte[] arrayOfByte = encrypt(String.valueOf(paramLong));
    if (arrayOfByte == null)
      return null;
    StringBuilder localStringBuilder = new StringBuilder(2 * arrayOfByte.length);
    for (int i = 0; i < arrayOfByte.length; i++)
    {
      localStringBuilder.append(dfs[((0xF0 & arrayOfByte[i]) >>> 4)]);
      localStringBuilder.append(dfs[(0xF & arrayOfByte[i])]);
    }
    return localStringBuilder.toString();
  }

  private static byte[] encrypt(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
      return null;
    Mn();
    Cipher localCipher = Cipher.getInstance("AES");
    localCipher.init(1, dfr);
    return localCipher.doFinal(paramString.getBytes("UTF8"));
  }

  private static String jt(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
      return null;
    Mn();
    Cipher localCipher = Cipher.getInstance("AES");
    localCipher.init(2, dfr);
    return new String(localCipher.doFinal(jv(paramString)), "UTF8");
  }

  public static long ju(String paramString)
  {
    return Long.valueOf(jt(paramString).trim()).longValue();
  }

  private static byte[] jv(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
      return null;
    byte[] arrayOfByte = new byte[paramString.length() / 2];
    for (int i = 0; i < arrayOfByte.length; i++)
      arrayOfByte[i] = ((byte)Integer.parseInt(paramString.substring(i * 2, 2 + i * 2), 16));
    return arrayOfByte;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.a.a
 * JD-Core Version:    0.6.2
 */