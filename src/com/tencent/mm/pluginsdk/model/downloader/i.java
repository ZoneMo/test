package com.tencent.mm.pluginsdk.model.downloader;

import android.annotation.TargetApi;
import android.app.DownloadManager;
import android.content.Context;
import android.os.Environment;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;
import java.util.Iterator;
import java.util.Vector;

@TargetApi(9)
public final class i
  implements l
{
  private k fiA;
  private DownloadManager fil = (DownloadManager)this.mContext.getSystemService("download");
  private Vector fiz = new Vector();
  private Context mContext = al.getContext();

  private void bC(long paramLong)
  {
    if (this.fiz != null)
    {
      Iterator localIterator = this.fiz.iterator();
      while (localIterator.hasNext())
      {
        n localn = (n)localIterator.next();
        if (this.fiA != null)
          localn.d(paramLong, this.fiA.aqn());
      }
    }
  }

  private void qz(String paramString)
  {
    if (this.fiz != null)
    {
      Iterator localIterator = this.fiz.iterator();
      while (localIterator.hasNext())
        ((n)localIterator.next()).qd(paramString);
    }
  }

  public final long a(k paramk)
  {
    if ((paramk instanceof g))
      try
      {
        String str = com.tencent.mm.compatible.g.l.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath();
        if (!cj.hX(str))
        {
          File localFile = new File(str);
          if (!localFile.exists())
          {
            boolean bool = localFile.mkdir();
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = Boolean.valueOf(bool);
            aa.d("MicroMsg.FileDownloaderImpl23", "download folder not exist, make new one : [%b]", arrayOfObject);
          }
        }
        this.fiA = paramk;
        long l = this.fil.enqueue((g)paramk);
        aa.d("MicroMsg.FileDownloaderImpl23", "add task : " + l);
        if (l >= 0L)
        {
          bC(l);
          FileDownloadManger.a(paramk, l);
          return l;
        }
        qz("start failed");
        return l;
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.FileDownloaderImpl23", "add download task by downloadmanager failed: " + localException.toString());
        return -4L;
      }
    aa.aM("MicroMsg.FileDownloaderImpl23", "err request type" + paramk.toString());
    return -2L;
  }

  public final int bA(long paramLong)
  {
    if (paramLong <= 0L)
    {
      aa.e("MicroMsg.FileDownloaderImpl23", "no remove task is");
      return 0;
    }
    int i;
    try
    {
      int j = this.fil.remove(new long[] { paramLong });
      i = j;
      FileDownloadManger.bz(paramLong);
      if (i > 0)
      {
        if (this.fiz == null)
          break label172;
        Iterator localIterator2 = this.fiz.iterator();
        while (localIterator2.hasNext())
          ((n)localIterator2.next()).bp(paramLong);
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Long.valueOf(paramLong);
        arrayOfObject[1] = localException.toString();
        aa.b("MicroMsg.FileDownloaderImpl23", "remove task error:[%d], [%s]", arrayOfObject);
        i = 0;
      }
      if (this.fiz != null)
      {
        Iterator localIterator1 = this.fiz.iterator();
        while (localIterator1.hasNext())
          ((n)localIterator1.next()).bq(paramLong);
      }
    }
    label172: return i;
  }

  public final void bn(long paramLong)
  {
    if (this.fiz != null)
    {
      Iterator localIterator = this.fiz.iterator();
      while (localIterator.hasNext())
        ((n)localIterator.next()).bn(paramLong);
    }
  }

  public final void bo(long paramLong)
  {
    if (this.fiz != null)
    {
      Iterator localIterator = this.fiz.iterator();
      while (localIterator.hasNext())
        ((n)localIterator.next()).bo(paramLong);
    }
  }

  public final void c(n paramn)
  {
    if ((this.fiz != null) && (paramn != null))
      this.fiz.remove(paramn);
  }

  public final void d(n paramn)
  {
    if ((paramn != null) && (!this.fiz.contains(paramn)))
      this.fiz.add(paramn);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.downloader.i
 * JD-Core Version:    0.6.2
 */