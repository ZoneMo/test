package com.tencent.mm.ui.base;

import android.os.Handler;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.PopupWindow;

final class bs
  implements AbsListView.OnScrollListener
{
  private bs(MMListPopupWindow paramMMListPopupWindow)
  {
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((paramInt == 1) && (!this.gAy.isInputMethodNotNeeded()) && (MMListPopupWindow.b(this.gAy).getContentView() != null))
    {
      MMListPopupWindow.d(this.gAy).removeCallbacks(MMListPopupWindow.c(this.gAy));
      MMListPopupWindow.c(this.gAy).run();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.bs
 * JD-Core Version:    0.6.2
 */