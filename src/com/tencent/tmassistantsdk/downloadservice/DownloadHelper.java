package com.tencent.tmassistantsdk.downloadservice;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.PowerManager.WakeLock;
import android.text.TextUtils;
import com.tencent.tmassistantsdk.util.GlobalUtil;
import com.tencent.tmassistantsdk.util.TMLog;
import java.net.URI;
import java.net.URLEncoder;

public class DownloadHelper
{
  public static final String TAG = DownloadHelper.class.getSimpleName();

  public static String correctURL(String paramString)
  {
    String str1 = paramString.replace("\r", "").replace("\n", "").trim();
    Object localObject = new String(str1);
    try
    {
      Uri localUri = Uri.parse(str1);
      String str2 = localUri.getLastPathSegment();
      if ((str2 != null) && (str2.length() > 0))
      {
        String str3 = ((String)localObject).replace(str2, URLEncoder.encode(localUri.getLastPathSegment()).replace("+", "%20"));
        localObject = str3;
      }
      return localObject;
    }
    catch (Exception localException)
    {
    }
    return localObject;
  }

  public static String generateFileNameFromURL(String paramString1, String paramString2)
  {
    String str1 = GlobalUtil.calcMD5AsString(paramString1);
    if (TextUtils.isEmpty(str1))
      str1 = Integer.toString(Math.abs(paramString1.hashCode()));
    String str2 = "";
    if (!TextUtils.isEmpty(paramString2))
    {
      if (!paramString2.equals("application/vnd.android.package-archive"))
        break label64;
      str2 = ".apk";
    }
    while (true)
    {
      return str1 + str2;
      label64: if (paramString2.equals("application/tm.android.apkdiff"))
        str2 = ".diff";
    }
  }

  public static String getNetStatus()
  {
    Context localContext = GlobalUtil.getInstance().getContext();
    if (localContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1)
      return "";
    NetworkInfo localNetworkInfo = ((ConnectivityManager)localContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if (localNetworkInfo == null)
      return "";
    if (localNetworkInfo.getType() == 1)
      return "wifi";
    String str1 = localNetworkInfo.getExtraInfo();
    if (str1 == null)
      return "";
    String str2 = str1.toLowerCase();
    TMLog.v(TAG, "netInfo  =  " + str2);
    return str2;
  }

  public static PowerManager.WakeLock getWakeLock()
  {
    return null;
  }

  public static boolean isNetworkConncted()
  {
    Context localContext = GlobalUtil.getInstance().getContext();
    if (localContext == null)
    {
      TMLog.w(TAG, "GlobalUtil.getInstance().getContext() == null.");
      return false;
    }
    NetworkInfo localNetworkInfo = ((ConnectivityManager)localContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if (localNetworkInfo != null);
    for (boolean bool = localNetworkInfo.isAvailable(); ; bool = false)
      return bool;
  }

  public static boolean isValidURL(String paramString)
  {
    try
    {
      new URI(correctURL(paramString));
      return true;
    }
    catch (Throwable localThrowable)
    {
    }
    return false;
  }

  public static boolean isWifi()
  {
    return "wifi".equals(getNetStatus());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.downloadservice.DownloadHelper
 * JD-Core Version:    0.6.2
 */