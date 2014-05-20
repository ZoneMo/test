package com.tencent.mm.ui.account;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.ui.base.h;

final class l
  implements View.OnClickListener
{
  l(EmailVerifyUI paramEmailVerifyUI)
  {
  }

  public final void onClick(View paramView)
  {
    b.jdMethod_if(be.uv() + "," + getClass().getName() + ",R500_250," + be.ds("R500_250") + ",3");
    h.a(this.gpL, n.bvg, n.bva, n.bee, n.bds, new m(this), null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.l
 * JD-Core Version:    0.6.2
 */