package com.tencent.mm.plugin.whatsnew.ui;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.LinearLayout;

final class h
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  h(ThirdAnniversaryUI paramThirdAnniversaryUI)
  {
  }

  public final void onGlobalLayout()
  {
    ThirdAnniversaryUI.o(this.ffF).getViewTreeObserver().removeGlobalOnLayoutListener(this);
    int i = ThirdAnniversaryUI.o(this.ffF).getMeasuredHeight();
    ThirdAnniversaryUI.a(this.ffF, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.whatsnew.ui.h
 * JD-Core Version:    0.6.2
 */