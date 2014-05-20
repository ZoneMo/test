package com.tencent.tmassistantsdk.logreport;

import com.tencent.tmassistantsdk.downloadservice.NetworkMonitorReceiver;
import com.tencent.tmassistantsdk.downloadservice.NetworkMonitorReceiver.INetworkChangedObserver;
import com.tencent.tmassistantsdk.protocol.ProtocolPackage;
import com.tencent.tmassistantsdk.protocol.jce.DownloadChunkLogInfo;
import com.tencent.tmassistantsdk.storage.table.DownloadLogTable;
import com.tencent.tmassistantsdk.storage.table.DownloadLogTable.DataWrapper;
import com.tencent.tmassistantsdk.util.GlobalUtil;
import com.tencent.tmassistantsdk.util.TMLog;
import java.util.ArrayList;
import java.util.List;

public class LogReportManager
{
  public static final int MAX_READ_COUNT = 1000;
  private static final String TAG = "LogReportManager";
  private static LogReportManager mInstance = null;
  private final List idLists = new ArrayList();
  private final ILogReportHttpListener mLogReportListener = new LogReportManager.2(this);
  private final NetworkMonitorReceiver.INetworkChangedObserver mNetworkChangedObserver = new LogReportManager.1(this);
  private int maxReportCount = 0;
  private LogReportHttpRequest reportRequest = null;

  private LogReportManager()
  {
    NetworkMonitorReceiver.getInstance().addNetworkChangedObserver(this.mNetworkChangedObserver);
  }

  public static LogReportManager getInstance()
  {
    try
    {
      if (mInstance == null)
        mInstance = new LogReportManager();
      LogReportManager localLogReportManager = mInstance;
      return localLogReportManager;
    }
    finally
    {
    }
  }

  private boolean readLogDataAndSendToServer(LogReportHttpRequest paramLogReportHttpRequest)
  {
    if (paramLogReportHttpRequest == null);
    DownloadLogTable.DataWrapper localDataWrapper;
    do
    {
      return false;
      localDataWrapper = DownloadLogTable.getInstance().getDatas(1000);
      TMLog.i("LogReportManager", "readLogDataAndSendToServer,wrappterCount:" + localDataWrapper.dataList.size());
    }
    while ((localDataWrapper == null) || (localDataWrapper.dataList.size() <= 0));
    this.idLists.addAll(localDataWrapper.idList);
    return paramLogReportHttpRequest.sendLogDataToServer(localDataWrapper);
  }

  public void addLogData(DownloadChunkLogInfo paramDownloadChunkLogInfo)
  {
    try
    {
      TMLog.i("LogReportManager", "addLogData,loginfo");
      if (paramDownloadChunkLogInfo != null)
      {
        byte[] arrayOfByte = ProtocolPackage.jceStructToUTF8Byte(paramDownloadChunkLogInfo);
        DownloadLogTable.getInstance().save(arrayOfByte);
      }
      return;
    }
    finally
    {
    }
  }

  public DownloadChunkLogInfo createNewChunkLogInfo(byte paramByte)
  {
    TMLog.i("LogReportManager", "createNewChunkLogInfo");
    DownloadChunkLogInfo localDownloadChunkLogInfo = new DownloadChunkLogInfo();
    localDownloadChunkLogInfo.type = paramByte;
    localDownloadChunkLogInfo.networkOperator = GlobalUtil.getInstance().getNetworkOperator();
    localDownloadChunkLogInfo.networkType = GlobalUtil.getInstance().getNetworkType();
    localDownloadChunkLogInfo.isWap = GlobalUtil.isWap();
    localDownloadChunkLogInfo.startTime = System.currentTimeMillis();
    return localDownloadChunkLogInfo;
  }

  public void destroy()
  {
    this.reportRequest = null;
    this.idLists.clear();
    NetworkMonitorReceiver.getInstance().removeNetworkChangedObserver(this.mNetworkChangedObserver);
  }

  public void reportLogData()
  {
    try
    {
      boolean bool = GlobalUtil.getInstance().canReportValue();
      if (!bool);
      while (true)
      {
        return;
        TMLog.i("LogReportManager", "reportLogData,request:" + this.reportRequest);
        if (this.reportRequest == null)
        {
          this.reportRequest = new LogReportHttpRequest();
          this.reportRequest.setmListener(this.mLogReportListener);
          if (!readLogDataAndSendToServer(this.reportRequest))
            this.maxReportCount = 0;
        }
      }
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.logreport.LogReportManager
 * JD-Core Version:    0.6.2
 */