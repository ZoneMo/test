package com.tencent.mm.pluginsdk.model.downloader;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.IBinder;
import android.text.TextUtils;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.pluginsdk.model.app.u;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ah;
import com.tencent.mm.storage.ai;
import java.io.File;
import java.util.Set;

public class FileDownloadManger$FileDownloadService extends Service
{
  private static void a(long paramLong, Context paramContext)
  {
    ah localah = FileDownloadManger.by(paramLong);
    String str = null;
    if (localah != null)
    {
      boolean bool = cj.hX(localah.field_fileName);
      str = null;
      if (!bool)
        str = localah.field_fileName;
    }
    a(paramContext, paramLong, PendingIntent.getActivity(paramContext, (int)paramLong, new Intent(), 268435456), cj.hW(str), paramContext.getString(n.boa));
    FileDownloadManger.bA(paramLong);
    m.aqu().bo(paramLong);
  }

  private static void a(long paramLong, Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    e locale = FileDownloadManger.g(paramContext, paramLong);
    ah localah = FileDownloadManger.by(paramLong);
    String str1 = null;
    if (localah != null)
    {
      boolean bool = cj.hX(localah.field_fileName);
      str1 = null;
      if (!bool)
        str1 = localah.field_fileName;
    }
    if (locale.fim != null)
    {
      if (paramBoolean1)
      {
        Intent localIntent1 = new Intent("com.tencent.mm.game.md5check");
        localIntent1.addCategory("android.intent.category.DEFAULT");
        localIntent1.addFlags(268435456);
        localIntent1.putExtra("game_download_id", paramLong);
        PendingIntent localPendingIntent = PendingIntent.getActivity(paramContext, (int)paramLong, localIntent1, 268435456);
        if (!FileDownloadManger.aqm().contains(Long.valueOf(paramLong)))
          a(paramContext, paramLong, localPendingIntent, cj.hW(str1) + paramContext.getString(n.bob), paramContext.getString(n.bnZ));
        FileDownloadManger.bx(paramLong);
        m.aqu().bn(paramLong);
      }
      Uri localUri;
      do
      {
        String str2;
        do
        {
          return;
          str2 = localah.field_filePath;
          aa.e("MicroMsg.FileDownloadService", "filepath:%s", new Object[] { str2 });
        }
        while (TextUtils.isEmpty(str2));
        localUri = Uri.fromFile(new File(str2));
        Intent localIntent2 = new Intent("android.intent.action.VIEW");
        localIntent2.setDataAndType(localUri, "application/vnd.android.package-archive");
        localIntent2.addFlags(268435456);
        a(paramContext, paramLong, PendingIntent.getActivity(paramContext, (int)paramLong, localIntent2, 268435456), cj.hW(str1) + paramContext.getString(n.bob), paramContext.getString(n.bnZ));
        m.aqu().bn(paramLong);
      }
      while (!paramBoolean2);
      u.b(paramContext, localUri);
      return;
    }
    a(paramLong, paramContext);
  }

  private static void a(Context paramContext, long paramLong, PendingIntent paramPendingIntent, String paramString1, String paramString2)
  {
    Notification localNotification = new Notification(17301634, "", System.currentTimeMillis());
    localNotification.tickerText = "";
    localNotification.setLatestEventInfo(paramContext, paramString1, paramString2, paramPendingIntent);
    localNotification.defaults = -1;
    localNotification.flags = (0x10 | localNotification.flags);
    ((NotificationManager)paramContext.getSystemService("notification")).notify((int)paramLong, localNotification);
    aa.i("MicroMsg.FileDownloadService", "show notification");
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    aa.i("MicroMsg.FileDownloadService", "FileDownloadService onCreate");
    super.onCreate();
  }

  public void onDestroy()
  {
    aa.i("MicroMsg.FileDownloadService", "FileDownloadService onDestroy");
    super.onDestroy();
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if (paramIntent == null)
    {
      aa.e("MicroMsg.FileDownloadService", "null intent");
      stopSelf(paramInt2);
      return 3;
    }
    long l = paramIntent.getLongExtra("extra_download_id", -1L);
    ah localah = FileDownloadManger.by(l);
    boolean bool1;
    if (localah.field_isGameFile == 0)
    {
      bool1 = true;
      if (localah.field_autoInstall != 0)
        break label109;
    }
    label109: for (boolean bool2 = false; ; bool2 = true)
    {
      if (((be.se()) && (!be.uG())) || (FileDownloadManger.aqm().contains(Long.valueOf(l))))
        break label115;
      aa.d("MicroMsg.FileDownloadService", "no user login, wait next login");
      stopSelf(paramInt2);
      return 3;
      bool1 = false;
      break;
    }
    label115: if (l == -1L)
    {
      aa.e("MicroMsg.FileDownloadService", "receive error downloadId : -1");
      stopSelf(paramInt2);
      return 3;
    }
    if (FileDownloadManger.aqm().contains(Long.valueOf(l)))
    {
      a(l, this, bool1, bool2);
      stopSelf();
      return 3;
    }
    if (localah.field_downloadId == -1L)
    {
      aa.d("MicroMsg.FileDownloadService", "query local downloadinfo failed, maybe changed account");
      stopSelf(paramInt2);
      return 3;
    }
    e locale = FileDownloadManger.g(this, l);
    if (locale.status == 8)
    {
      if (locale.fim != null)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localah.field_fileName;
        aa.e("MicroMsg.FileDownloadService", "query from content provider uri is not null, update loacal download info:[%s]", arrayOfObject2);
        localah.field_filePathFromURI = locale.fim.getPath();
        be.uz().sy().a(localah, new String[0]);
      }
      FileDownloadManger.a(l, new f(this, localah, locale, l, bool1, bool2, paramInt2));
    }
    while (true)
    {
      return 3;
      if (locale.status == 16)
      {
        if ((be.se()) && (!be.uG()))
        {
          aa.i("MicroMsg.FileDownloadService", "download failed, do notify");
          a(l, this);
        }
        while (true)
        {
          stopSelf(paramInt2);
          break;
          aa.d("MicroMsg.FileDownloadService", "no account login, ingnore notify");
        }
      }
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(locale.status);
      aa.e("MicroMsg.FileDownloadService", "do not deal this download status:[%d], just stop service", arrayOfObject1);
      stopSelf(paramInt2);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.downloader.FileDownloadManger.FileDownloadService
 * JD-Core Version:    0.6.2
 */