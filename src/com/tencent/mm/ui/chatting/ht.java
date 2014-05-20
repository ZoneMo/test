package com.tencent.mm.ui.chatting;

import android.view.View;
import android.widget.ListView;
import com.tencent.mm.ui.base.ck;

final class ht
  implements ck
{
  ht(ChattingUI paramChattingUI)
  {
  }

  public final boolean Me()
  {
    View localView = ChattingUI.j(this.gPG).getChildAt(ChattingUI.j(this.gPG).getFirstVisiblePosition());
    return (localView != null) && (localView.getTop() == 0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ht
 * JD-Core Version:    0.6.2
 */