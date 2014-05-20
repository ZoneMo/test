package com.tencent.mm.booter;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.Looper;
import android.os.MessageQueue;
import com.tencent.mm.jni.platformcomm.WakerLock;
import com.tencent.mm.model.ap;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.f;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;

final class ad
  implements m
{
  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    int i = 1;
    aa.d("MicroMsg.NotifyReceiver", "NotifyReceiver sceneEnd");
    switch (paramx.getType())
    {
    default:
      if (NotifyReceiver.oO() != null)
        NotifyReceiver.oO().unLock();
      NotifyReceiver.a(null);
      return;
    case 38:
    }
    if ((paramInt1 == 4) && (!be.uA().wR()))
      switch (paramInt2)
      {
      default:
        if ((paramInt1 == 0) && (paramInt2 == 0))
          be.nQ().nJ();
        break;
      case -205:
      case -72:
      case -9:
      case -6:
      case -4:
      case -3:
      case -140:
      case -100:
      case -999999:
      case -17:
      case -16:
      }
    while (be.se())
    {
      Looper.myQueue().addIdleHandler(new af(this));
      break;
      be.nQ().aU(al.getContext().getString(2131165596));
      be.uH();
      continue;
      Object[] arrayOfObject = new Object[i];
      arrayOfObject[0] = paramString;
      aa.b("MicroMsg.NotifyReceiver", "alpha need whitelist : [%s]", arrayOfObject);
      if (!cj.hX(paramString))
        be.nQ().aU(paramString);
      while (true)
      {
        be.uH();
        break;
        be.nQ().aU(al.getContext().getString(2131165596));
      }
      be.nQ().aU(al.getContext().getString(2131165597));
      f.V(al.getContext());
      be.uH();
      continue;
      new Handler().post(new ae(this));
      continue;
      SharedPreferences localSharedPreferences = al.getContext().getSharedPreferences("system_config_prefs", 0);
      long l = localSharedPreferences.getLong("recomended_update_ignore", -1L);
      if ((l != -1L) && (au.M(l) < 86400L))
      {
        aa.d("MicroMsg.NotifyReceiver", "skip update notification, last check=" + l);
      }
      else
      {
        ap localap = be.nQ();
        if (paramInt2 == -17)
          i = 2;
        localap.bs(i);
        localSharedPreferences.edit().putLong("recomended_update_ignore", au.FC()).commit();
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.ad
 * JD-Core Version:    0.6.2
 */