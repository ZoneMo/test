package com.tencent.map.location;

import com.tencent.a.a.a;

public final class e extends Thread
{
  public e(c paramc)
  {
  }

  public final void run()
  {
    try
    {
      byte[] arrayOfByte2 = ad.d(this.TN.TX.getBytes());
      c.a(this.TN, true);
      com.tencent.a.a.c localc2 = a.a("http://ls.map.soso.com/deflect?c=1", "SOSO MAP LBS SDK", arrayOfByte2);
      c.a(this.TN, false);
      byte[] arrayOfByte3 = ad.e(localc2.data);
      c.a(this.TN, arrayOfByte3, localc2.XZ);
      return;
    }
    catch (Exception localException1)
    {
      do
      {
        int i = 0;
        while (true)
        {
          i++;
          if (i > 3)
            break;
          try
          {
            sleep(2000L);
            com.tencent.a.a.c localc1 = a.a("http://ls.map.soso.com/deflect?c=1", "SOSO MAP LBS SDK", ad.d(this.TN.TX.getBytes()));
            c.a(this.TN, false);
            byte[] arrayOfByte1 = ad.e(localc1.data);
            c.a(this.TN, arrayOfByte1, localc1.XZ);
            return;
          }
          catch (Exception localException2)
          {
          }
        }
        c.a(this.TN, false);
      }
      while (c.a(this.TN) == null);
      c.a(this.TN).a(360.0D, 360.0D);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.location.e
 * JD-Core Version:    0.6.2
 */