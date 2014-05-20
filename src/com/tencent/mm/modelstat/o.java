package com.tencent.mm.modelstat;

import com.tencent.mm.a.k;
import com.tencent.mm.platformtools.aq;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;
import java.util.ArrayList;

final class o
  implements Runnable
{
  o(n paramn)
  {
  }

  public final void run()
  {
    String str1 = this.czZ.czr;
    int i = cj.a((Integer)this.czZ.czY, -1);
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(i);
    aa.e("MicroMsg.WatchdogIpxxUploader", "upload Date :%d", arrayOfObject1);
    if (cj.hX(str1))
    {
      aa.e("MicroMsg.WatchdogIpxxUploader", "error username");
      return;
    }
    if ((i > 7) || (i <= 0))
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(i);
      aa.b("MicroMsg.WatchdogIpxxUploader", "error timespan :%d", arrayOfObject2);
      return;
    }
    if (!com.tencent.mm.compatible.g.l.qd())
    {
      aa.e("MicroMsg.WatchdogIpxxUploader", "sdcard invalid.");
      return;
    }
    File[] arrayOfFile = new File(l.czt).listFiles();
    if (arrayOfFile == null)
    {
      aa.e("MicroMsg.WatchdogIpxxUploader", "get file list failed");
      return;
    }
    ArrayList localArrayList = new ArrayList();
    long l1 = cj.FD() - 86400000L * i;
    int j = 0;
    int k = 0;
    while (j < arrayOfFile.length)
    {
      String str2 = arrayOfFile[j].getPath();
      File localFile2;
      if (!str2.endsWith("wd.ini"))
      {
        long l2 = d.gw(str2);
        if (l2 != -1L)
        {
          if (l2 > l1)
          {
            localArrayList.add(arrayOfFile[j]);
            k = (int)(k + arrayOfFile[j].length());
          }
          if (k > 128000)
            localFile2 = new File(l.czt + cj.FD() + ".zip");
        }
      }
      try
      {
        k.a(localArrayList, localFile2);
        Object[] arrayOfObject8 = new Object[1];
        arrayOfObject8[0] = Long.valueOf(localFile2.length());
        aa.e("MicroMsg.WatchdogIpxxUploader", "out zip file size:%d", arrayOfObject8);
        boolean bool2 = aq.P(localFile2.getPath(), str1);
        Object[] arrayOfObject9 = new Object[1];
        arrayOfObject9[0] = Boolean.valueOf(bool2);
        aa.e("MicroMsg.WatchdogIpxxUploader", "upload : %b", arrayOfObject9);
        localArrayList.clear();
        k = 0;
        j++;
      }
      catch (Exception localException2)
      {
        Object[] arrayOfObject7 = new Object[1];
        arrayOfObject7[0] = localException2.getMessage();
        aa.b("MicroMsg.WatchdogIpxxUploader", "zip file failed msg:%s ", arrayOfObject7);
        return;
      }
    }
    if (localArrayList.size() <= 0)
    {
      Object[] arrayOfObject6 = new Object[1];
      arrayOfObject6[0] = Long.valueOf(l1);
      aa.b("MicroMsg.WatchdogIpxxUploader", "not fount target file afterTime:%d", arrayOfObject6);
      return;
    }
    File localFile1 = new File(l.czt + cj.FD() + ".zip");
    try
    {
      k.a(localArrayList, localFile1);
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Long.valueOf(localFile1.length());
      aa.e("MicroMsg.WatchdogIpxxUploader", "out zip file size:%d", arrayOfObject4);
      boolean bool1 = aq.P(localFile1.getPath(), str1);
      Object[] arrayOfObject5 = new Object[1];
      arrayOfObject5[0] = Boolean.valueOf(bool1);
      aa.e("MicroMsg.WatchdogIpxxUploader", "upload : %b", arrayOfObject5);
      return;
    }
    catch (Exception localException1)
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = localException1.getMessage();
      aa.b("MicroMsg.WatchdogIpxxUploader", "zip file failed msg:%s ", arrayOfObject3);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelstat.o
 * JD-Core Version:    0.6.2
 */