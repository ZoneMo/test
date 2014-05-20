package com.tencent.mm.sdk.platformtools;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;

public final class al
{
  private static Context context = null;
  private static String gdE = "com.tencent.mm";
  private static String gdF = "com.tencent.mm.ui.LauncherUI";
  private static Activity gdG;
  private static String pkgName = "com.tencent.mm";
  private static String processName = pkgName;

  public static String azp()
  {
    return gdF;
  }

  public static Activity azq()
  {
    return gdG;
  }

  public static String azr()
  {
    return gdE;
  }

  public static String azs()
  {
    return pkgName + "_preferences";
  }

  public static SharedPreferences azt()
  {
    if (context != null)
      return context.getSharedPreferences(azs(), 0);
    return null;
  }

  public static String azu()
  {
    return pkgName + "_tmp_preferences";
  }

  public static SharedPreferences azv()
  {
    if (context != null)
      return context.getSharedPreferences(azu(), 0);
    return null;
  }

  public static String azw()
  {
    return processName;
  }

  public static Context getContext()
  {
    return context;
  }

  public static String getPackageName()
  {
    return pkgName;
  }

  public static void r(Activity paramActivity)
  {
    gdG = paramActivity;
  }

  public static void sD(String paramString)
  {
    processName = paramString;
  }

  public static void setContext(Context paramContext)
  {
    context = paramContext;
    pkgName = paramContext.getPackageName();
    aa.d("MicroMsg.MMApplicationContext", "setup application context for package: " + pkgName);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.al
 * JD-Core Version:    0.6.2
 */