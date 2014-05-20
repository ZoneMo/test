package com.tencent.mm.compatible.c;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import com.tencent.mm.a.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Random;

public final class s
{
  public static r ceJ = new r();
  public static b ceK = new b();
  public static a ceL = new a();
  private static int ceM = -1;
  public static m ceN = new m();
  private static String ceO = null;

  private static String F(Context paramContext)
  {
    if (paramContext == null)
      return null;
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (localTelephonyManager == null)
        return null;
      String str1 = localTelephonyManager.getDeviceId();
      if (str1 == null)
        return null;
      String str2 = str1.trim();
      return str2;
    }
    catch (SecurityException localSecurityException)
    {
      aa.e("MicroMsg.DeviceInfo", "getDeviceId failed, security exception");
      return null;
    }
    catch (Exception localException)
    {
      label53: break label53;
    }
  }

  public static void bj(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0));
    do
    {
      do
        return;
      while (paramString.hashCode() == ceM);
      ceM = paramString.hashCode();
      ceJ.reset();
      ceK.reset();
      ceL.reset();
      ceN.reset();
      new t();
    }
    while (t.a(paramString, ceJ, ceK, ceL, ceN));
  }

  public static String getAndroidId()
  {
    String str = Settings.Secure.getString(al.getContext().getContentResolver(), "android_id");
    aa.d("MicroMsg.DeviceInfo", "androidid:[%s]", new Object[] { str });
    return str;
  }

  public static String getSimCountryIso()
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)al.getContext().getSystemService("phone");
    if (localTelephonyManager != null)
    {
      String str = localTelephonyManager.getSimCountryIso();
      aa.d("MicroMsg.DeviceInfo", "get isoCode:[%s]", new Object[] { str });
      return str;
    }
    return null;
  }

  public static String pU()
  {
    String str1 = (String)n.pK().get(258);
    if (str1 != null)
      return str1;
    String str2 = F(al.getContext());
    if (str2 == null)
      str2 = "1234567890ABCDEF";
    n.pK().set(258, str2);
    return str2;
  }

  public static String pV()
  {
    StringBuilder localStringBuilder;
    String str1;
    String str2;
    if (ceO == null)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(Settings.Secure.getString(al.getContext().getContentResolver(), "android_id"));
      str1 = (String)n.pK().get(256);
      if (str1 == null)
        break label171;
      localStringBuilder.append(str1);
      str2 = (String)n.pK().get(259);
      if (str2 == null)
        break label188;
      aa.d("MicroMsg.DeviceInfo", "getHardWareId from file " + str2);
    }
    while (true)
    {
      localStringBuilder.append(str2);
      String str3 = localStringBuilder.toString();
      ceO = "A" + f.h(str3.getBytes()).substring(0, 15);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = ceO;
      arrayOfObject[1] = str3;
      aa.c("MicroMsg.DeviceInfo", "guid:%s, dev=%s", arrayOfObject);
      return ceO;
      label171: str1 = pX();
      n.pK().set(256, str1);
      break;
      label188: str2 = Build.MANUFACTURER + Build.MODEL + p.pO();
      n.pK().set(259, str2);
      aa.d("MicroMsg.DeviceInfo", "getHardWareId " + str2);
    }
  }

  public static String pW()
  {
    WifiManager localWifiManager = (WifiManager)al.getContext().getSystemService("wifi");
    if (localWifiManager == null);
    for (WifiInfo localWifiInfo = null; localWifiInfo != null; localWifiInfo = localWifiManager.getConnectionInfo())
      return localWifiInfo.getMacAddress();
    return null;
  }

  private static String pX()
  {
    String str1 = cj.bC(al.getContext());
    Object localObject;
    if ((str1 != null) && (str1.length() > 0))
      localObject = ("A" + str1 + "123456789ABCDEF").substring(0, 15);
    while (true)
    {
      aa.w("MicroMsg.DeviceInfo", "generated deviceId=" + (String)localObject);
      return localObject;
      Random localRandom = new Random();
      localRandom.setSeed(System.currentTimeMillis());
      localObject = "A";
      int i = 0;
      while (i < 15)
      {
        String str2 = (String)localObject + (char)(65 + localRandom.nextInt(25));
        i++;
        localObject = str2;
      }
    }
  }

  public static String[] pY()
  {
    int i = 2;
    String[] arrayOfString1 = new String[i];
    arrayOfString1[0] = "";
    arrayOfString1[1] = "0";
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"), 8192);
      String[] arrayOfString2 = cj.hW(localBufferedReader.readLine()).split("\\s+");
      while (i < arrayOfString2.length)
      {
        arrayOfString1[0] = (arrayOfString1[0] + arrayOfString2[i] + " ");
        i++;
      }
      arrayOfString1[1] = cj.hW(localBufferedReader.readLine()).split("\\s+")[2];
      localBufferedReader.close();
      return arrayOfString1;
    }
    catch (IOException localIOException)
    {
    }
    return arrayOfString1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.c.s
 * JD-Core Version:    0.6.2
 */