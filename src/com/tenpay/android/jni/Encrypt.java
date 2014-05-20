package com.tenpay.android.jni;

public class Encrypt
{
  private static final String CHARSET = "UTF-8";
  private byte[] dec_buf;
  private byte[] enc_buf;
  private byte[] enc_passwd;
  private byte[] key_buf;
  private byte[] raw_buf;
  private byte[] raw_passwd;
  private String server_time_stamp = "0";
  private int time_stamp;

  static
  {
    try
    {
      System.loadLibrary("tenpay_utils");
      return;
    }
    catch (Throwable localThrowable)
    {
    }
  }

  private native boolean decrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2);

  private native boolean encrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2);

  private native boolean encryptPasswd(byte[] paramArrayOfByte);

  private native boolean encryptVerifyCode(byte[] paramArrayOfByte);

  public String a(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0));
    while (true)
    {
      try
      {
        this.raw_buf = paramString.getBytes("UTF-8");
        encrypt(null, this.raw_buf);
        if (this.enc_buf == null)
          return null;
        try
        {
          str = new String(this.enc_buf, "UTF-8");
          return str;
        }
        catch (Exception localException2)
        {
          return null;
        }
      }
      catch (Exception localException1)
      {
        return null;
      }
      String str = null;
    }
  }

  public String b(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0));
    while (true)
    {
      try
      {
        this.raw_buf = paramString.getBytes("UTF-8");
        encryptVerifyCode(this.raw_buf);
        if (this.enc_buf == null)
          return null;
        try
        {
          str = new String(this.enc_buf, "UTF-8");
          return str;
        }
        catch (Exception localException2)
        {
          return null;
        }
      }
      catch (Exception localException1)
      {
        return null;
      }
      String str = null;
    }
  }

  public void c(String paramString)
  {
    this.server_time_stamp = paramString;
  }

  public String d(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0));
    while (true)
    {
      try
      {
        this.raw_passwd = paramString.getBytes("UTF-8");
        encryptPasswd(this.raw_passwd);
        if (this.enc_passwd == null)
          return null;
        try
        {
          str = new String(this.enc_passwd, "UTF-8");
          return str;
        }
        catch (Exception localException2)
        {
          return null;
        }
      }
      catch (Exception localException1)
      {
        return null;
      }
      String str = null;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tenpay.android.jni.Encrypt
 * JD-Core Version:    0.6.2
 */