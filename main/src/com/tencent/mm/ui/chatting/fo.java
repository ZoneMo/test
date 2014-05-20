package com.tencent.mm.ui.chatting;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ui.tools.eo;

final class fo
  implements View.OnClickListener
{
  fo(fn paramfn)
  {
  }

  public final void onClick(View paramView)
  {
    if (fn.a(this.gOz).ce(((Long)paramView.getTag()).longValue()))
    {
      int i = fn.a(this.gOz).XS();
      fn.b(this.gOz).aJD();
      fn.c(this.gOz).aNE();
      fn.d(this.gOz).setVisibility(0);
      fn.d(this.gOz).ny(i);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.fo
 * JD-Core Version:    0.6.2
 */