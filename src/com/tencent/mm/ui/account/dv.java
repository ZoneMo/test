package com.tencent.mm.ui.account;

import android.view.View;

final class dv
  implements Runnable
{
  dv(MMKeyboardUperView paramMMKeyboardUperView)
  {
  }

  public final void run()
  {
    this.grE.fullScroll(130);
    MMKeyboardUperView.a(this.grE).setVisibility(4);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.dv
 * JD-Core Version:    0.6.2
 */