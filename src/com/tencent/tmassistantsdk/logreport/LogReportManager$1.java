package com.tencent.tmassistantsdk.logreport;

import com.tencent.tmassistantsdk.downloadservice.DownloadHelper;
import com.tencent.tmassistantsdk.downloadservice.NetworkMonitorReceiver.INetworkChangedObserver;
import com.tencent.tmassistantsdk.util.TMLog;

class LogReportManager$1
  implements NetworkMonitorReceiver.INetworkChangedObserver
{
  LogReportManager$1(LogReportManager paramLogReportManager)
  {
  }

  public void onNetworkChanged()
  {
    TMLog.i("LogReportManager", "onNetworkChanged,netState:" + DownloadHelper.getNetStatus());
    LogReportManager.access$002(this.this$0, 0);
    if ((DownloadHelper.isNetworkConncted()) && (DownloadHelper.getNetStatus().equalsIgnoreCase("wifi")))
      this.this$0.reportLogData();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.logreport.LogReportManager.1
 * JD-Core Version:    0.6.2
 */