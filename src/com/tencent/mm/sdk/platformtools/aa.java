package com.tencent.mm.sdk.platformtools;

import android.os.Build;
import android.os.Build.VERSION;
import android.os.Looper;
import android.os.Process;
import android.util.Log;

public final class aa
{
  private static final String eTI = localStringBuilder.toString();
  private static ae gdr;
  private static ae gds;
  private static int level = 6;

  static
  {
    ab localab = new ab();
    gdr = localab;
    gds = localab;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("VERSION.RELEASE:[" + Build.VERSION.RELEASE);
    localStringBuilder.append("] VERSION.CODENAME:[" + Build.VERSION.CODENAME);
    localStringBuilder.append("] VERSION.INCREMENTAL:[" + Build.VERSION.INCREMENTAL);
    localStringBuilder.append("] BOARD:[" + Build.BOARD);
    localStringBuilder.append("] DEVICE:[" + Build.DEVICE);
    localStringBuilder.append("] DISPLAY:[" + Build.DISPLAY);
    localStringBuilder.append("] FINGERPRINT:[" + Build.FINGERPRINT);
    localStringBuilder.append("] HOST:[" + Build.HOST);
    localStringBuilder.append("] MANUFACTURER:[" + Build.MANUFACTURER);
    localStringBuilder.append("] MODEL:[" + Build.MODEL);
    localStringBuilder.append("] PRODUCT:[" + Build.PRODUCT);
    localStringBuilder.append("] TAGS:[" + Build.TAGS);
    localStringBuilder.append("] TYPE:[" + Build.TYPE);
    localStringBuilder.append("] USER:[" + Build.USER + "]");
  }

  public static void a(ae paramae)
  {
    gds = paramae;
  }

  public static void a(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    if ((gds != null) && (gds.getLogLevel() <= 5))
      if (paramArrayOfObject != null)
        break label67;
    label67: for (String str = paramString2; ; str = String.format(paramString2, paramArrayOfObject))
    {
      gds.f(paramString1, "", "", Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str);
      an.i(new ad());
      return;
    }
  }

  public static void a(String paramString1, Throwable paramThrowable, String paramString2, Object[] paramArrayOfObject)
  {
    if ((gds != null) && (gds.getLogLevel() <= 4))
      if (paramArrayOfObject != null)
        break label97;
    label97: for (String str1 = paramString2; ; str1 = String.format(paramString2, paramArrayOfObject))
    {
      if (str1 == null)
        str1 = "";
      String str2 = str1 + "  " + Log.getStackTraceString(paramThrowable);
      gds.e(paramString1, "", "", Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str2);
      return;
    }
  }

  public static void aM(String paramString1, String paramString2)
  {
    a(paramString1, paramString2, null);
  }

  public static void appenderClose()
  {
    if (gds != null)
      gds.appenderClose();
  }

  public static void appenderFlush()
  {
    if (gds != null)
      gds.appenderFlush();
  }

  public static String azk()
  {
    return eTI;
  }

  public static void b(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    if ((gds != null) && (gds.getLogLevel() <= 4))
      if (paramArrayOfObject != null)
        break label64;
    label64: for (String str = paramString2; ; str = String.format(paramString2, paramArrayOfObject))
    {
      if (str == null)
        str = "";
      gds.e(paramString1, "", "", Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str);
      return;
    }
  }

  public static void c(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    if ((gds != null) && (gds.getLogLevel() <= 3))
      if (paramArrayOfObject != null)
        break label64;
    label64: for (String str = paramString2; ; str = String.format(paramString2, paramArrayOfObject))
    {
      if (str == null)
        str = "";
      gds.d(paramString1, "", "", Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str);
      return;
    }
  }

  public static void d(String paramString1, String paramString2)
  {
    e(paramString1, paramString2, null);
  }

  public static void d(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    if ((gds != null) && (gds.getLogLevel() <= 2))
      if (paramArrayOfObject != null)
        break label64;
    label64: for (String str = paramString2; ; str = String.format(paramString2, paramArrayOfObject))
    {
      if (str == null)
        str = "";
      gds.b(paramString1, "", "", Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str);
      return;
    }
  }

  public static void e(String paramString1, String paramString2)
  {
    b(paramString1, paramString2, null);
  }

  public static void e(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    if ((gds != null) && (gds.getLogLevel() <= 1))
      if (paramArrayOfObject != null)
        break label64;
    label64: for (String str = paramString2; ; str = String.format(paramString2, paramArrayOfObject))
    {
      if (str == null)
        str = "";
      gds.c(paramString1, "", "", Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str);
      return;
    }
  }

  public static void f(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    if ((gds != null) && (gds.getLogLevel() <= 0))
      if (paramArrayOfObject != null)
        break label63;
    label63: for (String str = paramString2; ; str = String.format(paramString2, paramArrayOfObject))
    {
      if (str == null)
        str = "";
      gds.a(paramString1, "", "", Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str);
      return;
    }
  }

  public static void g(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    if ((gds != null) && (gds.getLogLevel() <= 1))
      if (paramArrayOfObject != null)
        break label92;
    label92: for (String str1 = paramString2; ; str1 = String.format(paramString2, paramArrayOfObject))
    {
      if (str1 == null)
        str1 = "";
      String str2 = str1 + "  " + cj.azV();
      gds.b(paramString1, "", "", Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str2);
      return;
    }
  }

  public static int getLogLevel()
  {
    if (gds != null)
      return gds.getLogLevel();
    return 6;
  }

  public static void i(String paramString1, String paramString2)
  {
    d(paramString1, paramString2, null);
  }

  public static void lH(int paramInt)
  {
    level = paramInt;
    new StringBuilder("new log level: ").append(paramInt).toString();
  }

  public static void v(String paramString1, String paramString2)
  {
    f(paramString1, paramString2, null);
  }

  public static void w(String paramString1, String paramString2)
  {
    c(paramString1, paramString2, null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.aa
 * JD-Core Version:    0.6.2
 */