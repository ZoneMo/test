package com.tencent.mm.ui.account.mobile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.i;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.account.db;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.h;

final class w
  implements DialogInterface.OnClickListener
{
  w(o paramo, db paramdb)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    aa.d("MicroMsg.MobileInputLoginLogic", "imgSid:" + this.gvY.grp + " img len" + this.gvY.grr.length + " " + j.qg());
    i locali = new i(this.gvY.cxs, this.gvY.gro, this.gvY.grs, o.a(this.gvX).aGu(), o.a(this.gvX).aGt(), o.a(this.gvX).aGv(), 1);
    be.uA().d(locali);
    MobileInputUI localMobileInputUI1 = o.b(this.gvX);
    MobileInputUI localMobileInputUI2 = o.b(this.gvX);
    o.b(this.gvX).getString(n.ber);
    localMobileInputUI1.gqJ = h.a(localMobileInputUI2, o.b(this.gvX).getString(n.bpZ), true, new x(this, locali));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.w
 * JD-Core Version:    0.6.2
 */