package com.tencent.mm.ui.chatting;

import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.sdk.platformtools.aa;

final class gg
  implements View.OnClickListener
{
  gg(ChattingUI paramChattingUI, MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
  }

  public final void onClick(View paramView)
  {
    if (!this.gPG.aEQ())
      aa.w("MicroMsg.ChattingUI", "Actionbar customView onclick screen not enable");
    while (this.gPH == null)
      return;
    this.gPH.onMenuItemClick(null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.gg
 * JD-Core Version:    0.6.2
 */