package com.tencent.mm.plugin.whatsnew.ui;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.RelativeLayout;

final class b
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  b(ThirdAnniversaryUI paramThirdAnniversaryUI)
  {
  }

  public final void onGlobalLayout()
  {
    ThirdAnniversaryUI.c(this.ffF).getViewTreeObserver().removeGlobalOnLayoutListener(this);
    ThirdAnniversaryUI.d(this.ffF);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.whatsnew.ui.b
 * JD-Core Version:    0.6.2
 */