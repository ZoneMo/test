package com.tencent.a.a;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public final class b
{
  private static b XY;
  private Context a;

  public static Context getContext()
  {
    return na().a;
  }

  public static boolean isInitialized()
  {
    return na().a != null;
  }

  public static boolean isWifi()
  {
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)na().a.getSystemService("connectivity")).getActiveNetworkInfo();
      if (localNetworkInfo != null)
      {
        int i = localNetworkInfo.getType();
        if (i == 1)
          return true;
      }
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public static b na()
  {
    if (XY == null)
      XY = new b();
    return XY;
  }

  public static boolean nb()
  {
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)na().a.getSystemService("connectivity")).getActiveNetworkInfo();
      if (localNetworkInfo != null)
      {
        boolean bool = localNetworkInfo.isAvailable();
        return bool;
      }
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public final void r(Context paramContext)
  {
    if (this.a == null)
      this.a = paramContext.getApplicationContext();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.a.a.b
 * JD-Core Version:    0.6.2
 */