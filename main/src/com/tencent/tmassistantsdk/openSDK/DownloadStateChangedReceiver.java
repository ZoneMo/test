package com.tencent.tmassistantsdk.openSDK;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.ArrayList;
import java.util.Iterator;

public class DownloadStateChangedReceiver extends BroadcastReceiver
{
  private static DownloadStateChangedReceiver mInstance = null;
  private ArrayList mListeners = new ArrayList();

  public static DownloadStateChangedReceiver getInstance()
  {
    try
    {
      if (mInstance == null)
        mInstance = new DownloadStateChangedReceiver();
      DownloadStateChangedReceiver localDownloadStateChangedReceiver = mInstance;
      return localDownloadStateChangedReceiver;
    }
    finally
    {
    }
  }

  public void addDownloadStateChangedListener(DownloadStateChangedReceiver.IDownloadStateChangedListener paramIDownloadStateChangedListener)
  {
    if ((paramIDownloadStateChangedListener != null) && (!this.mListeners.contains(paramIDownloadStateChangedListener)))
      this.mListeners.add(paramIDownloadStateChangedListener);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    QQDownloaderStateChangeParam localQQDownloaderStateChangeParam = new QQDownloaderStateChangeParam();
    localQQDownloaderStateChangeParam.hostPackageName = paramIntent.getStringExtra("hostPackageName");
    localQQDownloaderStateChangeParam.hostVersion = paramIntent.getStringExtra("hostVersion");
    localQQDownloaderStateChangeParam.taskId = paramIntent.getStringExtra("taskId");
    localQQDownloaderStateChangeParam.errorCode = Integer.parseInt(paramIntent.getStringExtra("errorCode"));
    localQQDownloaderStateChangeParam.errorMsg = paramIntent.getStringExtra("errorMsg");
    localQQDownloaderStateChangeParam.state = Integer.parseInt(paramIntent.getStringExtra("state"));
    QQDownloaderParam localQQDownloaderParam = new QQDownloaderParam();
    localQQDownloaderParam.SNGAppId = paramIntent.getStringExtra("sngAppId");
    localQQDownloaderParam.taskAppId = paramIntent.getStringExtra("taskAppId");
    localQQDownloaderParam.taskApkId = paramIntent.getStringExtra("taskApkId");
    localQQDownloaderParam.taskPackageName = paramIntent.getStringExtra("taskPackageName");
    localQQDownloaderParam.taskVersion = Integer.parseInt(paramIntent.getStringExtra("taskVersion"));
    localQQDownloaderParam.via = paramIntent.getStringExtra("via");
    localQQDownloaderParam.uin = paramIntent.getStringExtra("uin");
    localQQDownloaderParam.uinType = paramIntent.getStringExtra("uinType");
    localQQDownloaderStateChangeParam.param = localQQDownloaderParam;
    Iterator localIterator = this.mListeners.iterator();
    while (localIterator.hasNext())
      ((DownloadStateChangedReceiver.IDownloadStateChangedListener)localIterator.next()).onDownloadStateChanged(localQQDownloaderStateChangeParam);
  }

  public void registeReceiver(Context paramContext)
  {
    paramContext.registerReceiver(this, new IntentFilter("com.tencent.assistantOpenSDK.downloadStateChange.action"));
  }

  public void removeDownloadStateChangedListener(DownloadStateChangedReceiver.IDownloadStateChangedListener paramIDownloadStateChangedListener)
  {
    if (paramIDownloadStateChangedListener != null)
      this.mListeners.remove(paramIDownloadStateChangedListener);
  }

  public void unRegisteReceiver(Context paramContext)
  {
    if ((paramContext == null) || (mInstance == null))
      return;
    paramContext.unregisterReceiver(this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.openSDK.DownloadStateChangedReceiver
 * JD-Core Version:    0.6.2
 */