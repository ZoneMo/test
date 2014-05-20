package com.tencent.mm.ui.base;

import android.widget.TextView;

final class aq
  implements Runnable
{
  aq(MMCollapsibleTextView paramMMCollapsibleTextView)
  {
  }

  public final void run()
  {
    MMCollapsibleTextView.d(this.gzm).setMaxLines(10);
    MMCollapsibleTextView.e(this.gzm).setVisibility(0);
    MMCollapsibleTextView.e(this.gzm).setText(MMCollapsibleTextView.f(this.gzm));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.aq
 * JD-Core Version:    0.6.2
 */