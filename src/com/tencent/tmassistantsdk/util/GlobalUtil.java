package com.tencent.tmassistantsdk.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Proxy;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.tencent.tmassistantsdk.downloadservice.DownloadHelper;
import com.tencent.tmassistantsdk.protocol.jce.Terminal;
import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

public class GlobalUtil
{
  static final int NET_TYPE_WIFI = 4;
  private static final String SharedPreferencesName = "TMAssistantSDKSharedPreference";
  private static GlobalUtil mInstance = null;
  private static int mMemUUID = 0;
  private static Terminal mPhoneTerminal = null;
  private static String mQUA = "";
  private Context mContext;

  public static ArrayList String2List(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    if (!TextUtils.isEmpty(paramString))
    {
      String[] arrayOfString = paramString.split(",");
      for (int i = 0; i < arrayOfString.length; i++)
      {
        String str = arrayOfString[i];
        if (!TextUtils.isEmpty(str))
          localArrayList.add(str);
      }
    }
    return localArrayList;
  }

  public static int assistantErrorCode2SDKErrorCode(int paramInt)
  {
    switch (paramInt)
    {
    case -1000:
    case -26:
    case -24:
    default:
      return 604;
    case 0:
      return 0;
    case -1:
      return 709;
    case -11:
      return 708;
    case -12:
      return 710;
    case -13:
      return 703;
    case -15:
      return 1;
    case -16:
      return 711;
    case -21:
      return 700;
    case -22:
      return 712;
    case -23:
      return 601;
    case -25:
      return 602;
    case -27:
      return 713;
    case -28:
    }
    return 701;
  }

  public static int assistantState2SDKState(int paramInt)
  {
    switch (paramInt)
    {
    case 5:
    case 7:
    case 8:
    default:
      return 0;
    case 1:
      return 2;
    case 6:
      return 1;
    case 2:
      return 3;
    case 4:
      return 4;
    case 3:
      return 5;
    case 9:
    }
    return 6;
  }

  public static String calcMD5AsString(String paramString)
  {
    int i = 0;
    Object localObject = "";
    byte[] arrayOfByte1;
    if (!TextUtils.isEmpty(paramString))
      arrayOfByte1 = paramString.getBytes();
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.reset();
      localMessageDigest.update(arrayOfByte1, 0, arrayOfByte1.length);
      byte[] arrayOfByte2 = localMessageDigest.digest();
      StringBuffer localStringBuffer = new StringBuffer();
      while (i < arrayOfByte2.length)
      {
        localStringBuffer.append(Integer.toHexString(0xFF & arrayOfByte2[i]));
        i++;
      }
      String str = localStringBuffer.toString();
      localObject = str;
      return localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
    }
    return localObject;
  }

  public static String getAppPackageName(Context paramContext)
  {
    if (paramContext != null)
      return paramContext.getPackageName();
    return "";
  }

  public static int getAppVersionCode(Context paramContext)
  {
    int i = 0;
    PackageManager localPackageManager;
    if (paramContext != null)
      localPackageManager = paramContext.getPackageManager();
    try
    {
      i = localPackageManager.getPackageInfo(paramContext.getPackageName(), 0).versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return 0;
  }

  public static GlobalUtil getInstance()
  {
    try
    {
      if (mInstance == null)
        mInstance = new GlobalUtil();
      GlobalUtil localGlobalUtil = mInstance;
      return localGlobalUtil;
    }
    finally
    {
    }
  }

  public static int getMemUUID()
  {
    try
    {
      int i = mMemUUID;
      mMemUUID = i + 1;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static byte isWap()
  {
    if (!TextUtils.isEmpty(Proxy.getDefaultHost()));
    for (int i = 1; ; i = 0)
      return (byte)i;
  }

  public static void updateFilePathAuthorized(String paramString)
  {
    File localFile = new File(paramString);
    String str1 = localFile.getParent();
    String str2 = new File(str1).getParent();
    String str3 = new File(str2).getParent();
    try
    {
      String str4 = "chmod 777 " + localFile.getAbsolutePath();
      Runtime.getRuntime().exec(str4);
      String str5 = "chmod 777 " + str1;
      Runtime.getRuntime().exec(str5);
      String str6 = "chmod 777 " + str2;
      Runtime.getRuntime().exec(str6);
      String str7 = "chmod 777" + str3;
      Runtime.getRuntime().exec(str7);
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  public boolean canReportValue()
  {
    boolean bool1 = DownloadHelper.isWifi();
    boolean bool2 = false;
    SharedPreferences localSharedPreferences;
    if (bool1)
    {
      localSharedPreferences = this.mContext.getSharedPreferences("TMAssistantSDKSharedPreference", 0);
      if (localSharedPreferences == null)
        break label58;
    }
    label58: for (int i = Byte.parseByte(localSharedPreferences.getString("TMAssistantSDKNetType", "0")); ; i = 0)
    {
      int j = i & 0x4;
      bool2 = false;
      if (j == 4)
        bool2 = true;
      return bool2;
    }
  }

  public void destroy()
  {
    this.mContext = null;
  }

  public String getAndroidIdInPhone()
  {
    return Settings.Secure.getString(getContext().getContentResolver(), "android_id");
  }

  public Context getContext()
  {
    return this.mContext;
  }

  public String getImei()
  {
    return ((TelephonyManager)getContext().getSystemService("phone")).getDeviceId();
  }

  public String getImsi()
  {
    return ((TelephonyManager)getContext().getSystemService("phone")).getSubscriberId();
  }

  public String getMacAddress()
  {
    WifiInfo localWifiInfo = ((WifiManager)getContext().getSystemService("wifi")).getConnectionInfo();
    if (localWifiInfo != null)
      return localWifiInfo.getMacAddress();
    return "";
  }

  public String getNetworkOperator()
  {
    return ((TelephonyManager)this.mContext.getSystemService("phone")).getNetworkOperator();
  }

  public int getNetworkType()
  {
    return ((TelephonyManager)this.mContext.getSystemService("phone")).getNetworkType();
  }

  public String getPhoneGuid()
  {
    SharedPreferences localSharedPreferences = this.mContext.getSharedPreferences("TMAssistantSDKSharedPreference", 0);
    if (localSharedPreferences != null)
      return localSharedPreferences.getString("TMAssistantSDKPhoneGUID", "");
    return "";
  }

  public Terminal getPhoneTerminal()
  {
    try
    {
      String str1;
      String str2;
      if (mPhoneTerminal == null)
      {
        str1 = getAndroidIdInPhone();
        str2 = getPhoneGuid();
      }
      try
      {
        Terminal localTerminal2 = new Terminal();
        mPhoneTerminal = localTerminal2;
        localTerminal2.androidId = str1;
        mPhoneTerminal.androidIdSdCard = str2;
        mPhoneTerminal.imei = getImei();
        mPhoneTerminal.imsi = getImsi();
        mPhoneTerminal.macAdress = getMacAddress();
        Terminal localTerminal1 = mPhoneTerminal;
        return localTerminal1;
      }
      finally
      {
        localObject2 = finally;
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  public int getQQDownloaderAPILevel()
  {
    try
    {
      ApplicationInfo localApplicationInfo = this.mContext.getPackageManager().getApplicationInfo("com.tencent.android.qqdownloader", 128);
      int i = 0;
      if (localApplicationInfo != null)
      {
        Bundle localBundle = localApplicationInfo.metaData;
        i = 0;
        if (localBundle != null)
        {
          int j = localApplicationInfo.metaData.getInt("com.tencent.android.qqdownloader.sdk.apilevel");
          i = j;
        }
      }
      return i;
    }
    catch (Exception localException)
    {
    }
    return 0;
  }

  public int getQQDownloaderVersionCode()
  {
    PackageManager localPackageManager = this.mContext.getPackageManager();
    if (localPackageManager != null)
      try
      {
        PackageInfo localPackageInfo = localPackageManager.getPackageInfo("com.tencent.android.qqdownloader", 0);
        if (localPackageInfo == null)
          return 0;
        int i = localPackageInfo.versionCode;
        return i;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
      }
    return 0;
  }

  public String getQUA()
  {
    return mQUA;
  }

  public void setContext(Context paramContext)
  {
    this.mContext = paramContext;
    mQUA = new QUASetting(paramContext).buildQUA();
  }

  public void setNetTypeValue(byte paramByte)
  {
    SharedPreferences localSharedPreferences = this.mContext.getSharedPreferences("TMAssistantSDKSharedPreference", 0);
    if ((localSharedPreferences != null) && (Byte.parseByte(localSharedPreferences.getString("TMAssistantSDKNetType", "0")) != paramByte))
      localSharedPreferences.edit().putString("TMAssistantSDKNetType", String.valueOf(paramByte)).commit();
  }

  public void setPhoneGuid(String paramString)
  {
    if (paramString != null)
    {
      SharedPreferences localSharedPreferences = this.mContext.getSharedPreferences("TMAssistantSDKSharedPreference", 0);
      if (localSharedPreferences != null)
        localSharedPreferences.edit().putString("TMAssistantSDKPhoneGUID", paramString).commit();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.util.GlobalUtil
 * JD-Core Version:    0.6.2
 */