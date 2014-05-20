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

final class dt
  implements DialogInterface.OnClickListener
{
  dt(LoginUI paramLoginUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    aa.d("MicroMsg.LoginUI", "imgSid:" + LoginUI.d(this.grz).grp + " img len" + LoginUI.d(this.grz).grr.length + " " + j.qg());
    i locali = new i(LoginUI.d(this.grz).cxs, LoginUI.d(this.grz).gro, LoginUI.d(this.grz).grs, LoginUI.e(this.grz).aGu(), LoginUI.e(this.grz).aGt(), LoginUI.e(this.grz).aGv(), 2);
    be.uA().d(locali);
    LoginUI localLoginUI1 = this.grz;
    LoginUI localLoginUI2 = this.grz;
    this.grz.getString(n.ber);
    LoginUI.a(localLoginUI1, h.a(localLoginUI2, this.grz.getString(n.bpZ), true, new du(this, locali)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.dt
 * JD-Core Version:    0.6.2
 */