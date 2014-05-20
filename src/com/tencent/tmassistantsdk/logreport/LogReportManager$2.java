package com.tencent.tmassistantsdk.logreport;

import com.tencent.tmassistantsdk.storage.table.DownloadLogTable;
import com.tencent.tmassistantsdk.util.TMLog;
import java.util.List;

class LogReportManager$2
  implements ILogReportHttpListener
{
  LogReportManager$2(LogReportManager paramLogReportManager)
  {
  }

  public void onLogReprotHttpRequestFinish(LogReportHttpRequest paramLogReportHttpRequest, boolean paramBoolean)
  {
    TMLog.i("LogReportManager", "onLogReprotHttpRequestFinish,result:" + paramBoolean);
    if ((paramBoolean) && (LogReportManager.access$100(this.this$0) != null) && (LogReportManager.access$100(this.this$0).size() > 0))
      DownloadLogTable.getInstance().delete(LogReportManager.access$100(this.this$0));
    LogReportManager.access$202(this.this$0, null);
    LogReportManager.access$100(this.this$0).clear();
    if ((paramBoolean) && (LogReportManager.access$000(this.this$0) < 5))
    {
      TMLog.i("LogReportManager", "onLogReprotHttpRequestFinish wifi is true reportlog go on,result:" + paramBoolean + " count:" + LogReportManager.access$000(this.this$0));
      this.this$0.reportLogData();
      LogReportManager.access$008(this.this$0);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.logreport.LogReportManager.2
 * JD-Core Version:    0.6.2
 */