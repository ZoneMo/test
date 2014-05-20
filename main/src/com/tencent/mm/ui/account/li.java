package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.i;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.h;

final class li
  implements DialogInterface.OnClickListener
{
  li(SimpleLoginUI paramSimpleLoginUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    aa.d("MicroMsg.SimpleLoginUI", "imgSid:" + SimpleLoginUI.d(this.guA).grp + " img len" + SimpleLoginUI.d(this.guA).grr.length + " " + j.qg());
    i locali = new i(SimpleLoginUI.d(this.guA).cxs, SimpleLoginUI.d(this.guA).gro, SimpleLoginUI.d(this.guA).grs, SimpleLoginUI.e(this.guA).aGu(), SimpleLoginUI.e(this.guA).aGt(), SimpleLoginUI.e(this.guA).aGv(), 0);
    be.uA().d(locali);
    SimpleLoginUI localSimpleLoginUI1 = this.guA;
    SimpleLoginUI localSimpleLoginUI2 = this.guA;
    this.guA.getString(n.ber);
    SimpleLoginUI.a(localSimpleLoginUI1, h.a(localSimpleLoginUI2, this.guA.getString(n.bpZ), true, new lj(this, locali)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.li
 * JD-Core Version:    0.6.2
 */