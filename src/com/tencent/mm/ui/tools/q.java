package com.tencent.mm.ui.tools;

import android.text.TextUtils;
import com.tencent.mm.pluginsdk.model.downloader.FileDownloadManger;
import com.tencent.mm.pluginsdk.model.downloader.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ah;
import java.io.File;

final class q
  implements n
{
  q(BrowserChooseActivity paramBrowserChooseActivity)
  {
  }

  public final void bn(long paramLong)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(paramLong);
    aa.e("MicroMsg.BrowserChooseActivity", "onDownloadFinished downloadId:%s", arrayOfObject);
    BrowserChooseActivity.a(this.hhl, paramLong);
    if (FileDownloadManger.bw(BrowserChooseActivity.g(this.hhl)))
    {
      String str = FileDownloadManger.by(BrowserChooseActivity.g(this.hhl)).field_filePath;
      aa.e("MicroMsg.BrowserChooseActivity", "filepath:%s", new Object[] { str });
      if (!TextUtils.isEmpty(str))
      {
        new File(str);
        if (BrowserChooseActivity.a(this.hhl) != null)
        {
          BrowserChooseActivity.a(this.hhl).a(w.hhC);
          BrowserChooseActivity.a(this.hhl).notifyDataSetChanged();
        }
      }
    }
  }

  public final void bo(long paramLong)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(paramLong);
    aa.e("MicroMsg.BrowserChooseActivity", "onDownloadError downloadId:%s", arrayOfObject);
    if (BrowserChooseActivity.a(this.hhl) != null)
    {
      BrowserChooseActivity.a(this.hhl).a(w.hhA);
      BrowserChooseActivity.a(this.hhl).notifyDataSetChanged();
    }
  }

  public final void bp(long paramLong)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(paramLong);
    aa.e("MicroMsg.BrowserChooseActivity", "onRemoveDownloadTaskSucceed downloadId:%s", arrayOfObject);
  }

  public final void bq(long paramLong)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(paramLong);
    aa.e("MicroMsg.BrowserChooseActivity", "onRemoveDownloadTaskFailed downloadId:%s", arrayOfObject);
  }

  public final void d(long paramLong, String paramString)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = String.valueOf(paramLong);
    arrayOfObject[1] = paramString;
    aa.e("MicroMsg.BrowserChooseActivity", "onStartSucceed downloadId:%s savedFilePath:%s", arrayOfObject);
  }

  public final void qd(String paramString)
  {
    aa.e("MicroMsg.BrowserChooseActivity", "onStartFailed errMsg:%s ", new Object[] { paramString });
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.q
 * JD-Core Version:    0.6.2
 */