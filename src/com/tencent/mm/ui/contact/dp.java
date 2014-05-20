package com.tencent.mm.ui.contact;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class dp
  implements MenuItem.OnMenuItemClickListener
{
  dp(SelectContactUI paramSelectContactUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if ((SelectContactUI.k(this.gVn) == 4) || (SelectContactUI.k(this.gVn) == 3) || (SelectContactUI.k(this.gVn) == 0) || (SelectContactUI.k(this.gVn) == 1) || ("@t.qq.com".equals(SelectContactUI.s(this.gVn))) || (SelectContactUI.k(this.gVn) == 5) || (SelectContactUI.k(this.gVn) == 7) || (SelectContactUI.k(this.gVn) == 8) || (SelectContactUI.k(this.gVn) == 10))
    {
      this.gVn.SM();
      this.gVn.finish();
    }
    while ((!"@black.android".equals(SelectContactUI.s(this.gVn))) && (!"@domain.android".equals(SelectContactUI.s(this.gVn))))
      return true;
    this.gVn.SM();
    this.gVn.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.dp
 * JD-Core Version:    0.6.2
 */