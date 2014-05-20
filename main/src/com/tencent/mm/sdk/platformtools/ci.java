package com.tencent.mm.sdk.platformtools;

import android.os.Process;
import java.io.File;
import java.util.Scanner;

public final class ci
{
  private static long gfm;
  private static long gfn;
  private static long gfo;
  private static long gfp;
  private static long gfq;
  private static long gfr;
  private static long gfs;
  private static long gft;

  public static long azL()
  {
    long l = 0L;
    if (gfs > l)
      l = gfs;
    return l;
  }

  public static long azM()
  {
    long l = 0L;
    if (gft > l)
      l = gft;
    return l;
  }

  public static long azN()
  {
    long l = 0L;
    if (gfq > l)
      l = gfq;
    return l;
  }

  public static long azO()
  {
    long l = 0L;
    if (gfr > l)
      l = gfr;
    return l;
  }

  public static void reset()
  {
    gfm = -1L;
    gfn = -1L;
    gfo = -1L;
    gfp = -1L;
    update();
  }

  public static void update()
  {
    long l1 = 0L;
    long l2 = 0L;
    long l3 = 0L;
    long l4 = 0L;
    try
    {
      Scanner localScanner = new Scanner(new File("/proc/" + Process.myPid() + "/net/dev"));
      localScanner.nextLine();
      localScanner.nextLine();
      while (localScanner.hasNext())
      {
        String[] arrayOfString = localScanner.nextLine().split("[ :\t]+");
        if (arrayOfString[0].length() != 0)
          break label628;
        i = 1;
        if ((!arrayOfString[0].equals("lo")) && (arrayOfString[(i + 0)].startsWith("rmnet")))
        {
          l1 += Long.parseLong(arrayOfString[(i + 9)]);
          l2 += Long.parseLong(arrayOfString[(i + 1)]);
        }
        if ((!arrayOfString[(i + 0)].equals("lo")) && (!arrayOfString[(i + 0)].startsWith("rmnet")))
        {
          l3 += Long.parseLong(arrayOfString[(i + 9)]);
          l4 += Long.parseLong(arrayOfString[(i + 1)]);
        }
      }
      localScanner.close();
      if (gfm < 0L)
      {
        gfm = l1;
        Object[] arrayOfObject7 = new Object[1];
        arrayOfObject7[0] = Long.valueOf(l1);
        aa.f("MicroMsg.SDK.TrafficStats", "fix loss newMobileTx %d", arrayOfObject7);
      }
      if (gfn < 0L)
      {
        gfn = l2;
        Object[] arrayOfObject6 = new Object[1];
        arrayOfObject6[0] = Long.valueOf(l2);
        aa.f("MicroMsg.SDK.TrafficStats", "fix loss newMobileRx %d", arrayOfObject6);
      }
      if (gfo < 0L)
      {
        gfo = l3;
        Object[] arrayOfObject5 = new Object[1];
        arrayOfObject5[0] = Long.valueOf(l3);
        aa.f("MicroMsg.SDK.TrafficStats", "fix loss newWifiTx %d", arrayOfObject5);
      }
      if (gfp < 0L)
      {
        gfp = l4;
        Object[] arrayOfObject4 = new Object[1];
        arrayOfObject4[0] = Long.valueOf(l4);
        aa.f("MicroMsg.SDK.TrafficStats", "fix loss newWifiRx %d", arrayOfObject4);
      }
      if (l4 - gfp < 0L)
      {
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Long.valueOf(l4 - gfp);
        aa.f("MicroMsg.SDK.TrafficStats", "minu %d", arrayOfObject3);
      }
      if (l3 - gfo < 0L)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Long.valueOf(l3 - gfo);
        aa.f("MicroMsg.SDK.TrafficStats", "minu %d", arrayOfObject2);
      }
      long l5;
      long l6;
      label474: long l7;
      if (l1 >= gfm)
      {
        l5 = l1 - gfm;
        gfq = l5;
        if (l2 < gfn)
          break label603;
        l6 = l2 - gfn;
        gfr = l6;
        if (l3 < gfo)
          break label609;
        l7 = l3 - gfo;
        label496: gfs = l7;
        if (l4 < gfp)
          break label616;
      }
      label603: label609: label616: for (long l8 = l4 - gfp; ; l8 = l4)
      {
        gft = l8;
        gfm = l1;
        gfn = l2;
        gfo = l3;
        gfp = l4;
        Object[] arrayOfObject1 = new Object[4];
        arrayOfObject1[0] = Long.valueOf(gft);
        arrayOfObject1[1] = Long.valueOf(gfs);
        arrayOfObject1[2] = Long.valueOf(gfr);
        arrayOfObject1[3] = Long.valueOf(gfq);
        aa.e("MicroMsg.SDK.TrafficStats", "current system traffic: wifi rx/tx=%d/%d, mobile rx/tx=%d/%d", arrayOfObject1);
        return;
        l5 = l1;
        break;
        l6 = l2;
        break label474;
        l7 = l3;
        break label496;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        continue;
        label628: int i = 0;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.ci
 * JD-Core Version:    0.6.2
 */