package com.tencent.mm.booter;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.StatFs;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.ui.base.dn;
import java.io.File;

public class MountReceiver extends BroadcastReceiver
{
  private String caw = "";
  private Handler cax = new z(this, Looper.getMainLooper());
  private Context context = null;

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramContext == null) || (paramIntent == null) || (au.hX(paramIntent.getAction())));
    do
    {
      do
        return;
      while (!be.se());
      this.context = paramContext;
      this.caw = paramIntent.getAction();
      try
      {
        File localFile = Environment.getDataDirectory();
        StatFs localStatFs = new StatFs(localFile.getPath());
        Object[] arrayOfObject3 = new Object[4];
        arrayOfObject3[0] = localFile.getAbsolutePath();
        arrayOfObject3[1] = Integer.valueOf(localStatFs.getBlockSize());
        arrayOfObject3[2] = Integer.valueOf(localStatFs.getBlockCount());
        arrayOfObject3[3] = Integer.valueOf(localStatFs.getAvailableBlocks());
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MountReceiver", "CheckData path[%s] blocksize:%d blockcount:%d availcount:%d", arrayOfObject3);
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = this.caw;
        arrayOfObject2[1] = Boolean.valueOf(be.se());
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MountReceiver", "dkmount action:%s hasuin:%b", arrayOfObject2);
        if ((this.caw.equals("android.intent.action.MEDIA_EJECT")) || (this.caw.equals("android.intent.action.MEDIA_SHARED")))
        {
          dn.bW(paramContext);
          be.ut().o(new aa(this));
          return;
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = localException.getMessage();
          com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.MountReceiver", "check data size failed :%s", arrayOfObject1);
        }
      }
    }
    while (!this.caw.equals("android.intent.action.MEDIA_MOUNTED"));
    be.ut().o(new ab(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.MountReceiver
 * JD-Core Version:    0.6.2
 */