package com.tencent.mm.ui.friend;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class am
  implements MenuItem.OnMenuItemClickListener
{
  am(FindMContactAddUI paramFindMContactAddUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    FindMContactAddUI.i(this.hbn);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.am
 * JD-Core Version:    0.6.2
 */