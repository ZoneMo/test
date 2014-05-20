package com.tencent.mapapi.map;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;

public final class bu
{
  public static Uri XW = Uri.parse("content://telephony/carriers/preferapn");

  public static String q(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    int i;
    if ((localNetworkInfo == null) || (!localNetworkInfo.isAvailable()))
      i = 0;
    while (true)
      switch (i)
      {
      default:
        return "unknow";
        int j = localNetworkInfo.getType();
        if (j == 1)
        {
          i = 5;
        }
        else if (j == 0)
        {
          String str = localNetworkInfo.getExtraInfo();
          if ((str == null) || (str.equals("")))
            i = 6;
          else if (str.equalsIgnoreCase("cmwap"))
            i = 1;
          else if (str.equalsIgnoreCase("3gwap"))
            i = 3;
          else if (str.equalsIgnoreCase("uniwap"))
            i = 2;
          else if (str.equalsIgnoreCase("ctwap"))
            i = 4;
        }
        else
        {
          i = 6;
        }
        break;
      case 5:
      case 3:
      case 2:
      case 1:
      case 4:
      }
    return "wifi";
    return "3gwap";
    return "uniwap";
    return "cmwap";
    return "ctwap";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.bu
 * JD-Core Version:    0.6.2
 */