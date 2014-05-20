package com.tencent.mm.ui.chatting;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.sdk.platformtools.aa;

final class fr
  implements View.OnClickListener
{
  fr(fn paramfn)
  {
  }

  public final void onClick(View paramView)
  {
    if (fn.a(this.gOz).XS() == 0)
    {
      aa.w("MicroMsg.ChattingMoreBtnBarHelper", "ignore click del btn, selected items count is 0");
      return;
    }
    bm.d(fn.b(this.gOz), fn.e(this.gOz), fn.f(this.gOz), this.gOz);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.fr
 * JD-Core Version:    0.6.2
 */