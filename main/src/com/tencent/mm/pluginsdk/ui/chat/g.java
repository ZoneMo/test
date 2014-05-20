package com.tencent.mm.pluginsdk.ui.chat;

import android.content.Context;
import android.widget.Toast;
import com.tencent.mm.c.a.gy;
import com.tencent.mm.c.a.ha;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import java.util.List;

final class g
  implements d
{
  g(AppPanel paramAppPanel)
  {
  }

  public final void a(int paramInt, k paramk)
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.AppPanel", "pos=%d", arrayOfObject1);
    if ((paramInt != 2147483647) && (paramInt != -2147483648))
    {
      com.tencent.mm.plugin.d.c.m localm3 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Integer.valueOf(paramInt);
      localm3.d(10923, arrayOfObject4);
    }
    switch (paramInt)
    {
    default:
    case 2147483647:
    case -2147483648:
    case 1:
    case 3:
    case 2:
    case 0:
    case 7:
    case 6:
    case 5:
    case 8:
    case 4:
    }
    do
    {
      do
      {
        do
        {
          return;
          if (AppPanel.i(this.fpO) == null)
          {
            aa.e("MicroMsg.AppPanel", "infoList == null");
            return;
          }
          com.tencent.mm.plugin.d.c.m.dZN.j(10305, String.valueOf(AppPanel.i(this.fpO).size()));
          com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = Integer.valueOf(10);
          localm2.d(10923, arrayOfObject3);
          be.uz().sr().set(69121, "");
          AppPanel.j(this.fpO).Wf();
          return;
          if (!AppPanel.k(this.fpO))
          {
            Toast.makeText(AppPanel.l(this.fpO), AppPanel.l(this.fpO).getString(n.bgT), 0).show();
            return;
          }
          AppPanel.j(this.fpO).e(paramk);
          com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = Integer.valueOf(11);
          arrayOfObject2[1] = paramk.field_appId;
          localm1.d(10923, arrayOfObject2);
          return;
          if (!AppPanel.m(this.fpO))
          {
            Toast.makeText(AppPanel.l(this.fpO), AppPanel.l(this.fpO).getString(n.bgT), 0).show();
            return;
          }
          AppPanel.n(this.fpO);
          return;
          if (!AppPanel.o(this.fpO))
          {
            Toast.makeText(AppPanel.l(this.fpO), AppPanel.l(this.fpO).getString(n.bgT), 0).show();
            return;
          }
          AppPanel.j(this.fpO).We();
          return;
          if (!AppPanel.p(this.fpO))
          {
            Toast.makeText(AppPanel.l(this.fpO), AppPanel.l(this.fpO).getString(n.bgT), 0).show();
            return;
          }
          if (((Boolean)be.uz().sr().get(290817, Boolean.valueOf(true))).booleanValue())
          {
            be.uz().sr().set(290817, Boolean.valueOf(false));
            this.fpO.ara();
          }
          AppPanel.j(this.fpO).Wd();
          return;
          if (!AppPanel.q(this.fpO))
          {
            Toast.makeText(AppPanel.l(this.fpO), AppPanel.l(this.fpO).getString(n.bgT), 0).show();
            return;
          }
          AppPanel.r(this.fpO);
          return;
          if (!AppPanel.s(this.fpO))
          {
            Toast.makeText(AppPanel.l(this.fpO), AppPanel.l(this.fpO).getString(n.bgT), 0).show();
            return;
          }
          be.uz().sr().set(54, Boolean.valueOf(false));
        }
        while (AppPanel.j(this.fpO) == null);
        gy localgy = new gy();
        localgy.bQS.bQU = true;
        a.ayH().f(localgy);
        String str = localgy.bQT.bQW;
        if (!cj.hX(str))
        {
          aa.v("MicroMsg.AppPanel", "Talkroom is on: " + str);
          com.tencent.mm.ui.base.h.a(AppPanel.l(this.fpO), AppPanel.l(this.fpO).getString(n.bCC), "", AppPanel.l(this.fpO).getString(n.bee), AppPanel.l(this.fpO).getString(n.bds), new h(this), new i(this));
          return;
        }
        AppPanel.j(this.fpO).Wa();
        return;
        if (!AppPanel.t(this.fpO))
        {
          Toast.makeText(AppPanel.l(this.fpO), AppPanel.l(this.fpO).getString(n.bgT), 0).show();
          return;
        }
        be.uz().sr().set(62, Boolean.valueOf(false));
        AppPanel.j(this.fpO).Wb();
        return;
      }
      while (AppPanel.j(this.fpO) == null);
      be.uz().sr().set(67, Boolean.valueOf(false));
      AppPanel.j(this.fpO).Wc();
      return;
      be.uz().sr().set(73, Boolean.valueOf(false));
      AppPanel.u(this.fpO).ass();
      return;
      if (!AppPanel.v(this.fpO))
      {
        Toast.makeText(AppPanel.l(this.fpO), AppPanel.l(this.fpO).getString(n.bgT), 0).show();
        return;
      }
    }
    while (AppPanel.j(this.fpO) == null);
    AppPanel.j(this.fpO).Wg();
  }

  public final int kw(int paramInt)
  {
    int i = 0;
    if (paramInt < AppPanel.f(this.fpO))
    {
      int j = AppPanel.g(this.fpO).length;
      int k = 0;
      while (i < j)
      {
        if (AppPanel.g(this.fpO)[i] != 0)
        {
          if (k == paramInt)
            return i;
          k++;
        }
        i++;
      }
    }
    if ((paramInt >= AppPanel.f(this.fpO)) && (paramInt < AppPanel.h(this.fpO)))
      return -2147483648;
    return 2147483647;
    return 2147483647;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.g
 * JD-Core Version:    0.6.2
 */