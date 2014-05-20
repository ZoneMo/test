package com.tencent.tmassistantsdk.openSDK;

import android.text.TextUtils;
import com.tencent.tmassistantsdk.util.GlobalUtil;
import com.tencent.tmassistantsdk.util.TMLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class QQDownloaderOpenSDK$1
  implements DownloadStateChangedReceiver.IDownloadStateChangedListener
{
  QQDownloaderOpenSDK$1(QQDownloaderOpenSDK paramQQDownloaderOpenSDK)
  {
  }

  public void onDownloadStateChanged(QQDownloaderStateChangeParam paramQQDownloaderStateChangeParam)
  {
    QQDownloaderParam localQQDownloaderParam1 = paramQQDownloaderStateChangeParam.param;
    int i = GlobalUtil.assistantState2SDKState(paramQQDownloaderStateChangeParam.state);
    int j = GlobalUtil.assistantErrorCode2SDKErrorCode(paramQQDownloaderStateChangeParam.errorCode);
    String str1 = paramQQDownloaderStateChangeParam.errorMsg;
    String str2 = paramQQDownloaderStateChangeParam.taskId;
    TMLog.i("QQDownloaderOpenSDK", "onDownloadStateChanged state = " + i);
    QQDownloaderParam localQQDownloaderParam2 = null;
    if (str2 != null)
    {
      int k = str2.trim().length();
      localQQDownloaderParam2 = null;
      if (k > 0)
        localQQDownloaderParam2 = (QQDownloaderParam)QQDownloaderOpenSDK.access$000(this.this$0).get(str2);
    }
    if (localQQDownloaderParam2 != null)
      QQDownloaderOpenSDK.access$100(this.this$0, localQQDownloaderParam2, i, j, str1);
    while (6 == i)
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator1 = QQDownloaderOpenSDK.access$000(this.this$0).entrySet().iterator();
      while (true)
      {
        Iterator localIterator2;
        if (localIterator1.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator1.next();
          QQDownloaderParam localQQDownloaderParam3 = (QQDownloaderParam)localEntry.getValue();
          String str4 = (String)localEntry.getKey();
          if ((localQQDownloaderParam3 != null) && (!TextUtils.isEmpty(localQQDownloaderParam1.taskPackageName)) && (localQQDownloaderParam3.taskPackageName.equals(localQQDownloaderParam1.taskPackageName)) && (localQQDownloaderParam3.taskVersion == localQQDownloaderParam1.taskVersion))
          {
            localArrayList.add(str4);
            continue;
            TMLog.i("QQDownloaderOpenSDK", "onDownloadStateChanged storeParam = null");
            break;
          }
        }
      }
      localIterator2 = localArrayList.iterator();
      while (localIterator2.hasNext())
      {
        String str3 = (String)localIterator2.next();
        QQDownloaderOpenSDK.access$000(this.this$0).remove(str3);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.openSDK.QQDownloaderOpenSDK.1
 * JD-Core Version:    0.6.2
 */