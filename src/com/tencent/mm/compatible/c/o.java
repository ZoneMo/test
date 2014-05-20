package com.tencent.mm.compatible.c;

import com.tencent.mm.sdk.platformtools.aa;
import java.io.IOException;
import java.io.InputStream;

public final class o
{
  static short ceD = 0;
  static String ceE = null;

  public static short pM()
  {
    int i = 4;
    int j;
    int k;
    if (p.pQ())
    {
      j = 7;
      if ((s.ceJ.ceG) && (s.ceJ.ceI == 0))
      {
        aa.d("MicroMsg.CpuChecker", "disable armv6 by server ");
        j &= -3;
      }
      if ((s.ceJ.ceG) && (s.ceJ.ceH == 0))
      {
        aa.d("MicroMsg.CpuChecker", "disable armv7 by server ");
        j &= -5;
      }
      k = p.pS();
      if (k <= i)
        break label157;
    }
    while (true)
    {
      label80: int m = Integer.parseInt(pN()) / 1000;
      int n;
      if (i > 2)
        n = m * 2;
      while (true)
      {
        label101: int i1 = n / 100;
        if (i1 > 30)
          i1 = 30;
        while (true)
        {
          short s = (short)(i1 + (j + (i << 4) << 8));
          ceD = s;
          return s;
          if (p.pR())
          {
            j = 3;
            break;
          }
          j = 1;
          break;
          label157: if (k > 0)
            break label199;
          i = 1;
          break label80;
          if (i <= 1)
            break label193;
          n = m * 3 >> 1;
          break label101;
          if (i1 < 5)
            i1 = 5;
        }
        label193: n = m;
      }
      label199: i = k;
    }
  }

  private static String pN()
  {
    String str = "0";
    try
    {
      InputStream localInputStream = new ProcessBuilder(new String[] { "/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq" }).start().getInputStream();
      byte[] arrayOfByte = new byte[24];
      while (localInputStream.read(arrayOfByte) != -1)
        str = str + new String(arrayOfByte);
      localInputStream.close();
      return str.trim();
    }
    catch (IOException localIOException)
    {
      while (true)
        str = "0";
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.c.o
 * JD-Core Version:    0.6.2
 */