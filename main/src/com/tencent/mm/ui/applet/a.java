package com.tencent.mm.ui.applet;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

public final class a
  implements AbsListView.OnScrollListener
{
  private AbsListView.OnScrollListener fjY;

  public a()
  {
    this(null);
  }

  public a(AbsListView.OnScrollListener paramOnScrollListener)
  {
    this.fjY = paramOnScrollListener;
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.fjY != null)
      this.fjY.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (this.fjY != null)
      this.fjY.onScrollStateChanged(paramAbsListView, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.applet.a
 * JD-Core Version:    0.6.2
 */