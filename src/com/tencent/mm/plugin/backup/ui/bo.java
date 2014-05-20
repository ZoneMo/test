package com.tencent.mm.plugin.backup.ui;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.plugin.backup.model.d;

final class bo
  implements MenuItem.OnMenuItemClickListener
{
  bo(BakchatSelcetCryptUI paramBakchatSelcetCryptUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    d.Gq();
    this.cNO.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.bo
 * JD-Core Version:    0.6.2
 */