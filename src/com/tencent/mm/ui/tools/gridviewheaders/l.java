package com.tencent.mm.ui.tools.gridviewheaders;

import android.view.View;
import android.view.ViewConfiguration;

final class l
  implements Runnable
{
  l(GridHeadersGridView paramGridHeadersGridView)
  {
  }

  public final void run()
  {
    if (this.how.fmD == 0)
    {
      this.how.fmD = 1;
      View localView = this.how.ow(this.how.hou);
      if ((localView != null) && (!localView.hasFocusable()))
      {
        if (this.how.nP)
          break label154;
        localView.setPressed(true);
        this.how.setPressed(true);
        this.how.refreshDrawableState();
        int i = ViewConfiguration.getLongPressTimeout();
        if (!this.how.isLongClickable())
          break label145;
        if (this.how.hob == null)
          this.how.hob = new k(this.how, (byte)0);
        this.how.hob.arI();
        this.how.postDelayed(this.how.hob, i);
      }
    }
    return;
    label145: this.how.fmD = 2;
    return;
    label154: this.how.fmD = 2;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gridviewheaders.l
 * JD-Core Version:    0.6.2
 */