package com.tencent.mm.ui.base;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

final class bv
  implements AbsListView.OnScrollListener
{
  bv(MMLoadMoreListView paramMMLoadMoreListView)
  {
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((paramAbsListView.getLastVisiblePosition() == -1 + paramAbsListView.getCount()) && (MMLoadMoreListView.a(this.gAB) != null))
      MMLoadMoreListView.a(this.gAB).SR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.bv
 * JD-Core Version:    0.6.2
 */