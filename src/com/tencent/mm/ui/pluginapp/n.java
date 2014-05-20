package com.tencent.mm.ui.pluginapp;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class n
  implements MenuItem.OnMenuItemClickListener
{
  n(ContactSearchUI paramContactSearchUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.hdk.SM();
    this.hdk.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.pluginapp.n
 * JD-Core Version:    0.6.2
 */