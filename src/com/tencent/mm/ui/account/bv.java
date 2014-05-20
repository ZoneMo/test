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

final class bv
  implements DialogInterface.OnClickListener
{
  bv(LoginHistoryUI paramLoginHistoryUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    aa.d("MicroMsg.LoginHistoryUI", "imgSid:" + LoginHistoryUI.f(this.grc).grp + " img len" + LoginHistoryUI.f(this.grc).grr.length + " " + j.qg());
    i locali = new i(LoginHistoryUI.f(this.grc).cxs, LoginHistoryUI.f(this.grc).gro, LoginHistoryUI.f(this.grc).grs, LoginHistoryUI.g(this.grc).aGu(), LoginHistoryUI.g(this.grc).aGt(), LoginHistoryUI.g(this.grc).aGv(), 0);
    be.uA().d(locali);
    LoginHistoryUI localLoginHistoryUI1 = this.grc;
    LoginHistoryUI localLoginHistoryUI2 = this.grc;
    this.grc.getString(n.ber);
    LoginHistoryUI.a(localLoginHistoryUI1, h.a(localLoginHistoryUI2, this.grc.getString(n.bpZ), true, new bw(this, locali)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bv
 * JD-Core Version:    0.6.2
 */