package com.tencent.mm.ui;

import android.os.Looper;
import android.os.MessageQueue;
import android.os.MessageQueue.IdleHandler;
import android.view.LayoutInflater;
import com.tencent.mm.booter.ap;
import com.tencent.mm.model.b;
import com.tencent.mm.model.bd;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cb;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;

final class as
  implements MessageQueue.IdleHandler
{
  as(LauncherUI paramLauncherUI)
  {
  }

  public final boolean queueIdle()
  {
    if (au.c((Integer)be.uz().sr().get(15)) == 0);
    for (int i = 1; i != 0; i = 0)
    {
      aa.e("MicroMsg.LauncherUI", "not init finish , do not post sync task");
      return false;
    }
    String str = bd.cik.t("login_user_name", "");
    if ((be.uD()) || (!str.equals("")))
      be.uA().d(new cb(new at(this), "launch normal"));
    LauncherUI.h(this.gmk).inflate(2130903144, null);
    be.uz().sg();
    new ap(this.gmk).oU();
    LauncherUI.aEG();
    Looper.myQueue().removeIdleHandler(this.gmk.gmg);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.as
 * JD-Core Version:    0.6.2
 */