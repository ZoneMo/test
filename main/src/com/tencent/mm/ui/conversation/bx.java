package com.tencent.mm.ui.conversation;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.tencent.mm.ar.a;

final class bx
  implements AbsListView.OnScrollListener
{
  bx(MainUI paramMainUI)
  {
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 < 2);
    while (MainUI.i(this.gZI))
      return;
    MainUI.j(this.gZI);
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (paramInt == 2)
      a.aDD().ao(MainUI.class.getName() + ".Listview", 4);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.bx
 * JD-Core Version:    0.6.2
 */