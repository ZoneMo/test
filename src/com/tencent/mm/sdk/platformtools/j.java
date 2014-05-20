package com.tencent.mm.sdk.platformtools;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.net.Uri;
import android.os.Build.VERSION;
import java.util.Map;

public final class j
{
  public static int bKo = 0;
  public static String bKq = Build.VERSION.SDK_INT;
  public static int bKs = 0;
  public static int gcm = 0;
  public static String gcn = "market://details?id=" + al.getPackageName();
  public static boolean gco = false;
  public static boolean gcp = true;
  public static boolean gcq = false;
  public static int gcr = 0;

  public static String a(Context paramContext, int paramInt, boolean paramBoolean)
  {
    int i = 0xFF & paramInt >> 8;
    String str;
    if (i == 0)
      str = (0xF & paramInt >> 24) + "." + (0xFF & paramInt >> 16);
    while (true)
    {
      aa.d("MicroMsg.SDK.ChannelUtil", "minminor " + i);
      int j = 0xFFFFFFF & paramInt;
      if (paramContext != null);
      try
      {
        PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 128);
        if (localPackageInfo != null)
        {
          j = localPackageInfo.versionCode;
          str = localPackageInfo.versionName;
        }
        label117: if (paramBoolean)
        {
          str = str + " r" + j + "(build." + gcm + ")";
          aa.d("MicroMsg.SDK.ChannelUtil", "full version: " + str);
        }
        return str;
        str = (0xF & paramInt >> 24) + "." + (0xFF & paramInt >> 16) + "." + i;
      }
      catch (Exception localException)
      {
        break label117;
      }
    }
  }

  public static void bi(Context paramContext)
  {
    try
    {
      bKo = Integer.parseInt((String)u.sy(cj.b(paramContext.getAssets().open("channel.ini"))).get("CHANNEL"));
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.SDK.ChannelUtil", "setup channel id from channel.ini failed");
    }
  }

  public static void bj(Context paramContext)
  {
    try
    {
      Map localMap = u.sy(cj.b(paramContext.getAssets().open("profile.ini")));
      String str1 = cj.hW((String)localMap.get("PROFILE_DEVICE_TYPE"));
      bKq = str1;
      if (str1.length() <= 0)
        bKq = Build.VERSION.SDK_INT;
      bKs = parseInt((String)localMap.get("UPDATE_MODE"));
      gcm = parseInt((String)localMap.get("BUILD_REVISION"));
      gcq = parseBoolean((String)localMap.get("GPRS_ALERT"));
      gcr = parseInt((String)localMap.get("AUTO_ADD_ACOUNT"));
      aa.w("MicroMsg.SDK.ChannelUtil", "profileDeviceType=" + bKq);
      aa.w("MicroMsg.SDK.ChannelUtil", "updateMode=" + bKs);
      aa.w("MicroMsg.SDK.ChannelUtil", "shouldShowGprsAlert=" + gcq);
      aa.w("MicroMsg.SDK.ChannelUtil", "autoAddAccount=" + gcr);
      String str2 = (String)localMap.get("MARKET_URL");
      if ((str2 != null) && (str2.trim().length() != 0) && (Uri.parse(str2) != null))
        gcn = str2;
      aa.w("MicroMsg.SDK.ChannelUtil", "marketURL=" + gcn);
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.SDK.ChannelUtil", "setup profile from profile.ini failed");
    }
  }

  public static String o(Context paramContext, int paramInt)
  {
    return a(paramContext, paramInt, gco);
  }

  private static boolean parseBoolean(String paramString)
  {
    try
    {
      boolean bool = Boolean.parseBoolean(paramString);
      return bool;
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.SDK.ChannelUtil", localException.getMessage());
    }
    return false;
  }

  private static int parseInt(String paramString)
  {
    try
    {
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.SDK.ChannelUtil", localException.getMessage());
    }
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.j
 * JD-Core Version:    0.6.2
 */