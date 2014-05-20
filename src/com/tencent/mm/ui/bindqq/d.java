package com.tencent.mm.ui.bindqq;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.s;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.ui.base.h;

final class d
  implements View.OnClickListener
{
  d(BindQQUI paramBindQQUI)
  {
  }

  public final void onClick(View paramView)
  {
    s locals = new s(s.cxl);
    be.uA().d(locals);
    BindQQUI localBindQQUI1 = this.gJq;
    BindQQUI localBindQQUI2 = this.gJq;
    this.gJq.getString(n.ber);
    BindQQUI.a(localBindQQUI1, h.a(localBindQQUI2, this.gJq.getString(n.byr), true, new e(this)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.d
 * JD-Core Version:    0.6.2
 */