package com.tencent.mm.network;

import android.os.Handler;
import com.tencent.mm.jni.platformcomm.WakerLock;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.at;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.z;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

class C2Java
{
  public static final int MM_STAT_CGI_INFO = 1;
  public static final int MM_STAT_CGI_NETWORK_COST = 7;
  public static final int MM_STAT_DNS = 8;
  public static final int MM_STAT_LONGLINK_BUILD = 3;
  public static final int MM_STAT_LONGLINK_CONNECT = 4;
  public static final int MM_STAT_LONGLINK_DISCONNECT = 5;
  public static final int MM_STAT_LONGLINK_FUNC_CONNECT = 6;
  public static final int MM_STAT_NETWORK_UNREACHABLE = 2;
  public static final int MM_Stat_Local_GetHostByName = 11;
  public static final int MM_Stat_Network_Changed = 10;
  public static final int MM_Stat_Noop_Send = 9;
  private static final String TAG = "C2Java";
  private static byte[] cacheKeyBuf;
  private static byte[] cacheMd5Buf;
  private static WakerLock wLock = null;

  public static int buf2Resp(int paramInt, byte[] paramArrayOfByte, ByteArrayOutputStream paramByteArrayOutputStream)
  {
    if (bk.Fg() == null)
      return -1;
    try
    {
      int i = bk.Fg().buf2Resp(paramInt, paramArrayOfByte, paramByteArrayOutputStream);
      return i;
    }
    catch (Exception localException)
    {
      aa.e("C2Java", exception2String(localException));
      new StringBuilder().append(localException.getClass().getSimpleName()).append(":").append(localException.getStackTrace()[0]).append(", ").append(localException.getStackTrace()[1]).toString();
    }
    return -1;
  }

  private static String exception2String(Exception paramException)
  {
    StringWriter localStringWriter = new StringWriter();
    paramException.printStackTrace(new PrintWriter(localStringWriter));
    return localStringWriter.toString();
  }

  public static MMNativeNetComm.AccountInfo getAccountInfo()
  {
    MMNativeNetComm.AccountInfo localAccountInfo = new MMNativeNetComm.AccountInfo();
    if ((bk.Ff() == null) || (bk.Ff().ES() == null));
    while (true)
    {
      return localAccountInfo;
      try
      {
        localAccountInfo.uin = bk.Ff().ES().sd();
        localAccountInfo.username = bk.Ff().ES().xr();
        if (cj.hX(localAccountInfo.username))
        {
          localAccountInfo.username = bk.Ff().ES().getUsername();
          return localAccountInfo;
        }
      }
      catch (Exception localException)
      {
      }
    }
    return localAccountInfo;
  }

  public static int getClientVersion()
  {
    return com.tencent.mm.protocal.a.fxr;
  }

  public static String getCrashFilePath(int paramInt)
  {
    try
    {
      Date localDate = new Date(System.currentTimeMillis() - 86400000L * paramInt);
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyyMMdd");
      String str = com.tencent.mm.storage.h.ggA + "crash_" + localSimpleDateFormat.format(localDate) + ".txt";
      boolean bool = com.tencent.mm.a.c.as(str);
      if (bool)
        return str;
      return null;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static String getCurLanguage()
  {
    return z.azj();
  }

  public static String getDeviceType()
  {
    return com.tencent.mm.protocal.a.fxk;
  }

  private static int getJavaActionId(long paramLong)
  {
    switch ((int)paramLong)
    {
    default:
      return 0;
    case 1:
      return 1102;
    case 2:
      return 10104;
    case 3:
      return 10103;
    case 4:
      return 10105;
    case 5:
      return 10102;
    case 6:
      return 10101;
    case 7:
      return 1105;
    case 8:
      return 10428;
    case 9:
      return -1;
    case 10:
      return -2;
    case 11:
    }
    return -3;
  }

  public static String getKVCommPath()
  {
    return com.tencent.mm.storage.h.cfE + "kvcomm/";
  }

  public static long getNextNoopTime()
  {
    try
    {
      long l = bp.Fl();
      return l;
    }
    catch (Exception localException)
    {
    }
    return 270000L;
  }

  public static long getNoopInterval()
  {
    try
    {
      long l = bp.Fj();
      return l;
    }
    catch (Exception localException)
    {
    }
    return 270000L;
  }

  public static int getSyncCheckInfo(ByteArrayOutputStream paramByteArrayOutputStream1, ByteArrayOutputStream paramByteArrayOutputStream2)
  {
    if (bk.Ff() == null);
    do
    {
      return 0;
      try
      {
        byte[] arrayOfByte1 = bk.Ff().EU();
        if (arrayOfByte1 != null)
        {
          paramByteArrayOutputStream1.write(arrayOfByte1);
          cacheKeyBuf = arrayOfByte1;
        }
        byte[] arrayOfByte2 = bk.Ff().uM();
        if (arrayOfByte2 != null)
        {
          paramByteArrayOutputStream2.write(arrayOfByte2);
          cacheMd5Buf = arrayOfByte2;
        }
        int i = bk.Ff().ES().sd();
        return i;
      }
      catch (Exception localException)
      {
        aa.e("C2Java", exception2String(localException));
      }
    }
    while ((cacheKeyBuf == null) || (cacheMd5Buf == null));
    try
    {
      paramByteArrayOutputStream1.write(cacheKeyBuf);
      paramByteArrayOutputStream2.write(cacheMd5Buf);
      return 0;
    }
    catch (IOException localIOException)
    {
    }
    return 0;
  }

  public static String getUplodLogExtrasInfo()
  {
    try
    {
      MMNativeNetComm.AccountInfo localAccountInfo = getAccountInfo();
      if (localAccountInfo == null)
        return null;
      StringBuffer localStringBuffer = new StringBuffer();
      if (localAccountInfo.username != null)
        localStringBuffer.append("WxUserName:").append(localAccountInfo.username).append("\n");
      if (localAccountInfo.uin != 0)
        localStringBuffer.append("Uin:").append(localAccountInfo.uin).append("\n");
      localStringBuffer.append("ClientVersion:").append(getClientVersion()).append("\n");
      String str = localStringBuffer.toString();
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static String getUserIDCLocale()
  {
    try
    {
      if (cj.Bj())
        return "HK";
      return "CN";
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static String getWatchDogPath()
  {
    return com.tencent.mm.storage.h.cfE + "watchdog/";
  }

  public static boolean isLogoned()
  {
    if (bk.Ff() == null)
      return false;
    try
    {
      boolean bool = bk.Ff().ES().EK();
      return bool;
    }
    catch (Exception localException)
    {
      aa.e("C2Java", exception2String(localException));
      new StringBuilder().append(localException.getClass().getSimpleName()).append(":").append(localException.getStackTrace()[0]).append(", ").append(localException.getStackTrace()[1]).toString();
    }
    return false;
  }

  public static boolean makeSureAuth()
  {
    if (bk.Ff() == null)
      return false;
    try
    {
      boolean bool = bk.Ff().makeSureAuth();
      return bool;
    }
    catch (Exception localException)
    {
      aa.e("C2Java", exception2String(localException));
      new StringBuilder().append(localException.getClass().getSimpleName()).append(":").append(localException.getStackTrace()[0]).append(", ").append(localException.getStackTrace()[1]).toString();
    }
    return false;
  }

  // ERROR //
  public static int onGYNetEnd(int paramInt1, int paramInt2, String paramString, int paramInt3, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: invokestatic 58	com/tencent/mm/network/bk:Fg	()Lcom/tencent/mm/network/bi;
    //   3: ifnonnull +5 -> 8
    //   6: iconst_0
    //   7: ireturn
    //   8: invokestatic 58	com/tencent/mm/network/bk:Fg	()Lcom/tencent/mm/network/bi;
    //   11: iload_3
    //   12: invokevirtual 298	com/tencent/mm/network/bi:eH	(I)I
    //   15: istore 9
    //   17: invokestatic 302	com/tencent/mm/network/bk:getHandler	()Landroid/os/Handler;
    //   20: new 304	com/tencent/mm/network/c
    //   23: dup
    //   24: iload_0
    //   25: iload_1
    //   26: aload_2
    //   27: iload_3
    //   28: aload 4
    //   30: invokespecial 307	com/tencent/mm/network/c:<init>	(IILjava/lang/String;I[B)V
    //   33: invokevirtual 313	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   36: pop
    //   37: iload 9
    //   39: ireturn
    //   40: astore 5
    //   42: aload 5
    //   44: astore 6
    //   46: iconst_0
    //   47: istore 7
    //   49: ldc 31
    //   51: aload 6
    //   53: invokestatic 66	com/tencent/mm/network/C2Java:exception2String	(Ljava/lang/Exception;)Ljava/lang/String;
    //   56: invokestatic 72	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   59: new 74	java/lang/StringBuilder
    //   62: dup
    //   63: invokespecial 75	java/lang/StringBuilder:<init>	()V
    //   66: aload 6
    //   68: invokevirtual 79	java/lang/Object:getClass	()Ljava/lang/Class;
    //   71: invokevirtual 85	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   74: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: ldc 91
    //   79: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: aload 6
    //   84: invokevirtual 95	java/lang/Exception:getStackTrace	()[Ljava/lang/StackTraceElement;
    //   87: iconst_0
    //   88: aaload
    //   89: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   92: ldc 100
    //   94: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: aload 6
    //   99: invokevirtual 95	java/lang/Exception:getStackTrace	()[Ljava/lang/StackTraceElement;
    //   102: iconst_1
    //   103: aaload
    //   104: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   107: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   110: pop
    //   111: iload 7
    //   113: ireturn
    //   114: astore 10
    //   116: aload 10
    //   118: astore 6
    //   120: iload 9
    //   122: istore 7
    //   124: goto -75 -> 49
    //
    // Exception table:
    //   from	to	target	type
    //   8	17	40	java/lang/Exception
    //   17	37	114	java/lang/Exception
  }

  public static void onNotify(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    if (bk.Fh() == null)
      return;
    try
    {
      if (wLock == null)
        wLock = new WakerLock(bk.getContext());
      wLock.lock(1000L);
      bk.getHandler().post(new d(paramInt1, paramInt2, paramArrayOfByte));
      return;
    }
    catch (Exception localException)
    {
      aa.e("C2Java", exception2String(localException));
      new StringBuilder().append(localException.getClass().getSimpleName()).append(":").append(localException.getStackTrace()[0]).append(", ").append(localException.getStackTrace()[1]).toString();
    }
  }

  public static void onOOBNotify(long paramLong1, long paramLong2)
  {
    if (bk.Fh() == null)
      return;
    try
    {
      bk.getHandler().post(new h(paramLong1, paramLong2));
      return;
    }
    catch (Exception localException)
    {
      aa.e("C2Java", exception2String(localException));
      new StringBuilder().append(localException.getClass().getSimpleName()).append(":").append(localException.getStackTrace()[0]).append(", ").append(localException.getStackTrace()[1]).toString();
    }
  }

  public static void onOOBNotify(String paramString)
  {
    if (bk.Fh() == null)
      return;
    try
    {
      bk.getHandler().post(new g(paramString));
      return;
    }
    catch (Exception localException)
    {
      aa.e("C2Java", exception2String(localException));
      new StringBuilder().append(localException.getClass().getSimpleName()).append(":").append(localException.getStackTrace()[0]).append(", ").append(localException.getStackTrace()[1]).toString();
    }
  }

  public static void onRequestDoSync()
  {
    if (bk.Fh() == null)
      return;
    try
    {
      bk.getHandler().post(new e());
      return;
    }
    catch (Exception localException)
    {
      aa.e("C2Java", exception2String(localException));
      new StringBuilder().append(localException.getClass().getSimpleName()).append(":").append(localException.getStackTrace()[0]).append(", ").append(localException.getStackTrace()[1]).toString();
    }
  }

  public static void onRequestDoSyncCheck()
  {
    if (bk.Fh() == null)
      return;
    try
    {
      bk.getHandler().post(new f());
      return;
    }
    catch (Exception localException)
    {
      aa.e("C2Java", exception2String(localException));
      new StringBuilder().append(localException.getClass().getSimpleName()).append(":").append(localException.getStackTrace()[0]).append(", ").append(localException.getStackTrace()[1]).toString();
    }
  }

  public static void reportCrashStatistics(String paramString1, String paramString2)
  {
    try
    {
      at.azE().aN(paramString1, paramString2);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void reportFlowData(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool = true;
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[bool] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = Integer.valueOf(paramInt3);
    arrayOfObject[3] = Integer.valueOf(paramInt4);
    if (bk.Fc().Fi() != null);
    com.tencent.mm.network.a.c localc;
    while (true)
    {
      arrayOfObject[4] = Boolean.valueOf(bool);
      arrayOfObject[5] = cj.azV();
      aa.e("C2Java", "dknetstat ReportDataFlow %d,%d,%d,%d  getNetworkMoniter:%b  %s", arrayOfObject);
      localc = bk.Fc().Fi();
      if (localc != null)
        break;
      return;
      bool = false;
    }
    com.tencent.mm.network.a.a locala = bk.Fb();
    try
    {
      bk.getHandler().post(new i(paramInt1, localc, locala, paramInt2, paramInt3, paramInt4));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  @Deprecated
  public static void reportMsgAndKillProcess(String paramString)
  {
  }

  public static void reportNetConnectInfo(int paramInt)
  {
    try
    {
      bk.Fd().eJ(paramInt);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void reportStat(long paramLong1, long paramLong2, long paramLong3, long paramLong4, String paramString1, String paramString2, int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3, long paramLong5, long paramLong6, int paramInt4, int paramInt5, int paramInt6, long paramLong7, long paramLong8, long paramLong9)
  {
    com.tencent.mm.network.a.a locala = bk.Fb();
    if (locala == null)
    {
      aa.e("C2Java", "Monitor is null!!!");
      return;
    }
    try
    {
      bk.getHandler().post(new j(paramLong1, paramLong2, paramLong3, paramLong4, paramString2, paramInt1, paramInt3, paramBoolean, paramInt2, paramLong5, paramLong6, paramInt4, paramInt5, paramInt6, paramLong7, paramLong8, paramString1, paramLong9, locala));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static boolean req2Buf(int paramInt, ByteArrayOutputStream paramByteArrayOutputStream)
  {
    if (bk.Fg() == null)
      return false;
    try
    {
      boolean bool = bk.Fg().req2Buf(paramInt, paramByteArrayOutputStream);
      return bool;
    }
    catch (Exception localException)
    {
      aa.e("C2Java", exception2String(localException));
      new StringBuilder().append(localException.getClass().getSimpleName()).append(":").append(localException.getStackTrace()[0]).append(", ").append(localException.getStackTrace()[1]).toString();
    }
    return false;
  }

  public static void sessionTimeOut()
  {
    if (bk.Ff() == null)
      return;
    try
    {
      bk.Ff().ET();
      return;
    }
    catch (Exception localException)
    {
      aa.e("C2Java", exception2String(localException));
      new StringBuilder().append(localException.getClass().getSimpleName()).append(":").append(localException.getStackTrace()[0]).append(", ").append(localException.getStackTrace()[1]).toString();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.C2Java
 * JD-Core Version:    0.6.2
 */