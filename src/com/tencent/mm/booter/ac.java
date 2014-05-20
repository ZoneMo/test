package com.tencent.mm.booter;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.tencent.mm.network.bk;
import com.tencent.mm.sdk.platformtools.aa;

public final class ac
{
  private WifiInfo caA = null;
  private NetworkInfo caz = null;

  final boolean oM()
  {
    try
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)bk.getContext().getSystemService("connectivity");
      if (localConnectivityManager == null)
      {
        aa.w("MicroMsg.NetworkChangeMgr", "can't get ConnectivityManager");
        return false;
      }
      NetworkInfo localNetworkInfo1 = localConnectivityManager.getActiveNetworkInfo();
      if (localNetworkInfo1 == null)
      {
        aa.w("MicroMsg.NetworkChangeMgr", "ActiveNetwork is null, has no network");
        return false;
      }
      if (localNetworkInfo1.getType() == 1)
      {
        i = 1;
        WifiInfo localWifiInfo;
        if (i != 0)
        {
          localWifiInfo = ((WifiManager)bk.getContext().getSystemService("wifi")).getConnectionInfo();
          if ((localWifiInfo != null) && (this.caA != null) && (this.caA.getBSSID().equals(localWifiInfo.getBSSID())) && (this.caA.getSSID().equals(localWifiInfo.getSSID())) && (this.caA.getNetworkId() == localWifiInfo.getNetworkId()))
          {
            aa.w("MicroMsg.NetworkChangeMgr", "Same Wifi, do not NetworkChanged");
            return false;
          }
          aa.e("MicroMsg.NetworkChangeMgr", "New Wifi Info:%s", new Object[] { localWifiInfo });
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = this.caA;
          aa.e("MicroMsg.NetworkChangeMgr", "OldWifi Info:%s", arrayOfObject1);
        }
        int m;
        int n;
        do
        {
          int j;
          int k;
          do
          {
            String str2;
            do
            {
              String str1;
              do
              {
                NetworkInfo localNetworkInfo2;
                do
                {
                  if (i == 0)
                  {
                    aa.e("MicroMsg.NetworkChangeMgr", "New NetworkInfo:%s", new Object[] { localNetworkInfo1 });
                    if (this.caz != null)
                    {
                      Object[] arrayOfObject2 = new Object[1];
                      arrayOfObject2[0] = this.caz;
                      aa.e("MicroMsg.NetworkChangeMgr", "Old NetworkInfo:%s", arrayOfObject2);
                    }
                  }
                  this.caz = localNetworkInfo1;
                  this.caA = localWifiInfo;
                  break;
                  if ((this.caz != null) && (this.caz.getExtraInfo() != null) && (localNetworkInfo1.getExtraInfo() != null) && (this.caz.getExtraInfo().equals(localNetworkInfo1.getExtraInfo())) && (this.caz.getSubtype() == localNetworkInfo1.getSubtype()) && (this.caz.getType() == localNetworkInfo1.getType()))
                  {
                    aa.w("MicroMsg.NetworkChangeMgr", "Same Network, do not NetworkChanged");
                    return false;
                  }
                  localNetworkInfo2 = this.caz;
                  localWifiInfo = null;
                }
                while (localNetworkInfo2 == null);
                str1 = this.caz.getExtraInfo();
                localWifiInfo = null;
              }
              while (str1 != null);
              str2 = localNetworkInfo1.getExtraInfo();
              localWifiInfo = null;
            }
            while (str2 != null);
            j = this.caz.getSubtype();
            k = localNetworkInfo1.getSubtype();
            localWifiInfo = null;
          }
          while (j != k);
          m = this.caz.getType();
          n = localNetworkInfo1.getType();
          localWifiInfo = null;
        }
        while (m != n);
        aa.w("MicroMsg.NetworkChangeMgr", "Same Network, do not NetworkChanged");
        return false;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        break;
        int i = 0;
      }
    }
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.ac
 * JD-Core Version:    0.6.2
 */