package com.tencent.tmassistantsdk.downloadservice;

import android.os.Handler;
import android.os.Message;

class NetworkMonitorReceiver$1 extends Handler
{
  NetworkMonitorReceiver$1(NetworkMonitorReceiver paramNetworkMonitorReceiver)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
      return;
    case 67:
    }
    this.this$0.notifyNetworkChanged();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.downloadservice.NetworkMonitorReceiver.1
 * JD-Core Version:    0.6.2
 */