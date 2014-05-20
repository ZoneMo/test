package com.tencent.mm.sandbox.updater;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.tencent.mm.b.f;
import com.tencent.mm.protocal.a.rt;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import java.io.File;

final class y extends Thread
{
  y(w paramw, rt paramrt)
  {
  }

  public final void run()
  {
    aa.d("MicroMsg.NetSceneGetUpdatePackFromCDN", "updateByPatch start");
    Message localMessage = Message.obtain();
    localMessage.what = 1;
    localMessage.obj = this.gbA;
    Long localLong = Long.valueOf(System.currentTimeMillis());
    Context localContext = al.getContext();
    String str1 = this.gbz.ayA();
    String str2 = this.gbz.ayB();
    String str3 = w.c(this.gbz);
    int i = f.a(af.bh(localContext), str1, str2, str3);
    aa.i("MicroMsg.NetSceneGetUpdatePackFromCDN", "gen new apk finish, time cost = " + (System.currentTimeMillis() - localLong.longValue()));
    if (i == 0)
    {
      aa.d("MicroMsg.NetSceneGetUpdatePackFromCDN", "updateByPatch ok");
      localMessage.arg1 = 0;
      w.d(this.gbz).sendMessage(localMessage);
    }
    do
    {
      return;
      aa.e("MicroMsg.NetSceneGetUpdatePackFromCDN", "updateByPatch error in genNewAPKInNewThread()");
      File localFile = new File(this.gbz.ayB());
      if (localFile.exists())
        localFile.delete();
      if (i == -1)
      {
        aa.d("MicroMsg.NetSceneGetUpdatePackFromCDN", "RET_GEN_APK_ERR");
        localMessage.arg1 = 3;
        w.d(this.gbz).sendMessage(localMessage);
        return;
      }
    }
    while (i != -2);
    aa.d("MicroMsg.NetSceneGetUpdatePackFromCDN", "RET_APK_MD5_ERR");
    localMessage.arg1 = 4;
    w.d(this.gbz).sendMessage(localMessage);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.y
 * JD-Core Version:    0.6.2
 */