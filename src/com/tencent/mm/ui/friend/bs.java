package com.tencent.mm.ui.friend;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.ct;
import com.tencent.mm.model.w;
import com.tencent.mm.modelfriend.av;
import com.tencent.mm.modelfriend.aw;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;

final class bs
  implements c
{
  bs(br parambr)
  {
  }

  public final void a(int paramInt, String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      br.a(this.hbP)[paramInt] = 2;
      av localav = ax.Aq().fM(paramString);
      localav.Aj();
      aa.d("MicroMsg.QQFriendAdapter", "user " + paramString + " qq " + localav.Af());
      ax.Aq().a(localav.Af(), localav);
    }
    this.hbP.notifyDataSetChanged();
  }

  public final void x(int paramInt, String paramString)
  {
    aw localaw = ax.Aq();
    av localav1 = localaw.fM(paramString);
    localav1.ds(2);
    localaw.a(localav1.Af(), localav1);
    br.a(this.hbP)[paramInt] = 0;
    this.hbP.notifyDataSetChanged();
    i locali = be.uz().su().tO(paramString);
    if (locali != null)
      if (((locali.ru() == null) || (locali.ru().equals(""))) && (localav1.Ai() != null) && (!localav1.Ai().equals("")))
        w.b(locali, localav1.Ai());
    while (true)
    {
      ct.vB().a(26, new Object[0]);
      return;
      av localav2 = ax.Aq().fM(paramString);
      localav2.Aj();
      aa.d("MicroMsg.QQFriendAdapter", "user " + paramString + " qq " + localav2.Af());
      ax.Aq().a(localav2.Af(), localav2);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.bs
 * JD-Core Version:    0.6.2
 */