package com.tencent.mm.ui.tools.gridviewheaders;

import android.view.View;

final class k extends q
  implements Runnable
{
  private k(GridHeadersGridView paramGridHeadersGridView)
  {
    super(paramGridHeadersGridView, (byte)0);
  }

  public final void run()
  {
    View localView = this.how.ow(this.how.hou);
    if (localView != null)
    {
      GridHeadersGridView.a(this.how, this.how.hou);
      if ((!arJ()) || (this.how.nP))
        break label98;
    }
    label98: for (boolean bool = this.how.ay(localView); ; bool = false)
    {
      if (bool)
      {
        this.how.fmD = -2;
        this.how.setPressed(false);
        localView.setPressed(false);
        return;
      }
      this.how.fmD = 2;
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gridviewheaders.k
 * JD-Core Version:    0.6.2
 */