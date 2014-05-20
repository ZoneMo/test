package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.ui.base.h;

final class gp
  implements DialogInterface.OnClickListener
{
  gp(RegByMobileRegAIOUI paramRegByMobileRegAIOUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    RegByMobileRegAIOUI localRegByMobileRegAIOUI1 = this.gsL;
    RegByMobileRegAIOUI localRegByMobileRegAIOUI2 = this.gsL;
    this.gsL.getString(n.ber);
    RegByMobileRegAIOUI.a(localRegByMobileRegAIOUI1, h.a(localRegByMobileRegAIOUI2, this.gsL.getString(n.bvv), true, new gq(this)));
    ag localag = new ag(RegByMobileRegAIOUI.k(this.gsL) + RegByMobileRegAIOUI.l(this.gsL), 14, "", 0, "");
    be.uA().d(localag);
    b.ie("RE200_250");
    RegByMobileRegAIOUI.u(this.gsL);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.gp
 * JD-Core Version:    0.6.2
 */