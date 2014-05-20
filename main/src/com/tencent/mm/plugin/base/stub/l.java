package com.tencent.mm.plugin.base.stub;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class l
  implements MenuItem.OnMenuItemClickListener
{
  l(OAuthUI paramOAuthUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    OAuthUI.b(this.cOo);
    this.cOo.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.l
 * JD-Core Version:    0.6.2
 */