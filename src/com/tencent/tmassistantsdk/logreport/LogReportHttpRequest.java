package com.tencent.tmassistantsdk.logreport;

import com.qq.taf.jce.JceStruct;
import com.tencent.tmassistantsdk.network.BaseHttpRequest;
import com.tencent.tmassistantsdk.protocol.ProtocolPackage;
import com.tencent.tmassistantsdk.protocol.jce.ReportLogRequest;
import com.tencent.tmassistantsdk.protocol.jce.ReportLogResponse;
import com.tencent.tmassistantsdk.storage.table.DownloadLogTable.DataWrapper;
import com.tencent.tmassistantsdk.util.GlobalUtil;

public class LogReportHttpRequest extends BaseHttpRequest
{
  private ILogReportHttpListener mListener = null;

  protected void onFinished(JceStruct paramJceStruct1, JceStruct paramJceStruct2)
  {
    if (paramJceStruct2 == null);
    while ((this.mListener == null) || (!(paramJceStruct2 instanceof ReportLogResponse)))
      return;
    if (((ReportLogResponse)paramJceStruct2).ret == 0)
    {
      this.mListener.onLogReprotHttpRequestFinish(this, true);
      return;
    }
    this.mListener.onLogReprotHttpRequestFinish(this, false);
  }

  public boolean sendLogDataToServer(DownloadLogTable.DataWrapper paramDataWrapper)
  {
    if (paramDataWrapper == null)
      return false;
    String str = GlobalUtil.getAppPackageName(GlobalUtil.getInstance().getContext());
    int i = GlobalUtil.getAppVersionCode(GlobalUtil.getInstance().getContext());
    return sendRequest((ReportLogRequest)ProtocolPackage.buildReportRequest(paramDataWrapper.dataList, str, i, ""));
  }

  public void setmListener(ILogReportHttpListener paramILogReportHttpListener)
  {
    this.mListener = paramILogReportHttpListener;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.logreport.LogReportHttpRequest
 * JD-Core Version:    0.6.2
 */