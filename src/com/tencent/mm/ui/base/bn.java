package com.tencent.mm.ui.base;

import android.view.View;

final class bn
  implements Runnable
{
  bn(MMListPopupWindow paramMMListPopupWindow)
  {
  }

  public final void run()
  {
    View localView = this.gAy.getAnchorView();
    if ((localView != null) && (localView.getWindowToken() != null))
      this.gAy.show();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.bn
 * JD-Core Version:    0.6.2
 */