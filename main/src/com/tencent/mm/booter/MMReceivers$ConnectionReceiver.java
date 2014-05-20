package com.tencent.mm.booter;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import com.tencent.mm.network.bk;
import com.tencent.mm.network.bl;
import com.tencent.mm.sdk.platformtools.aa;

public class MMReceivers$ConnectionReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramContext == null);
    do
    {
      return;
      aa.e("MicroMsg.ConnectionReceiver", "onReceive threadID: " + Thread.currentThread().getId());
      if (!h.k(paramContext, "connection"))
      {
        MMReceivers.AlarmReceiver.D(paramContext);
        aa.appenderFlush();
        return;
      }
    }
    while (bk.Fe() == null);
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (localNetworkInfo.getState() != NetworkInfo.State.CONNECTED))
    {
      aa.e("MicroMsg.ConnectionReceiver", "NetworkAvailable: false");
      bl localbl1 = bk.Fe();
      if (localNetworkInfo != null)
        localNetworkInfo.getTypeName();
      if (localNetworkInfo != null)
        localNetworkInfo.getSubtypeName();
      localbl1.H(false);
      return;
    }
    aa.e("MicroMsg.ConnectionReceiver", "NetworkAvailable: true");
    bl localbl2 = bk.Fe();
    localNetworkInfo.getTypeName();
    localNetworkInfo.getSubtypeName();
    localbl2.H(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.MMReceivers.ConnectionReceiver
 * JD-Core Version:    0.6.2
 */