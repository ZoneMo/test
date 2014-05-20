package com.tencent.mm.sandbox.updater;

import android.widget.Button;
import com.tencent.mm.protocal.a.rt;
import com.tencent.mm.sandbox.b;
import com.tencent.mm.sandbox.monitor.j;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.x;

final class n extends b
{
  n(AppUpdaterUI paramAppUpdaterUI)
  {
  }

  public final void B(int paramInt1, int paramInt2)
  {
    aa.d("MicroMsg.AppUpdaterUI", "total=" + paramInt1 + ", offset=" + paramInt2);
    if (paramInt1 <= 0);
    for (long l = 0L; ; l = 100L * paramInt2 / paramInt1)
    {
      int i = (int)l;
      AppUpdaterUI.h(this.gbe).setText(this.gbe.getString(com.tencent.mm.n.bDw) + i + "%");
      AppUpdaterUI.a(this.gbe, paramInt2, paramInt1);
      return;
    }
  }

  public final void a(int paramInt1, int paramInt2, rt paramrt)
  {
    if ((AppUpdaterUI.p(this.gbe) == null) || (AppUpdaterUI.d(this.gbe) == null))
    {
      AppUpdaterUI.b(this.gbe, 2);
      return;
    }
    if ((paramInt1 == 200) && (paramInt2 == 0))
    {
      aa.d("MicroMsg.AppUpdaterUI", "packCallback onSceneEnd ok");
      AppUpdaterUI.a(this.gbe, 100, 100);
      if (AppUpdaterUI.d(this.gbe) != null)
        AppUpdaterUI.d(this.gbe).dismiss();
      if (AppUpdaterUI.g(this.gbe))
        AppUpdaterUI.a(this.gbe, 0);
      while (true)
      {
        AppUpdaterUI.a(this.gbe, AppUpdaterUI.p(this.gbe).ayB());
        return;
        AppUpdaterUI.a(this.gbe, 9);
      }
    }
    if ((AppUpdaterUI.p(this.gbe) instanceof w))
    {
      aa.e("MicroMsg.AppUpdaterUI", "download package from cdn error. switch to webserver");
      if (AppUpdaterUI.d(this.gbe) != null)
      {
        x localx = AppUpdaterUI.d(this.gbe);
        AppUpdaterUI localAppUpdaterUI = this.gbe;
        int i = com.tencent.mm.n.bnr;
        Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = AppUpdaterUI.a(this.gbe);
        arrayOfObject[1] = this.gbe.getString(com.tencent.mm.n.bDt);
        arrayOfObject[2] = cj.K(AppUpdaterUI.k(this.gbe));
        localx.setMessage(localAppUpdaterUI.getString(i, arrayOfObject));
      }
      if (AppUpdaterUI.g(this.gbe))
      {
        if ((paramInt1 == 3) || (paramInt1 == 4) || (paramInt1 == 2) || (paramInt1 == 1) || (paramInt1 == 13))
          AppUpdaterUI.a(this.gbe, paramInt1);
        AppUpdaterUI.q(this.gbe);
        AppUpdaterUI.r(this.gbe);
        return;
      }
      AppUpdaterUI.q(this.gbe);
      AppUpdaterUI.a(this.gbe, new t(AppUpdaterUI.k(this.gbe), AppUpdaterUI.f(this.gbe), AppUpdaterUI.m(this.gbe), AppUpdaterUI.s(this.gbe), AppUpdaterUI.t(this.gbe), AppUpdaterUI.u(this.gbe), AppUpdaterUI.v(this.gbe)));
      AppUpdaterUI.n(this.gbe);
      return;
    }
    aa.d("MicroMsg.AppUpdaterUI", "update failed");
    AppUpdaterUI.a(this.gbe, 10);
    h.a(this.gbe, com.tencent.mm.n.bDu, com.tencent.mm.n.ber, new o(this), new p(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.n
 * JD-Core Version:    0.6.2
 */