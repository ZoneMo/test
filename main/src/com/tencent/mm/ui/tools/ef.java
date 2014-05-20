package com.tencent.mm.ui.tools;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class ef
  implements MenuItem.OnMenuItemClickListener
{
  ef(MultiStageCitySelectUI paramMultiStageCitySelectUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    MultiStageCitySelectUI.a(this.hlJ);
    this.hlJ.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ef
 * JD-Core Version:    0.6.2
 */