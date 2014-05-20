package com.tencent.mm.ui.bindqq;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class ad
  implements MenuItem.OnMenuItemClickListener
{
  ad(VerifyQQUI paramVerifyQQUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.gJM.SM();
    VerifyQQUI.a(this.gJM);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.ad
 * JD-Core Version:    0.6.2
 */