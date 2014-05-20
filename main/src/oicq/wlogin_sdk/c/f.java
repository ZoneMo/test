package oicq.wlogin_sdk.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.security.SecureRandom;
import oicq.wlogin_sdk.a.k;

public final class f
{
  public static int hzA = 5;
  public static int hzB = 6;
  public static int hzC = 7;
  public static int hzD = 8;
  public static int hzE = 9;
  public static int hzF = 10;
  public static int hzG = 11;
  public static int hzH = 12;
  public static int hzI = 13;
  public static int hzJ = 14;
  public static int hzK = 1;
  public static c hzL = null;
  public static boolean hzM = false;
  public static int hzN = 4;
  public static int hzt = 65535;
  public static int hzu = 128;
  public static int hzv = 0;
  public static int hzw = 1;
  public static int hzx = 2;
  public static int hzy = 3;
  public static int hzz = 4;

  public static void A(Context paramContext, int paramInt)
  {
    SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("WLOGIN_SERVER_INFO", 0).edit();
    localEditor.putInt("network_type", paramInt);
    localEditor.commit();
  }

  public static void a(Context paramContext, byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = cr(paramContext);
    if ((arrayOfByte == null) || (arrayOfByte.length <= 0))
    {
      SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).edit();
      localEditor.putString("ksid", cM(paramArrayOfByte));
      localEditor.commit();
    }
  }

  public static void a(Exception paramException)
  {
    StringWriter localStringWriter = new StringWriter();
    PrintWriter localPrintWriter = new PrintWriter(localStringWriter, true);
    paramException.printStackTrace(localPrintWriter);
    localPrintWriter.flush();
    localStringWriter.flush();
    bn("exception:", localStringWriter.toString());
  }

  public static void a(byte[] paramArrayOfByte, int paramInt, long paramLong)
  {
    paramArrayOfByte[(paramInt + 7)] = ((byte)(int)(paramLong >> 0));
    paramArrayOfByte[(paramInt + 6)] = ((byte)(int)(paramLong >> 8));
    paramArrayOfByte[(paramInt + 5)] = ((byte)(int)(paramLong >> 16));
    paramArrayOfByte[(paramInt + 4)] = ((byte)(int)(paramLong >> 24));
    paramArrayOfByte[(paramInt + 3)] = ((byte)(int)(paramLong >> 32));
    paramArrayOfByte[(paramInt + 2)] = ((byte)(int)(paramLong >> 40));
    paramArrayOfByte[(paramInt + 1)] = ((byte)(int)(paramLong >> 48));
    paramArrayOfByte[(paramInt + 0)] = ((byte)(int)(paramLong >> 56));
  }

  public static byte[] aQT()
  {
    return new String("android").getBytes();
  }

  public static byte[] aQU()
  {
    return Build.VERSION.RELEASE.getBytes();
  }

  public static int aQV()
  {
    return (int)(2147483647.0D * Math.random());
  }

  public static byte[] aQW()
  {
    return SecureRandom.getSeed(16);
  }

  public static long aQX()
  {
    return k.aQu();
  }

  public static byte[] aQY()
  {
    return new byte[0];
  }

  private static String aQZ()
  {
    try
    {
      StackTraceElement localStackTraceElement = new Throwable().getStackTrace()[2];
      String str = "[" + localStackTraceElement.getFileName() + ":" + localStackTraceElement.getLineNumber() + "]";
      return str;
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  public static String aRa()
  {
    return new String("2013/09/23 17:30");
  }

  public static byte[] au(Context paramContext, String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramContext.getPackageManager().getPackageInfo(paramString, 0).versionName.getBytes();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
    }
    return new byte[0];
  }

  public static void b(Context paramContext, byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte != null) && (paramArrayOfByte.length > 0))
    {
      SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).edit();
      localEditor.putString("imei", cM(paramArrayOfByte));
      localEditor.commit();
    }
  }

  public static void b(byte[] paramArrayOfByte, int paramInt, long paramLong)
  {
    paramArrayOfByte[(paramInt + 3)] = ((byte)(int)(paramLong >> 0));
    paramArrayOfByte[(paramInt + 2)] = ((byte)(int)(paramLong >> 8));
    paramArrayOfByte[(paramInt + 1)] = ((byte)(int)(paramLong >> 16));
    paramArrayOfByte[(paramInt + 0)] = ((byte)(int)(paramLong >> 24));
  }

  public static void bm(String paramString1, String paramString2)
  {
    try
    {
      if (hzK >= 2)
      {
        if (hzL != null)
        {
          hzL.d(2, paramString1, paramString2);
          return;
        }
        if (hzM)
        {
          new StringBuilder("wlogin_sdk").append(aQZ()).toString();
          new StringBuilder(String.valueOf(paramString1)).append(":").append(paramString2).toString();
          return;
        }
      }
    }
    catch (Exception localException)
    {
    }
  }

  public static void bn(String paramString1, String paramString2)
  {
    try
    {
      if (hzK >= 0)
      {
        if (hzL != null)
        {
          hzL.d(0, paramString1, paramString2);
          return;
        }
        if (hzM)
        {
          new StringBuilder("wlogin_sdk").append(aQZ()).toString();
          new StringBuilder(String.valueOf(paramString1)).append(":").append(paramString2).toString();
          return;
        }
      }
    }
    catch (Exception localException)
    {
    }
  }

  private static byte c(byte paramByte)
  {
    if ((paramByte >= 48) && (paramByte <= 57))
      return (byte)(paramByte - 48);
    if ((paramByte >= 97) && (paramByte <= 102))
      return (byte)(10 + (paramByte - 97));
    if ((paramByte >= 65) && (paramByte <= 70))
      return (byte)(10 + (paramByte - 65));
    return 0;
  }

  public static byte[] cL(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte1 = SecureRandom.getSeed(16);
    byte[] arrayOfByte2 = new byte[arrayOfByte1.length + paramArrayOfByte.length];
    System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, arrayOfByte1.length);
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte2, arrayOfByte1.length, paramArrayOfByte.length);
    return d.cK(arrayOfByte2);
  }

  public static String cM(byte[] paramArrayOfByte)
  {
    String str;
    if (paramArrayOfByte == null)
      str = "";
    while (true)
    {
      return str;
      str = "";
      for (int i = 0; i < paramArrayOfByte.length; i++)
        str = new StringBuilder(String.valueOf(str)).append(Integer.toHexString(0xF & paramArrayOfByte[i] >> 4)).toString() + Integer.toHexString(0xF & paramArrayOfByte[i]);
    }
  }

  public static long cN(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return 0L;
    return paramArrayOfByte.length;
  }

  public static byte[] cj(Context paramContext)
  {
    WifiManager localWifiManager = (WifiManager)paramContext.getSystemService("wifi");
    if (localWifiManager != null)
    {
      WifiInfo localWifiInfo = localWifiManager.getConnectionInfo();
      if (localWifiInfo != null)
      {
        String str = localWifiInfo.getMacAddress();
        if (str != null)
          return str.getBytes();
      }
    }
    return new byte[0];
  }

  public static byte[] ck(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if (localTelephonyManager != null)
    {
      String str = localTelephonyManager.getDeviceId();
      if (str != null)
        return str.getBytes();
    }
    return new byte[0];
  }

  public static byte[] cl(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if (localTelephonyManager != null);
    for (String str1 = localTelephonyManager.getDeviceId(); ; str1 = null)
    {
      WifiManager localWifiManager = (WifiManager)paramContext.getSystemService("wifi");
      String str2 = null;
      if (localWifiManager != null)
      {
        WifiInfo localWifiInfo = localWifiManager.getConnectionInfo();
        str2 = null;
        if (localWifiInfo != null)
          str2 = localWifiInfo.getMacAddress();
      }
      String str3 = "";
      if (str1 != null)
        str3 = str3 + str1;
      if (str2 != null)
        str3 = str3 + str2;
      if (str3.length() <= 0)
        return new byte[0];
      return d.cK(str3.getBytes());
    }
  }

  public static byte[] cm(Context paramContext)
  {
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (localTelephonyManager.getSimState() == 5)
        return localTelephonyManager.getSimOperatorName().getBytes();
      byte[] arrayOfByte = new byte[0];
      return arrayOfByte;
    }
    catch (Throwable localThrowable)
    {
    }
    return new byte[0];
  }

  public static int cn(Context paramContext)
  {
    try
    {
      int j = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo().getType();
      i = j;
      if (i == 0)
        return 1;
    }
    catch (Exception localException)
    {
      int i;
      while (true)
        i = 0;
      if (i == 1)
        return 2;
    }
    return 0;
  }

  public static int co(Context paramContext)
  {
    return paramContext.getSharedPreferences("WLOGIN_SERVER_INFO", 0).getInt("network_type", 0);
  }

  public static void cp(Context paramContext)
  {
    SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("WLOGIN_NET_RETRY_TYPE", 0).edit();
    localEditor.putInt("type", 0);
    localEditor.commit();
  }

  public static String cq(Context paramContext)
  {
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (localNetworkInfo.getType() == 0)
      {
        String str = localNetworkInfo.getExtraInfo();
        if (str != null)
          return str;
      }
      else
      {
        return "wifi";
      }
    }
    catch (Exception localException)
    {
    }
    return "wifi";
  }

  public static byte[] cr(Context paramContext)
  {
    byte[] arrayOfByte1 = new String("").getBytes();
    byte[] arrayOfByte2;
    try
    {
      byte[] arrayOfByte3 = yg(paramContext.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).getString("ksid", new String("")));
      arrayOfByte2 = arrayOfByte3;
      if ((arrayOfByte2 == null) || (arrayOfByte2.length <= 0))
      {
        tf("get_ksid:null");
        return arrayOfByte2;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        StringWriter localStringWriter = new StringWriter();
        PrintWriter localPrintWriter = new PrintWriter(localStringWriter, true);
        localException.printStackTrace(localPrintWriter);
        localPrintWriter.flush();
        localStringWriter.flush();
        bn("exception", localStringWriter.toString());
        arrayOfByte2 = arrayOfByte1;
      }
      tf("get_ksid:" + cM(arrayOfByte2));
    }
    return arrayOfByte2;
  }

  public static byte[] cs(Context paramContext)
  {
    byte[] arrayOfByte1 = new byte[0];
    byte[] arrayOfByte2;
    try
    {
      byte[] arrayOfByte3 = yg(paramContext.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).getString("imei", new String("")));
      arrayOfByte2 = arrayOfByte3;
      if ((arrayOfByte2 == null) || (arrayOfByte2.length <= 0))
        return new byte[0];
    }
    catch (Exception localException)
    {
      while (true)
      {
        StringWriter localStringWriter = new StringWriter();
        PrintWriter localPrintWriter = new PrintWriter(localStringWriter, true);
        localException.printStackTrace(localPrintWriter);
        localPrintWriter.flush();
        localStringWriter.flush();
        bn("exception", localStringWriter.toString());
        arrayOfByte2 = arrayOfByte1;
      }
      tf("get_imei:" + cM(arrayOfByte2));
    }
    return arrayOfByte2;
  }

  public static byte[] ct(Context paramContext)
  {
    return paramContext.getPackageName().getBytes();
  }

  public static void h(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte[(paramInt1 + 0)] = ((byte)(paramInt2 >> 0));
  }

  public static void i(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte[(paramInt1 + 1)] = ((byte)(paramInt2 >> 0));
    paramArrayOfByte[(paramInt1 + 0)] = ((byte)(paramInt2 >> 8));
  }

  public static void j(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte[(paramInt1 + 3)] = ((byte)(paramInt2 >> 0));
    paramArrayOfByte[(paramInt1 + 2)] = ((byte)(paramInt2 >> 8));
    paramArrayOfByte[(paramInt1 + 1)] = ((byte)(paramInt2 >> 16));
    paramArrayOfByte[(paramInt1 + 0)] = ((byte)(paramInt2 >> 24));
  }

  public static void tf(String paramString)
  {
    try
    {
      if (hzK >= 2)
      {
        if (hzL != null)
        {
          hzL.f(2, paramString);
          return;
        }
        if (hzM)
        {
          new StringBuilder("wlogin_sdk").append(aQZ()).toString();
          return;
        }
      }
    }
    catch (Exception localException)
    {
    }
  }

  public static int v(byte[] paramArrayOfByte, int paramInt)
  {
    return 0xFF & paramArrayOfByte[paramInt];
  }

  public static int w(byte[] paramArrayOfByte, int paramInt)
  {
    return (0xFF00 & paramArrayOfByte[paramInt] << 8) + (0xFF & paramArrayOfByte[(paramInt + 1)] << 0);
  }

  public static int x(byte[] paramArrayOfByte, int paramInt)
  {
    return (0xFF000000 & paramArrayOfByte[paramInt] << 24) + (0xFF0000 & paramArrayOfByte[(paramInt + 1)] << 16) + (0xFF00 & paramArrayOfByte[(paramInt + 2)] << 8) + (0xFF & paramArrayOfByte[(paramInt + 3)] << 0);
  }

  private static byte[] yg(String paramString)
  {
    int i = 0;
    if (paramString == null)
      return new byte[0];
    byte[] arrayOfByte = new byte[paramString.length() / 2];
    while (true)
    {
      if (i >= paramString.length() / 2)
        return arrayOfByte;
      arrayOfByte[i] = ((byte)((c((byte)paramString.charAt(i * 2)) << 4) + c((byte)paramString.charAt(1 + i * 2))));
      i++;
    }
  }

  public static void yh(String paramString)
  {
    try
    {
      if (hzK > 0)
      {
        if (hzL != null)
        {
          hzL.f(1, paramString);
          return;
        }
        if (hzM)
        {
          new StringBuilder("wlogin_sdk").append(aQZ()).toString();
          return;
        }
      }
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.c.f
 * JD-Core Version:    0.6.2
 */