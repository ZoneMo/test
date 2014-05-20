package com.tencent.mm.ui.chatting;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.sdk.platformtools.aa;

final class fs
  implements View.OnClickListener
{
  fs(fn paramfn)
  {
  }

  public final void onClick(View paramView)
  {
    if (fn.a(this.gOz).XS() == 0)
      aa.w("MicroMsg.ChattingMoreBtnBarHelper", "ignore click del btn, selected items count is 0");
    while (!bu.a(fn.b(this.gOz), fn.e(this.gOz), fn.g(this.gOz)))
      return;
    this.gOz.aJs();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.fs
 * JD-Core Version:    0.6.2
 */