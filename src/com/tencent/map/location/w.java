package com.tencent.map.location;

import android.os.Message;
import com.tencent.a.a.a;
import com.tencent.a.a.c;

final class w extends Thread
{
  private String TX = null;
  private String UK = null;
  private String b = null;

  public w(s params, String paramString)
  {
    this.TX = paramString;
    StringBuilder localStringBuilder = new StringBuilder();
    if (s.i(params) == 0);
    for (String str = "http://lstest.map.soso.com/loc?c=1"; ; str = "http://lbs.map.qq.com/loc?c=1")
    {
      this.b = (str + "&mars=" + s.j(params));
      return;
    }
  }

  private String a(byte[] paramArrayOfByte, String paramString)
  {
    s.a(this.UF, System.currentTimeMillis());
    StringBuffer localStringBuffer = new StringBuffer();
    try
    {
      localStringBuffer.append(new String(paramArrayOfByte, paramString));
      return localStringBuffer.toString();
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final void run()
  {
    Message localMessage = new Message();
    localMessage.what = 8;
    int i;
    try
    {
      byte[] arrayOfByte2 = ad.d(this.TX.getBytes());
      s.a(this.UF, true);
      c localc2 = a.a(this.b, "SOSO MAP LBS SDK", arrayOfByte2);
      s.a(this.UF, false);
      this.UK = a(ad.e(localc2.data), localc2.XZ);
      if (this.UK != null)
      {
        localMessage.arg1 = 0;
        localMessage.obj = this.UK;
      }
      while (true)
      {
        s.mf();
        s.d(this.UF).sendMessage(localMessage);
        return;
        localMessage.arg1 = 1;
      }
    }
    catch (Exception localException1)
    {
      i = 0;
    }
    while (true)
      while (true)
      {
        i++;
        if (i <= 3);
        try
        {
          sleep(1000L);
          byte[] arrayOfByte1 = ad.d(this.TX.getBytes());
          s.a(this.UF, true);
          c localc1 = a.a(this.b, "SOSO MAP LBS SDK", arrayOfByte1);
          s.a(this.UF, false);
          this.UK = a(ad.e(localc1.data), localc1.XZ);
          if (this.UK != null)
          {
            localMessage.arg1 = 0;
            localMessage.obj = this.UK;
          }
          else
          {
            localMessage.arg1 = 1;
            continue;
            s.a(this.UF, false);
            localMessage.arg1 = 1;
          }
        }
        catch (Exception localException2)
        {
        }
      }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.location.w
 * JD-Core Version:    0.6.2
 */