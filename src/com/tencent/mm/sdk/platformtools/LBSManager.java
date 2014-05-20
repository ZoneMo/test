package com.tencent.mm.sdk.platformtools;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import java.util.LinkedList;
import java.util.List;

public class LBSManager extends BroadcastReceiver
{
  private static w gdf;
  int cFR;
  private Context context;
  private x gdg;
  private LocationManager gdh;
  private PendingIntent gdi;
  private boolean gdj = false;
  boolean gdk;
  boolean gdl = false;
  boolean gdm = false;
  private ay gdn = new ay(new v(this), false);

  public LBSManager(Context paramContext, x paramx)
  {
    this.gdg = paramx;
    WifiManager localWifiManager = (WifiManager)paramContext.getSystemService("wifi");
    if (localWifiManager != null)
      localWifiManager.startScan();
    this.gdk = false;
    this.cFR = 0;
    this.context = paramContext;
    bj.bA(paramContext);
    this.gdh = ((LocationManager)paramContext.getSystemService("location"));
    ayW();
    this.gdi = PendingIntent.getBroadcast(paramContext, 0, new Intent("filter_gps"), 134217728);
  }

  private boolean ayW()
  {
    LocationManager localLocationManager = this.gdh;
    boolean bool = false;
    if (localLocationManager != null);
    try
    {
      this.gdh.sendExtraCommand("gps", "force_xtra_injection", null);
      this.gdh.sendExtraCommand("gps", "force_time_injection", null);
      bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.LBSManager", localException.toString());
    }
    return false;
  }

  private void azb()
  {
    this.gdn.azn();
    this.gdk = true;
  }

  public final void IR()
  {
    aa.i("MicroMsg.LBSManager", "removed gps update on destroy");
    ayZ();
    if (this.gdn != null)
      azb();
    this.gdg = null;
    this.context = null;
    this.gdn = null;
    this.gdh = null;
  }

  public final boolean ayX()
  {
    try
    {
      boolean bool = this.gdh.isProviderEnabled("gps");
      return bool;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public final boolean ayY()
  {
    try
    {
      boolean bool = this.gdh.isProviderEnabled("network");
      return bool;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public final void ayZ()
  {
    aa.i("MicroMsg.LBSManager", "removed gps update");
    if (this.gdh != null)
      this.gdh.removeUpdates(this.gdi);
    try
    {
      this.context.unregisterReceiver(this);
      return;
    }
    catch (Exception localException)
    {
      aa.i("MicroMsg.LBSManager", "location receiver has already unregistered");
    }
  }

  public final void aza()
  {
    lE(500);
  }

  public final void azc()
  {
    this.gdl = false;
    this.gdm = false;
  }

  public final String azd()
  {
    return bj.ap(bj.bB(this.context));
  }

  public final String aze()
  {
    WifiManager localWifiManager = (WifiManager)this.context.getSystemService("wifi");
    if (localWifiManager == null)
    {
      aa.e("MicroMsg.LBSManager", "no wifi service");
      return "";
    }
    if (localWifiManager.getConnectionInfo() == null)
    {
      aa.e("MicroMsg.LBSManager", "WIFILocation wifi info null");
      return "";
    }
    LinkedList localLinkedList = new LinkedList();
    List localList = localWifiManager.getScanResults();
    if (localList != null)
      for (int i = 0; i < localList.size(); i++)
        localLinkedList.add(new bl(((ScanResult)localList.get(i)).BSSID, ((ScanResult)localList.get(i)).level));
    return bj.ao(localLinkedList);
  }

  public final void lE(int paramInt)
  {
    if ((!ayX()) && (!ayY()))
      return;
    if (paramInt > 0);
    while (true)
    {
      aa.i("MicroMsg.LBSManager", "requested gps update");
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("filter_gps");
      this.context.registerReceiver(this, localIntentFilter);
      if (ayX())
        this.gdh.requestLocationUpdates("gps", paramInt, 0.0F, this.gdi);
      if (!ayY())
        break;
      this.gdh.requestLocationUpdates("network", paramInt, 0.0F, this.gdi);
      return;
      paramInt = 500;
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramIntent == null) || (paramIntent.getExtras() == null));
    Location localLocation;
    boolean bool;
    int i;
    String str1;
    String str2;
    label413: 
    do
    {
      do
      {
        do
        {
          return;
          localLocation = (Location)paramIntent.getExtras().get("location");
          this.cFR = (1 + this.cFR);
        }
        while (localLocation == null);
        bool = "gps".equals(localLocation.getProvider());
      }
      while (((!bool) || (localLocation.getAccuracy() > 200.0F)) && ((bool) || (localLocation.getAccuracy() > 1000.0F) || (localLocation.getAccuracy() <= 0.0F)));
      if (bool);
      for (i = 0; ; i = 1)
      {
        float f1 = (float)localLocation.getLatitude();
        float f2 = (float)localLocation.getLongitude();
        int j = (int)localLocation.getAccuracy();
        if (j != 0)
        {
          aa.v("MicroMsg.LBSManager", "setLocationCache [" + f1 + "," + f2 + "] acc:" + j + " source:" + i);
          if (gdf == null)
            gdf = new w();
          gdf.dMK = f1;
          gdf.dML = f2;
          gdf.gdp = j;
          gdf.time = System.currentTimeMillis();
          gdf.bUd = i;
        }
        if ((this.gdg == null) || ((this.gdk) && (this.gdl) && (this.gdm)))
          break;
        str1 = cj.hW(aze());
        str2 = cj.hW(azd());
        if (this.gdk)
          break label413;
        azb();
        this.gdk = true;
        aa.v("MicroMsg.LBSManager", "location by provider ok:[" + localLocation.getLatitude() + " , " + localLocation.getLongitude() + "]  accuracy:" + localLocation.getAccuracy() + "  retry count:" + this.cFR + " isGpsProvider:" + bool);
        this.gdg.a((float)localLocation.getLatitude(), (float)localLocation.getLongitude(), (int)localLocation.getAccuracy(), i, str1, str2, true);
        return;
      }
      if ((!this.gdl) && (i == 0))
      {
        this.gdl = true;
        aa.v("MicroMsg.LBSManager", "report location by GPS ok:[" + localLocation.getLatitude() + " , " + localLocation.getLongitude() + "]  accuracy:" + localLocation.getAccuracy() + "  retry count:" + this.cFR + " isGpsProvider:" + bool);
        this.gdg.a((float)localLocation.getLatitude(), (float)localLocation.getLongitude(), (int)localLocation.getAccuracy(), 3, str1, str2, true);
        return;
      }
    }
    while ((this.gdm) || (i != 1));
    this.gdm = true;
    aa.v("MicroMsg.LBSManager", "report location by Network ok:[" + localLocation.getLatitude() + " , " + localLocation.getLongitude() + "]  accuracy:" + localLocation.getAccuracy() + "  retry count:" + this.cFR + " isGpsProvider:" + bool);
    this.gdg.a((float)localLocation.getLatitude(), (float)localLocation.getLongitude(), (int)localLocation.getAccuracy(), 4, str1, str2, true);
  }

  public final void start()
  {
    String str1 = cj.hW(aze());
    String str2 = cj.hW(azd());
    int i;
    if ((ayX()) || (ayY()))
    {
      i = 1;
      if ((i == 0) || (this.gdj))
        break label76;
      this.gdj = true;
      this.cFR = 0;
      lE(500);
      this.gdn.bO(3000L);
    }
    label76: label249: 
    do
    {
      do
      {
        return;
        i = 0;
        break;
        int j;
        if (gdf == null)
          j = 0;
        while (true)
        {
          if (j == 0)
            break label249;
          if (this.gdg == null)
            break;
          this.gdk = true;
          aa.v("MicroMsg.LBSManager", "location by GPS cache ok:[" + gdf.dMK + " , " + gdf.dML + "]  accuracy:" + gdf.gdp + " source:" + gdf.bUd);
          this.gdg.a(gdf.dMK, gdf.dML, gdf.gdp, gdf.bUd, str1, str2, true);
          return;
          if ((System.currentTimeMillis() - gdf.time > 180000L) || (gdf.gdp <= 0))
            j = 0;
          else
            j = 1;
        }
        this.gdk = true;
        if ((!str1.equals("")) || (!str2.equals("")))
          break label312;
        aa.v("MicroMsg.LBSManager", "get location by network failed");
      }
      while (this.gdg == null);
      this.gdg.a(-1000.0F, -1000.0F, -1000, 0, "", "", false);
      return;
      aa.v("MicroMsg.LBSManager", "get location by network ok, macs : " + str1 + " cell ids :" + str2);
    }
    while (this.gdg == null);
    label312: this.gdg.a(-1000.0F, -1000.0F, -1000, 0, str1, str2, true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.LBSManager
 * JD-Core Version:    0.6.2
 */