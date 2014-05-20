package com.tencent.mm.ui.bindqq;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class t
  implements MenuItem.OnMenuItemClickListener
{
  t(QQGroupUI paramQQGroupUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.gJB.SM();
    this.gJB.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.t
 * JD-Core Version:    0.6.2
 */