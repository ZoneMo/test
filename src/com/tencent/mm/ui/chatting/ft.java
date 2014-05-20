package com.tencent.mm.ui.chatting;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.sdk.platformtools.aa;

final class ft
  implements View.OnClickListener
{
  ft(fn paramfn)
  {
  }

  public final void onClick(View paramView)
  {
    if (fn.a(this.gOz).XS() == 0)
    {
      aa.w("MicroMsg.ChattingMoreBtnBarHelper", "ignore click del btn, selected items count is 0");
      return;
    }
    bh.a(fn.b(this.gOz), fn.e(this.gOz), fn.f(this.gOz), this.gOz);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ft
 * JD-Core Version:    0.6.2
 */