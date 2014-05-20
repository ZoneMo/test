package com.tencent.mm.ui.chatting;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ui.base.ce;

final class fj
  implements View.OnClickListener
{
  fj(fg paramfg)
  {
  }

  public final void onClick(View paramView)
  {
    if ((fg.h(this.gOn) != null) && (fg.h(this.gOn).isShowing()))
    {
      fg.i(this.gOn);
      fg.h(this.gOn).dismiss();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.fj
 * JD-Core Version:    0.6.2
 */