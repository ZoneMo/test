package com.tencent.mm.sdk.platformtools;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import com.tencent.mm.a.a;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public final class at
  implements Thread.UncaughtExceptionHandler
{
  public static final long gdP = cj.FD();
  private static String gdS = null;
  private static int gdT = 0;
  private static at gdX;
  private static boolean gdY = false;
  private static String gdZ = "unknow";
  private Thread.UncaughtExceptionHandler gdQ = null;
  private av gdR;
  private aw gdU = new au(this);
  private ax gdV;
  private String gdW;

  static
  {
    CrashMonitorForJni.init();
  }

  private at()
  {
    Thread.setDefaultUncaughtExceptionHandler(this);
    this.gdR = null;
    this.gdV = null;
    this.gdW = "";
  }

  public static void U(boolean paramBoolean)
  {
    gdY = paramBoolean;
  }

  public static void ac(String paramString, int paramInt)
  {
    gdS = paramString;
    gdT = paramInt;
  }

  public static at azE()
  {
    if (gdX == null)
      gdX = new at();
    return gdX;
  }

  public static void sH(String paramString)
  {
    gdZ = paramString;
  }

  private static void sI(String paramString)
  {
    try
    {
      while (paramString.length() > 896)
      {
        int i = paramString.substring(0, 896).lastIndexOf("\n");
        if (-1 == i)
          break;
        aa.e("MicroMsg.UEH", paramString.substring(0, i));
        paramString = paramString.substring(i + 1);
      }
      aa.e("MicroMsg.UEH", paramString);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private static String sJ(String paramString)
  {
    if (paramString == null)
      paramString = null;
    label65: 
    while (true)
    {
      return paramString;
      char[] arrayOfChar = paramString.toCharArray();
      if (arrayOfChar == null)
        return null;
      int i = 0;
      if (i < arrayOfChar.length)
        if (arrayOfChar[i] > '')
          arrayOfChar[i] = '\000';
      for (int j = 1; ; j = 0)
      {
        if (j == 0)
          break label65;
        return new String(arrayOfChar, 0, i);
        i++;
        break;
      }
    }
  }

  public final void a(aw paramaw, av paramav)
  {
    this.gdU = paramaw;
    this.gdR = paramav;
  }

  public final void a(ax paramax, String paramString)
  {
    this.gdV = paramax;
    this.gdW = paramString;
  }

  public final void aN(String paramString1, String paramString2)
  {
    if (this.gdV == null)
    {
      aa.w("MicroMsg.UEH", "report raw message failed, no reporter");
      return;
    }
    this.gdV.b(paramString1, paramString2, this.gdU.nD());
  }

  public final void s(int paramInt, String paramString)
  {
    if (this.gdV == null)
      return;
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      PrintStream localPrintStream = new PrintStream(localByteArrayOutputStream);
      localPrintStream.println("#[jin_crash]sig=" + paramInt);
      localPrintStream.println("#client.version=" + this.gdU.getClientVersion());
      localPrintStream.println("#accinfo.revision=613228");
      localPrintStream.println("#accinfo.buildtime=01/27/2014 03:53 AM");
      localPrintStream.println("#accinfo.hostname=VM_22_112_sles10_64");
      Object localObject = this.gdU.nD();
      String str1 = cj.bC(al.getContext());
      if ((cj.hX((String)localObject)) || (((String)localObject).equals("0")))
      {
        if (cj.hX(str1))
          break label589;
        localObject = str1;
      }
      while (true)
      {
        localPrintStream.println("#accinfo.uin=" + (String)localObject);
        localPrintStream.println("#accinfo.isForeground=" + gdY);
        localPrintStream.println("#accinfo.currentActivity=" + gdZ);
        localPrintStream.println("#accinfo.threadName=" + Thread.currentThread().getName());
        localPrintStream.println("#accinfo.dev=" + str1);
        localPrintStream.println("#accinfo.runtime=" + (cj.FD() - gdP) + "(" + cj.hW(this.gdW) + ")");
        String str2 = "";
        try
        {
          File localFile = Environment.getDataDirectory();
          StatFs localStatFs = new StatFs(localFile.getPath());
          Object[] arrayOfObject2 = new Object[4];
          arrayOfObject2[0] = localFile.getAbsolutePath();
          arrayOfObject2[1] = Integer.valueOf(localStatFs.getBlockSize());
          arrayOfObject2[2] = Integer.valueOf(localStatFs.getBlockCount());
          arrayOfObject2[3] = Integer.valueOf(localStatFs.getAvailableBlocks());
          str2 = String.format("path[%s] blocksize:%d blockcount:%d availcount:%d", arrayOfObject2);
          aa.d("MicroMsg.UEH", "CheckData %s", new Object[] { str2 });
          localPrintStream.println("#accinfo.datasize=" + str2);
          int i = ((ActivityManager)al.getContext().getSystemService("activity")).getMemoryClass();
          localPrintStream.println("#accinfo.maxmemPerApp=" + i + "megabytes");
          Date localDate = new Date();
          SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSSZ", Locale.getDefault());
          localPrintStream.println("#accinfo.crashTime=" + localSimpleDateFormat.format(localDate));
          localPrintStream.println("#crashContent=");
          localPrintStream.println(paramString);
          sI(localByteArrayOutputStream.toString());
          this.gdV.a(a.c(localByteArrayOutputStream.toByteArray(), false), this.gdU);
          localByteArrayOutputStream.close();
          aa.e("MicroMsg.UEH", "ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc");
          aa.appenderClose();
          return;
          label589: str1 = Integer.toString((Build.DEVICE + Build.FINGERPRINT + Build.MANUFACTURER + Build.MODEL).hashCode());
          localObject = str1;
        }
        catch (Exception localException2)
        {
          while (true)
          {
            Object[] arrayOfObject1 = new Object[1];
            arrayOfObject1[0] = localException2.getMessage();
            aa.b("MicroMsg.UEH", "check data size failed :%s", arrayOfObject1);
          }
        }
      }
    }
    catch (Exception localException1)
    {
    }
  }

  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Long.valueOf(paramThread.getId());
    arrayOfObject1[1] = paramThrowable.getMessage();
    aa.b("MicroMsg.UEH", "uncaught exception error, threadId=%d, err=%s", arrayOfObject1);
    ByteArrayOutputStream localByteArrayOutputStream;
    PrintStream localPrintStream;
    try
    {
      localByteArrayOutputStream = new ByteArrayOutputStream();
      localPrintStream = new PrintStream(localByteArrayOutputStream);
      localPrintStream.println("#client.version=" + this.gdU.getClientVersion());
      localPrintStream.println("#accinfo.revision=613228");
      localPrintStream.println("#accinfo.buildtime=01/27/2014 03:53 AM");
      localPrintStream.println("#accinfo.hostname=VM_22_112_sles10_64");
      Object localObject = this.gdU.nD();
      String str1 = cj.bC(al.getContext());
      if ((cj.hX((String)localObject)) || (((String)localObject).equals("0")))
      {
        if (cj.hX(str1))
          break label586;
        localObject = str1;
      }
      while (true)
      {
        localPrintStream.println("#accinfo.uin=" + (String)localObject);
        localPrintStream.println("#accinfo.isForeground=" + gdY);
        localPrintStream.println("#accinfo.currentActivity=" + gdZ);
        localPrintStream.println("#accinfo.threadName=" + Thread.currentThread().getName());
        localPrintStream.println("#accinfo.dev=" + str1);
        localPrintStream.println("#accinfo.runtime=" + (cj.FD() - gdP) + "(" + cj.hW(this.gdW) + ")");
        String str2 = "";
        try
        {
          File localFile = Environment.getDataDirectory();
          StatFs localStatFs = new StatFs(localFile.getPath());
          Object[] arrayOfObject3 = new Object[4];
          arrayOfObject3[0] = localFile.getAbsolutePath();
          arrayOfObject3[1] = Integer.valueOf(localStatFs.getBlockSize());
          arrayOfObject3[2] = Integer.valueOf(localStatFs.getBlockCount());
          arrayOfObject3[3] = Integer.valueOf(localStatFs.getAvailableBlocks());
          str2 = String.format("path[%s] blocksize:%d blockcount:%d availcount:%d", arrayOfObject3);
          aa.d("MicroMsg.UEH", "CheckData %s", new Object[] { str2 });
          localPrintStream.println("#accinfo.datasize=" + str2);
          localPrintStream.println("#accinfo.crashMessage=" + sJ(paramThrowable.getMessage()));
          int i = ((ActivityManager)al.getContext().getSystemService("activity")).getMemoryClass();
          localPrintStream.println("#accinfo.maxmemPerApp=" + i + "megabytes");
          Date localDate = new Date();
          SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSSZ", Locale.getDefault());
          localPrintStream.println("#accinfo.crashTime=" + localSimpleDateFormat.format(localDate));
          localPrintStream.println("#crashContent=");
          while (paramThrowable.getCause() != null)
          {
            paramThrowable = paramThrowable.getCause();
            continue;
            label586: str1 = Integer.toString((Build.DEVICE + Build.FINGERPRINT + Build.MANUFACTURER + Build.MODEL).hashCode());
            localObject = str1;
          }
        }
        catch (Exception localException2)
        {
          while (true)
          {
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = localException2.getMessage();
            aa.b("MicroMsg.UEH", "check data size failed :%s", arrayOfObject2);
          }
        }
      }
    }
    catch (Exception localException1)
    {
    }
    while (true)
    {
      aa.e("MicroMsg.UEH", "ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc");
      aa.appenderClose();
      Process.killProcess(Process.myPid());
      System.exit(0);
      return;
      paramThrowable.printStackTrace(localPrintStream);
      sI(localByteArrayOutputStream.toString());
      String str3 = sJ(localByteArrayOutputStream.toString());
      try
      {
        if ((this.gdR != null) && (str3 != null))
          this.gdR.du(str3);
        label736: if ((this.gdV != null) && (str3 != null))
          this.gdV.a(a.c(str3.getBytes(), false), this.gdU);
        localByteArrayOutputStream.close();
      }
      catch (Exception localException3)
      {
        break label736;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.at
 * JD-Core Version:    0.6.2
 */