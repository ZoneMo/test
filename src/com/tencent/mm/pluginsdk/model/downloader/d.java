package com.tencent.mm.pluginsdk.model.downloader;

import android.annotation.TargetApi;
import android.app.DownloadManager;
import android.app.DownloadManager.Query;
import android.content.Context;
import android.database.Cursor;
import android.os.Build.VERSION;
import com.tencent.mm.sdk.platformtools.aa;

@TargetApi(9)
final class d extends DownloadManager.Query
{
  private DownloadManager fil;

  public d(Context paramContext)
  {
    this.fil = ((DownloadManager)paramContext.getSystemService("download"));
  }

  public final Cursor bB(long paramLong)
  {
    setFilterById(new long[] { paramLong });
    if (Build.VERSION.SDK_INT >= 9)
      try
      {
        Cursor localCursor = this.fil.query(this);
        return localCursor;
      }
      catch (Exception localException)
      {
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = localException.toString();
        arrayOfObject[1] = Long.valueOf(paramLong);
        aa.b("MicroMsg.FileDownloadManger", "query downloadinfo from downloadmanager failed:[%s], downloadid[%d]", arrayOfObject);
      }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.downloader.d
 * JD-Core Version:    0.6.2
 */