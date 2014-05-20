package com.tencent.mm.ui.tools;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ah.h;
import com.tencent.mm.ah.k;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.br;
import com.tencent.mm.model.co;
import com.tencent.mm.platformtools.f;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.LauncherUI;
import java.lang.ref.WeakReference;

final class du
  implements View.OnClickListener
{
  du(ds paramds, f paramf, com.tencent.mm.platformtools.e parame)
  {
  }

  public final void onClick(View paramView)
  {
    br.uP().a(this.hlB, this.hlC);
    Context localContext = (Context)ds.a(this.hlD).get();
    if (localContext != null)
    {
      m localm = m.dZN;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(5);
      arrayOfObject[1] = Integer.valueOf(1);
      localm.d(11002, arrayOfObject);
      if (!cj.c((Boolean)be.uz().sr().get(4103)))
        a.l(localContext, "nearby", ".ui.NearbyFriendsIntroUI");
    }
    else
    {
      return;
    }
    co localco = co.vx();
    if (localco == null)
    {
      a.l(localContext, "nearby", ".ui.NearbyPersonalInfoUI");
      return;
    }
    String str = cj.hW(localco.rC());
    int i = cj.a(Integer.valueOf(localco.rk()), 0);
    if ((cj.hX(str)) || (i == 0))
    {
      a.l(localContext, "nearby", ".ui.NearbyPersonalInfoUI");
      return;
    }
    LauncherUI.aEA().vS("tab_find_friend");
    if (k.Dz().Dr() > 0)
    {
      a.l(localContext, "nearby", ".ui.NearbyFriendShowSayHiUI");
      return;
    }
    a.l(localContext, "nearby", ".ui.NearbyFriendsUI");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.du
 * JD-Core Version:    0.6.2
 */