package com.tencent.mm.jni.platformcomm;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import com.tencent.mm.sdk.platformtools.aa;

public final class c
{
  private static long cgy = 10000L;
  private static Context context = null;

  public static void J(Context paramContext)
  {
    context = paramContext;
    ((TelephonyManager)paramContext.getSystemService("phone")).listen(new d(), 256);
  }

  public static long rY()
  {
    return 0L;
  }

  public static long rZ()
  {
    return cgy;
  }

  public static long sa()
  {
    WifiInfo localWifiInfo = ((WifiManager)context.getSystemService("wifi")).getConnectionInfo();
    if ((localWifiInfo != null) && (localWifiInfo.getBSSID() != null))
    {
      int i = WifiManager.calculateSignalLevel(localWifiInfo.getRssi(), 10);
      aa.v("MicroMsg.NetworkSignalUtil", "Wifi Signal:" + i * 10);
      if (i > 10)
        i = 10;
      if (i < 0)
        i = 0;
      return i * 10;
    }
    aa.v("MicroMsg.NetworkSignalUtil", "Can Not Get Wifi Signal");
    return 0L;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.jni.platformcomm.c
 * JD-Core Version:    0.6.2
 */