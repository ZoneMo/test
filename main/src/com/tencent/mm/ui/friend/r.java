package com.tencent.mm.ui.friend;

import android.content.Context;
import com.tencent.mm.ah.e;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.ui.applet.f;
import com.tencent.mm.pluginsdk.ui.preference.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.h;

final class r
  implements f
{
  r(q paramq, n paramn, e parame)
  {
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2)
  {
    if (paramBoolean1)
    {
      i locali = be.uz().su().tO(this.haS.username);
      if (locali.rj() == 0)
      {
        locali = m.b(this.haT);
        if (!be.uz().su().B(locali))
        {
          aa.e("MicroMsg.FMessageConversationUI", "canAddContact fail, insert fail");
          return;
        }
      }
      w.k(locali);
      com.tencent.mm.ah.k.Dy().v(this.haS.username, 1);
      h.an(m.a(this.haU.haR), m.a(this.haU.haR).getString(2131167703));
      m.a(this.haU.haR, this.haS.username);
    }
    while (true)
    {
      this.haU.haR.notifyDataSetChanged();
      return;
      if (!paramBoolean2)
        break;
      com.tencent.mm.ah.k.Dy().v(this.haS.username, 2);
    }
    aa.e("MicroMsg.FMessageConversationUI", "canAddContact fail, username = " + this.haS.username);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.r
 * JD-Core Version:    0.6.2
 */