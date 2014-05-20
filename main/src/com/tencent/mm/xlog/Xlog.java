package com.tencent.mm.xlog;

import com.tencent.mm.sdk.platformtools.ae;

public class Xlog
  implements ae
{
  static
  {
    System.loadLibrary("xlog");
    onCreate();
  }

  public static native void appenderOpen(int paramInt, String paramString1, String paramString2);

  public static void init()
  {
    System.loadLibrary("xlog");
  }

  public static native void logWrite(Xlog.XLoggerInfo paramXLoggerInfo, String paramString);

  public static native void logWrite2(int paramInt1, String paramString1, String paramString2, String paramString3, int paramInt2, int paramInt3, long paramLong1, long paramLong2, String paramString4);

  private static native void onCreate();

  public static native void setAppenderMode(int paramInt);

  public static native void setLogLevel(int paramInt);

  public final void a(String paramString1, String paramString2, String paramString3, int paramInt, long paramLong1, long paramLong2, String paramString4)
  {
    logWrite2(0, paramString1, paramString2, paramString3, 0, paramInt, paramLong1, paramLong2, paramString4);
  }

  public native void appenderClose();

  public native void appenderFlush();

  public final void b(String paramString1, String paramString2, String paramString3, int paramInt, long paramLong1, long paramLong2, String paramString4)
  {
    logWrite2(2, paramString1, paramString2, paramString3, 0, paramInt, paramLong1, paramLong2, paramString4);
  }

  public final void c(String paramString1, String paramString2, String paramString3, int paramInt, long paramLong1, long paramLong2, String paramString4)
  {
    logWrite2(1, paramString1, paramString2, paramString3, 0, paramInt, paramLong1, paramLong2, paramString4);
  }

  public final void d(String paramString1, String paramString2, String paramString3, int paramInt, long paramLong1, long paramLong2, String paramString4)
  {
    logWrite2(3, paramString1, paramString2, paramString3, 0, paramInt, paramLong1, paramLong2, paramString4);
  }

  public final void e(String paramString1, String paramString2, String paramString3, int paramInt, long paramLong1, long paramLong2, String paramString4)
  {
    logWrite2(4, paramString1, paramString2, paramString3, 0, paramInt, paramLong1, paramLong2, paramString4);
  }

  public final void f(String paramString1, String paramString2, String paramString3, int paramInt, long paramLong1, long paramLong2, String paramString4)
  {
    logWrite2(5, paramString1, paramString2, paramString3, 0, paramInt, paramLong1, paramLong2, paramString4);
  }

  public native int getLogLevel();
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.xlog.Xlog
 * JD-Core Version:    0.6.2
 */