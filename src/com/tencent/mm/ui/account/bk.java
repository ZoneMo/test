package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.ui.base.h;

final class bk
  implements DialogInterface.OnClickListener
{
  bk(LoginByMobileUI paramLoginByMobileUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    LoginByMobileUI localLoginByMobileUI1 = this.gqO;
    LoginByMobileUI localLoginByMobileUI2 = this.gqO;
    this.gqO.getString(n.ber);
    LoginByMobileUI.a(localLoginByMobileUI1, h.a(localLoginByMobileUI2, this.gqO.getString(n.bvv), true, new bl(this)));
    ag localag = new ag(LoginByMobileUI.g(this.gqO) + LoginByMobileUI.h(this.gqO), 16, "", 0, "");
    be.uA().d(localag);
    b.jdMethod_if(be.uv() + "," + this.gqO.getClass().getName() + ",L200_300," + be.ds("L200_300") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bk
 * JD-Core Version:    0.6.2
 */