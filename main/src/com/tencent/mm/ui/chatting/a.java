package com.tencent.mm.ui.chatting;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class a
  implements MenuItem.OnMenuItemClickListener
{
  a(AppAttachDownloadUI paramAppAttachDownloadUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (AppAttachDownloadUI.a(this.gKc) != null)
      be.uA().c(AppAttachDownloadUI.a(this.gKc));
    this.gKc.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.a
 * JD-Core Version:    0.6.2
 */