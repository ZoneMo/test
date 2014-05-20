package com.tencent.mm.ui.bindlinkedin;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.y.b;

final class i
  implements View.OnClickListener
{
  i(BindLinkedInUI paramBindLinkedInUI)
  {
  }

  public final void onClick(View paramView)
  {
    b localb = new b();
    BindLinkedInUI.a(this.gIz, h.a(this.gIz, this.gIz.getString(n.ayn), false, new j(this, localb)));
    be.uA().d(localb);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindlinkedin.i
 * JD-Core Version:    0.6.2
 */