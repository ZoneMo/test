package com.tencent.mm.ui.tools.gridviewheaders;

import android.view.View;

final class o extends q
  implements Runnable
{
  int fnd;

  private o(GridHeadersGridView paramGridHeadersGridView)
  {
    super(paramGridHeadersGridView, (byte)0);
  }

  public final void run()
  {
    if (this.how.nP);
    View localView;
    do
    {
      do
        return;
      while ((this.how.hot == null) || (this.how.hot.getCount() <= 0) || (this.fnd == -1) || (this.fnd >= this.how.hot.getCount()) || (!arJ()));
      localView = this.how.ow(this.fnd);
    }
    while (localView == null);
    GridHeadersGridView localGridHeadersGridView = this.how;
    GridHeadersGridView.a(this.how, this.fnd);
    localGridHeadersGridView.ax(localView);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gridviewheaders.o
 * JD-Core Version:    0.6.2
 */