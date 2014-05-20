package com.tencent.tmassistantsdk.downloadservice;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmassistantsdk.util.GlobalUtil;
import java.util.ArrayList;
import java.util.Iterator;

public class NetworkMonitorReceiver extends BroadcastReceiver
{
  private static final int MSG_DELAY_TIME = 3500;
  private static final int MSG_resumeDownloadTime = 67;
  private static NetworkMonitorReceiver mInstance = null;
  private boolean isRegisterReceiver = false;
  private final Handler mNetworkChangedHandler = new NetworkMonitorReceiver.1(this);
  ArrayList mObs = new ArrayList();

  public static void destroy()
  {
    mInstance = null;
  }

  public static NetworkMonitorReceiver getInstance()
  {
    try
    {
      if (mInstance == null)
        mInstance = new NetworkMonitorReceiver();
      NetworkMonitorReceiver localNetworkMonitorReceiver = mInstance;
      return localNetworkMonitorReceiver;
    }
    finally
    {
    }
  }

  public void addNetworkChangedObserver(NetworkMonitorReceiver.INetworkChangedObserver paramINetworkChangedObserver)
  {
    if ((!this.mObs.contains(paramINetworkChangedObserver)) && (paramINetworkChangedObserver != null))
      this.mObs.add(paramINetworkChangedObserver);
  }

  public void notifyNetworkChanged()
  {
    Iterator localIterator = this.mObs.iterator();
    while (localIterator.hasNext())
      ((NetworkMonitorReceiver.INetworkChangedObserver)localIterator.next()).onNetworkChanged();
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    this.mNetworkChangedHandler.removeMessages(67);
    Message localMessage = Message.obtain();
    localMessage.what = 67;
    this.mNetworkChangedHandler.sendMessageDelayed(localMessage, 3500L);
  }

  public void registerReceiver()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    GlobalUtil.getInstance().getContext().registerReceiver(this, localIntentFilter);
    this.isRegisterReceiver = true;
  }

  public void removeNetworkChangedObserver(NetworkMonitorReceiver.INetworkChangedObserver paramINetworkChangedObserver)
  {
    if (paramINetworkChangedObserver != null)
      this.mObs.remove(paramINetworkChangedObserver);
  }

  public void unregisterReceiver()
  {
    if (mInstance == null);
    while (!this.isRegisterReceiver)
      return;
    GlobalUtil.getInstance().getContext().unregisterReceiver(this);
    this.isRegisterReceiver = false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.downloadservice.NetworkMonitorReceiver
 * JD-Core Version:    0.6.2
 */