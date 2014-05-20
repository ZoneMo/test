package com.tencent.mm.pluginsdk.model.downloader;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.c.a.gk;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ah;
import com.tencent.mm.storage.ai;
import java.util.Set;

public class FileDownloadManger$FileDownloadReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramContext == null) || (paramIntent == null))
      return;
    String str = paramIntent.getAction();
    aa.i("MicroMsg.DownloadReceiver", str);
    if (cj.hX(str))
    {
      aa.e("MicroMsg.DownloadReceiver", "action is null or nill, ignore");
      return;
    }
    long l = paramIntent.getLongExtra("extra_download_id", -1L);
    if (((!be.se()) || (be.uG())) && (!FileDownloadManger.aqm().contains(Long.valueOf(l))))
    {
      aa.d("MicroMsg.DownloadReceiver", "no user login, wait next login to deal");
      return;
    }
    if (str.equals("android.intent.action.DOWNLOAD_COMPLETE"))
    {
      if (l == -1L)
      {
        aa.e("MicroMsg.DownloadReceiver", "get download id failed");
        return;
      }
      Intent localIntent2 = new Intent();
      localIntent2.setClass(paramContext, FileDownloadManger.FileDownloadService.class);
      localIntent2.putExtras(paramIntent);
      ComponentName localComponentName = paramContext.startService(localIntent2);
      aa.d("MicroMsg.DownloadReceiver", "start download service: " + localComponentName.getClassName() + ", " + localComponentName.getPackageName());
      return;
    }
    if (str.equals("android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"))
    {
      Intent localIntent1 = new Intent("android.intent.action.VIEW_DOWNLOADS");
      localIntent1.addCategory("android.intent.category.DEFAULT");
      localIntent1.addFlags(268435456);
      try
      {
        paramContext.startActivity(localIntent1);
        return;
      }
      catch (Exception localException)
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = localException.getMessage();
        aa.b("MicroMsg.DownloadReceiver", "launch system default view download activity failed: [%s]", arrayOfObject1);
        if ((be.se()) && (!be.uG()))
        {
          if (l != -1L)
          {
            ah localah = be.uz().sy().by(l);
            if ((localah != null) && (!cj.hX(localah.field_downloadKey)))
            {
              gk localgk = new gk();
              localgk.bQG.flags = 335544320;
              localgk.bQG.bNG = localah.field_downloadKey;
              a.ayH().f(localgk);
              aa.i("MicroMsg.DownloadReceiver", "start launcher ui to the gamedetail info");
              return;
            }
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = cj.R(localah.field_fileName, "");
            aa.b("MicroMsg.DownloadReceiver", "the appid is null or nill:[%s]", arrayOfObject2);
            return;
          }
          aa.e("MicroMsg.DownloadReceiver", "system not pass the clicked downloadid: download is is -1");
          return;
        }
        aa.d("MicroMsg.DownloadReceiver", "no account login, ignore click notify");
        return;
      }
    }
    if (str.equals("android.intent.action.VIEW_DOWNLOADS"))
    {
      aa.i("MicroMsg.DownloadReceiver", "action_view_downloads, ignore this action");
      return;
    }
    aa.e("MicroMsg.DownloadReceiver", "unexception action");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.downloader.FileDownloadManger.FileDownloadReceiver
 * JD-Core Version:    0.6.2
 */