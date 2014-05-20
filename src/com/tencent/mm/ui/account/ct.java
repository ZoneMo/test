package com.tencent.mm.ui.account;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.n;
import com.tencent.mm.ui.base.h;

final class ct
  implements View.OnClickListener
{
  ct(LoginIndepPass paramLoginIndepPass)
  {
  }

  public final void onClick(View paramView)
  {
    h.a(this.grj, this.grj.getString(n.bvI) + LoginIndepPass.c(this.grj), this.grj.getString(n.bvJ), new cu(this), new cw(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ct
 * JD-Core Version:    0.6.2
 */