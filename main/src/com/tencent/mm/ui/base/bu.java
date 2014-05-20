package com.tencent.mm.ui.base;

import android.widget.PopupWindow;

final class bu
  implements Runnable
{
  private bu(MMListPopupWindow paramMMListPopupWindow)
  {
  }

  public final void run()
  {
    if ((MMListPopupWindow.a(this.gAy) != null) && (MMListPopupWindow.a(this.gAy).getCount() > MMListPopupWindow.a(this.gAy).getChildCount()) && (MMListPopupWindow.a(this.gAy).getChildCount() <= this.gAy.ox))
    {
      MMListPopupWindow.b(this.gAy).setInputMethodMode(2);
      this.gAy.show();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.bu
 * JD-Core Version:    0.6.2
 */