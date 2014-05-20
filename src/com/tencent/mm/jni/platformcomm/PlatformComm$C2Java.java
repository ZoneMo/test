package com.tencent.mm.jni.platformcomm;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ba;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;

public class PlatformComm$C2Java
{
  private static String exception2String(Exception paramException)
  {
    StringWriter localStringWriter = new StringWriter();
    paramException.printStackTrace(new PrintWriter(localStringWriter));
    return localStringWriter.toString();
  }

  public static String getAppFilePath()
  {
    if (PlatformComm.sb() == null)
      return null;
    try
    {
      File localFile = PlatformComm.sb().getFilesDir();
      if (!localFile.exists())
        localFile.createNewFile();
      String str = localFile.toString();
      return str;
    }
    catch (Exception localException)
    {
      aa.e("PlatformComm", exception2String(localException));
      new StringBuilder().append(localException.getClass().getSimpleName()).append(":").append(localException.getStackTrace()[0]).append(", ").append(localException.getStackTrace()[1]).toString();
    }
    return null;
  }

  public static PlatformComm.SIMInfo getCurSIMInfo()
  {
    try
    {
      if (PlatformComm.sb() == null)
        return null;
      int i = ba.bm(PlatformComm.sb());
      if (i != 0)
      {
        PlatformComm.SIMInfo localSIMInfo = new PlatformComm.SIMInfo();
        localSIMInfo.ispCode = String.valueOf(i);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localSIMInfo.ispCode;
        aa.e("PlatformComm", "getISPCode MCC_MNC=%s", arrayOfObject);
        localSIMInfo.ispName = ba.bn(PlatformComm.sb());
        return localSIMInfo;
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static PlatformComm.WifiInfo getCurWifiInfo()
  {
    try
    {
      if (PlatformComm.sb() == null)
        return null;
      ConnectivityManager localConnectivityManager = (ConnectivityManager)PlatformComm.sb().getSystemService("connectivity");
      if (localConnectivityManager == null)
        return null;
      NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
      if ((localNetworkInfo != null) && (1 == localNetworkInfo.getType()))
      {
        WifiManager localWifiManager = (WifiManager)PlatformComm.sb().getSystemService("wifi");
        if (localWifiManager == null)
          return null;
        WifiInfo localWifiInfo = localWifiManager.getConnectionInfo();
        if (localWifiInfo == null)
          return null;
        PlatformComm.WifiInfo localWifiInfo1 = new PlatformComm.WifiInfo();
        localWifiInfo1.ssid = localWifiInfo.getSSID();
        localWifiInfo1.bssid = localWifiInfo.getBSSID();
        return localWifiInfo1;
      }
    }
    catch (Exception localException)
    {
      return null;
    }
    return null;
  }

  public static int getNetInfo()
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)PlatformComm.sb().getSystemService("connectivity");
    if (localConnectivityManager == null)
      return -1;
    try
    {
      NetworkInfo localNetworkInfo2 = localConnectivityManager.getActiveNetworkInfo();
      localNetworkInfo1 = localNetworkInfo2;
      if (localNetworkInfo1 == null)
        return -1;
    }
    catch (Exception localException1)
    {
      NetworkInfo localNetworkInfo1;
      while (true)
        localNetworkInfo1 = null;
      try
      {
        int i = localNetworkInfo1.getType();
        switch (i)
        {
        default:
          return 3;
        case 1:
          return 1;
        case 0:
        case 2:
        case 3:
        case 4:
        case 5:
        }
        return 2;
      }
      catch (Exception localException2)
      {
      }
    }
    return 3;
  }

  public static int getProxyInfo(StringBuffer paramStringBuffer)
  {
    return -1;
  }

  public static long getSignal(boolean paramBoolean)
  {
    try
    {
      if (PlatformComm.sb() == null)
        return 0L;
      if (paramBoolean)
        return c.sa();
      long l = c.rZ();
      return l;
    }
    catch (Exception localException)
    {
    }
    return 0L;
  }

  public static int getStatisticsNetType()
  {
    if (PlatformComm.sb() == null)
      return 0;
    try
    {
      int i = ba.aK(PlatformComm.sb());
      if (i == -1)
        return -1;
      if (ba.bp(PlatformComm.sb()))
        return 3;
      if (ba.bs(PlatformComm.sb()))
        return 4;
      if (ba.bq(PlatformComm.sb()))
        return 5;
      if (ba.lJ(i))
        return 1;
      boolean bool = ba.lI(i);
      if (bool)
        return 2;
      return 6;
    }
    catch (Exception localException)
    {
      aa.e("PlatformComm", exception2String(localException));
      new StringBuilder().append(localException.getClass().getSimpleName()).append(":").append(localException.getStackTrace()[0]).append(", ").append(localException.getStackTrace()[1]).toString();
    }
    return -1;
  }

  public static boolean isNetworkConnected()
  {
    if (PlatformComm.sb() == null)
      return false;
    try
    {
      boolean bool = ba.bw(PlatformComm.sb());
      return bool;
    }
    catch (Exception localException)
    {
      aa.e("PlatformComm", exception2String(localException));
      new StringBuilder().append(localException.getClass().getSimpleName()).append(":").append(localException.getStackTrace()[0]).append(", ").append(localException.getStackTrace()[1]).toString();
    }
    return false;
  }

  public static void restartProcess()
  {
    if (PlatformComm.cgz == null)
      return;
    try
    {
      PlatformComm.sc().post(new e());
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static boolean startAlarm(int paramInt1, int paramInt2)
  {
    if (PlatformComm.sb() == null)
      return false;
    try
    {
      boolean bool = Alarm.a(paramInt1, paramInt2, PlatformComm.sb());
      return bool;
    }
    catch (Exception localException)
    {
      aa.e("PlatformComm", exception2String(localException));
      new StringBuilder().append(localException.getClass().getSimpleName()).append(":").append(localException.getStackTrace()[0]).append(", ").append(localException.getStackTrace()[1]).toString();
    }
    return false;
  }

  public static boolean stopAlarm(int paramInt)
  {
    if (PlatformComm.sb() == null)
      return false;
    try
    {
      boolean bool = Alarm.a(paramInt, PlatformComm.sb());
      return bool;
    }
    catch (Exception localException)
    {
      aa.e("PlatformComm", exception2String(localException));
      new StringBuilder().append(localException.getClass().getSimpleName()).append(":").append(localException.getStackTrace()[0]).append(", ").append(localException.getStackTrace()[1]).toString();
    }
    return false;
  }

  public static WakerLock wakeupLock_new()
  {
    if (PlatformComm.sb() == null)
      return null;
    try
    {
      WakerLock localWakerLock = new WakerLock(PlatformComm.sb());
      return localWakerLock;
    }
    catch (Exception localException)
    {
      aa.e("PlatformComm", exception2String(localException));
      new StringBuilder().append(localException.getClass().getSimpleName()).append(":").append(localException.getStackTrace()[0]).append(", ").append(localException.getStackTrace()[1]).toString();
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.jni.platformcomm.PlatformComm.C2Java
 * JD-Core Version:    0.6.2
 */