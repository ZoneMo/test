package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.i;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.h;

final class it
  implements DialogInterface.OnClickListener
{
  it(RegByQQUI paramRegByQQUI, x paramx)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    aa.d("MicroMsg.RegByQQUI", "imgSid:" + RegByQQUI.e(this.gty).grp + " img len" + RegByQQUI.e(this.gty).grr.length + " " + j.qg());
    i locali = new i(RegByQQUI.e(this.gty).cxs, RegByQQUI.e(this.gty).gro, RegByQQUI.e(this.gty).grs, RegByQQUI.f(this.gty).aGu(), RegByQQUI.f(this.gty).aGt(), RegByQQUI.f(this.gty).aGv(), ((i)this.cmw).getInputType());
    be.uA().d(locali);
    RegByQQUI localRegByQQUI1 = this.gty;
    RegByQQUI localRegByQQUI2 = this.gty;
    this.gty.getString(n.ber);
    RegByQQUI.a(localRegByQQUI1, h.a(localRegByQQUI2, this.gty.getString(n.bpZ), true, new iu(this, locali)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.it
 * JD-Core Version:    0.6.2
 */