package com.tencent.mm.ui.bindlinkedin;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.n;

final class f
  implements View.OnClickListener
{
  f(BindLinkedInUI paramBindLinkedInUI)
  {
  }

  public final void onClick(View paramView)
  {
    if (!BindLinkedInUI.a(this.gIz))
    {
      BindLinkedInUI.b(this.gIz);
      return;
    }
    if (!BindLinkedInUI.c(this.gIz))
    {
      BindLinkedInUI.d(this.gIz);
      return;
    }
    com.tencent.mm.ui.base.h.a(this.gIz, this.gIz.getString(n.bhO), null, new g(this), new h(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindlinkedin.f
 * JD-Core Version:    0.6.2
 */