package com.tencent.map.location;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class g$a extends BroadcastReceiver
{
  private boolean TW = false;
  private List Ua = null;
  private int a = 4;

  public g$a(g paramg)
  {
  }

  private void b(List paramList)
  {
    if (paramList == null)
      return;
    if (this.TW)
    {
      if (this.Ua == null)
        this.Ua = new ArrayList();
      int i = this.Ua.size();
      Iterator localIterator2 = paramList.iterator();
      label49: ScanResult localScanResult2;
      if (localIterator2.hasNext())
        localScanResult2 = (ScanResult)localIterator2.next();
      for (int j = 0; ; j++)
        if (j < i)
        {
          if (((ScanResult)this.Ua.get(j)).BSSID.equals(localScanResult2.BSSID))
            this.Ua.remove(j);
        }
        else
        {
          this.Ua.add(localScanResult2);
          break label49;
          break;
        }
    }
    if (this.Ua == null)
      this.Ua = new ArrayList();
    while (true)
    {
      Iterator localIterator1 = paramList.iterator();
      while (localIterator1.hasNext())
      {
        ScanResult localScanResult1 = (ScanResult)localIterator1.next();
        this.Ua.add(localScanResult1);
      }
      break;
      this.Ua.clear();
    }
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.net.wifi.WIFI_STATE_CHANGED"))
    {
      this.a = paramIntent.getIntExtra("wifi_state", 4);
      if (g.b(this.UA) != null)
        g.b(this.UA).bc(this.a);
    }
    List localList1;
    if ((paramIntent.getAction().equals("android.net.wifi.SCAN_RESULTS")) || (paramIntent.getAction().equals("android.net.wifi.WIFI_STATE_CHANGED")))
    {
      WifiManager localWifiManager = g.c(this.UA);
      localList1 = null;
      if (localWifiManager != null)
        localList1 = g.c(this.UA).getScanResults();
      if ((!paramIntent.getAction().equals("android.net.wifi.WIFI_STATE_CHANGED")) || ((localList1 != null) && ((localList1 == null) || (localList1.size() != 0))));
    }
    else
    {
      return;
    }
    if ((!this.TW) && (this.Ua != null) && (this.Ua.size() >= 4) && (localList1 != null) && (localList1.size() <= 2))
    {
      b(localList1);
      this.TW = true;
      this.UA.f(0L);
      return;
    }
    b(localList1);
    this.TW = false;
    g localg = this.UA;
    List localList2 = this.Ua;
    System.currentTimeMillis();
    g.a(localg, new z(localList2));
    if (g.b(this.UA) != null)
      g.b(this.UA).a(g.d(this.UA));
    this.UA.f(20000L * g.e(this.UA));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.location.g.a
 * JD-Core Version:    0.6.2
 */