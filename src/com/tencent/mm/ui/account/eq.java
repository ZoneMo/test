package com.tencent.mm.ui.account;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.ui.account.mobile.a;

final class eq
  implements View.OnClickListener
{
  eq(MobileVerifyUIOld paramMobileVerifyUIOld, com.tencent.mm.n.x paramx)
  {
  }

  public final void onClick(View paramView)
  {
    if (MobileVerifyUIOld.q(this.gsa) != null)
    {
      MobileVerifyUIOld.q(this.gsa).dismiss();
      MobileVerifyUIOld.r(this.gsa);
    }
    be.uA().a(380, this.gsa);
    MobileVerifyUIOld.a(this.gsa, new a(new er(this), ((ag)this.cmw).getUsername(), ((ag)this.cmw).zB(), MobileVerifyUIOld.m(this.gsa)));
    MobileVerifyUIOld.s(this.gsa).l(this.gsa);
    if (MobileVerifyUIOld.o(this.gsa) == 0)
      b.jdMethod_if(be.uv() + "," + this.gsa.getClass().getName() + ",R200_600," + be.ds("R200_600") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.eq
 * JD-Core Version:    0.6.2
 */