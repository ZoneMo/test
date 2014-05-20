package com.tencent.mm.ui.tools.jsapi;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class aq
  implements MenuItem.OnMenuItemClickListener
{
  aq(ShareToQQWeiboUI paramShareToQQWeiboUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.hpL.SM();
    this.hpL.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.aq
 * JD-Core Version:    0.6.2
 */