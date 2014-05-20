package com.tencent.mm.ui.chatting;

import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.tencent.mm.ui.base.cj;

final class hs
  implements cj
{
  hs(ChattingUI paramChattingUI)
  {
  }

  public final boolean Mg()
  {
    View localView = ChattingUI.j(this.gPG).getChildAt(-1 + ChattingUI.j(this.gPG).getChildCount());
    if (localView == null);
    while ((localView.getBottom() <= ChattingUI.j(this.gPG).getHeight()) && (ChattingUI.j(this.gPG).getLastVisiblePosition() == -1 + ChattingUI.j(this.gPG).getAdapter().getCount()))
      return true;
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.hs
 * JD-Core Version:    0.6.2
 */