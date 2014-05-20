package com.tencent.mm.sandbox.monitor;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.mm.a.b;
import com.tencent.mm.a.c;
import com.tencent.mm.a.f;
import com.tencent.mm.a.j;
import com.tencent.mm.a.l;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.platformtools.i;
import com.tencent.mm.pointers.PByteArray;
import com.tencent.mm.protocal.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public final class d
{
  public static int a(String paramString, h paramh)
  {
    if ((paramh == null) || (cj.hX(paramh.toString())))
      return -1;
    File localFile = new File(com.tencent.mm.storage.h.cfC + "crash/");
    if (!localFile.exists())
      localFile.mkdir();
    String str1 = com.tencent.mm.storage.h.cfC + "crash/" + paramString + ".crashini";
    i.b(str1, "count", 1L + cj.a(i.O(str1, "count")));
    if (cj.a(i.O(str1, "lasttime")) == 0L)
      i.b(str1, "lasttime", cj.FD());
    String str2 = com.tencent.mm.storage.h.cfC + "crash/" + paramString + ".crashlog";
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = str2;
    arrayOfObject[1] = Integer.valueOf(paramh.toString().length());
    aa.e("MicroMsg.CrashUpload", "crash:[%s] len:[%d]", arrayOfObject);
    a(paramh);
    b(str2, paramh);
    return so(paramString);
  }

  private static void a(h paramh)
  {
    File localFile1 = new File(com.tencent.mm.storage.h.ggA);
    if (!localFile1.exists())
      localFile1.mkdirs();
    File[] arrayOfFile = localFile1.listFiles();
    if (arrayOfFile != null)
    {
      int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
      {
        File localFile2 = arrayOfFile[j];
        if (cj.N(localFile2.lastModified()) > 604800000L)
        {
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = localFile2.getPath();
          aa.d("MicroMsg.CrashUpload", "dealWithSdcardCrash del old file: %s", arrayOfObject);
          localFile2.delete();
        }
      }
    }
    Date localDate = new Date();
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.getDefault());
    String str = com.tencent.mm.storage.h.ggA + "crash_" + localSimpleDateFormat.format(localDate) + ".txt";
    aa.d("MicroMsg.CrashUpload", "dealWithSdcardCrash %s", new Object[] { str });
    b(str, paramh);
  }

  public static int ayy()
  {
    File localFile = new File(com.tencent.mm.storage.h.cfC + "crash/");
    if (!localFile.exists())
      aa.w("MicroMsg.CrashUpload", "dkcrash checkUpload dir never create ?");
    String[] arrayOfString1;
    do
    {
      return -1;
      if (localFile.isFile())
      {
        localFile.delete();
        aa.w("MicroMsg.CrashUpload", "dkcrash is the fucking file ??");
        return -1;
      }
      arrayOfString1 = localFile.list();
    }
    while ((arrayOfString1 == null) || (arrayOfString1.length == 0));
    for (int i = 0; i < arrayOfString1.length; i++)
      if (arrayOfString1[i].endsWith(".crashlog"))
      {
        String[] arrayOfString2 = arrayOfString1[i].split(".crashlog");
        if ((arrayOfString2 != null) && (arrayOfString2.length > 0))
          so(arrayOfString2[0]);
      }
    return 1;
  }

  private static void b(String paramString, h paramh)
  {
    if (!new File(paramString).exists())
    {
      int i = al.getContext().getSharedPreferences("system_config_prefs", 0).getInt("default_uin", 0);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("uin[" + j.getString(i) + "] ");
      localStringBuilder.append(aa.azk());
      localStringBuilder.append(" ");
      String[] arrayOfString = s.pY();
      if (arrayOfString != null)
      {
        if (arrayOfString.length > 0)
          localStringBuilder.append("c1[" + arrayOfString[0] + "] ");
        if (arrayOfString.length > 1)
          localStringBuilder.append("c2[" + arrayOfString[1] + "] ");
      }
      localStringBuilder.append("\n");
      c.a(paramString, localStringBuilder.toString().getBytes());
    }
    c.a(paramString, (paramh.toString() + "\n").getBytes());
  }

  private static int so(String paramString)
  {
    String str1 = com.tencent.mm.storage.h.cfC + "crash/" + paramString + ".crashini";
    long l1 = cj.a(i.O(str1, "count"));
    long l2 = cj.a(i.O(str1, "lasttime"));
    long l3 = cj.FD() - l2;
    String str2 = com.tencent.mm.storage.h.cfC + "crash/" + paramString + ".crashlog";
    int i = c.ar(str2);
    aa.d("MicroMsg.CrashUpload", "dkcrash count:" + l1 + " t:" + l3 + " len:" + i);
    byte[] arrayOfByte1 = c.h(str2, 0, -1);
    if (!cj.A(arrayOfByte1))
    {
      int j = arrayOfByte1.length;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(a.fxr);
      arrayOfObject[1] = Integer.valueOf(j);
      String str3 = f.h(String.format("weixin#$()%d%d", arrayOfObject).getBytes()).toLowerCase();
      byte[] arrayOfByte2 = l.j(arrayOfByte1);
      PByteArray localPByteArray = new PByteArray();
      b.a(localPByteArray, arrayOfByte2, str3.getBytes());
      new Thread(new e(j, str3, paramString, localPByteArray), "crashupload").start();
    }
    c.deleteFile(str2);
    i.d(str1, "count", 0);
    i.b(str1, "lasttime", cj.FD());
    return 1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.monitor.d
 * JD-Core Version:    0.6.2
 */