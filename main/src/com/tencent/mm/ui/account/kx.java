package com.tencent.mm.ui.account;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class kx
  implements MenuItem.OnMenuItemClickListener
{
  kx(SetPwdUI paramSetPwdUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.guo.SM();
    this.guo.setResult(0);
    this.guo.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.kx
 * JD-Core Version:    0.6.2
 */