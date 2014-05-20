package com.tencent.mm.plugin.backup.ui;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class am
  implements MenuItem.OnMenuItemClickListener
{
  am(BakChatUploadSelectUI paramBakChatUploadSelectUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (BakChatUploadSelectUI.a(this.cNp) == null)
      return true;
    if (!BakChatUploadSelectUI.b(this.cNp))
    {
      BakChatUploadSelectUI.a(this.cNp).selectAll();
      this.cNp.Im();
      return true;
    }
    BakChatUploadSelectUI.a(this.cNp).Ic();
    this.cNp.Im();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.am
 * JD-Core Version:    0.6.2
 */