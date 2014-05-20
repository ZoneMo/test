package com.tencent.mm.app;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.compatible.loader.e;
import com.tencent.mm.model.b;
import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.pluginsdk.aq;
import com.tencent.mm.pluginsdk.w;
import com.tencent.mm.ui.LauncherUI;
import com.tencent.mm.w.ag;

final class g extends Handler
{
  g(f paramf)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if (paramMessage.what == -1999)
      if (!f.a(this.bKX))
      {
        LauncherUI localLauncherUI2 = LauncherUI.aEA();
        if ((localLauncherUI2 != null) && (localLauncherUI2.aEq()))
        {
          localLauncherUI2.vS("tab_main");
          localLauncherUI2.aEE();
          e.pZ();
          w localw = aq.apy();
          if (localw != null)
            localw.aew();
          localLauncherUI2.aEv();
        }
      }
    while (true)
    {
      System.gc();
      do
        return;
      while ((paramMessage.what != -2999) || (f.a(this.bKX)));
      LauncherUI localLauncherUI1 = LauncherUI.aEA();
      if (localLauncherUI1 != null)
        localLauncherUI1.aEw();
      if (be.uz().sd() != 0)
      {
        bb localbb = be.uh().dN("plugin.emoji");
        if (localbb != null)
          localbb.bJ(0);
        if ((ag)be.uh().dN(ag.class.getName()) != null)
          ag.clearCache();
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.g
 * JD-Core Version:    0.6.2
 */