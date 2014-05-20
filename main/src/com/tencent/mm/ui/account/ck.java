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

final class ck
  implements DialogInterface.OnClickListener
{
  ck(LoginIndepPass paramLoginIndepPass)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    aa.d("MicroMsg.LoginIndepPass", "imgSid:" + LoginIndepPass.e(this.grj).grp + " img len" + LoginIndepPass.e(this.grj).grr.length + " " + j.qg());
    i locali = new i(LoginIndepPass.e(this.grj).cxs, LoginIndepPass.e(this.grj).gro, LoginIndepPass.e(this.grj).grs, LoginIndepPass.f(this.grj).aGu(), LoginIndepPass.f(this.grj).aGt(), LoginIndepPass.f(this.grj).aGv(), 1);
    be.uA().d(locali);
    LoginIndepPass localLoginIndepPass1 = this.grj;
    LoginIndepPass localLoginIndepPass2 = this.grj;
    this.grj.getString(n.ber);
    LoginIndepPass.a(localLoginIndepPass1, h.a(localLoginIndepPass2, this.grj.getString(n.bpZ), true, new cl(this, locali)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ck
 * JD-Core Version:    0.6.2
 */