package com.tencent.mm.ui.chatting;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class ki
  implements MenuItem.OnMenuItemClickListener
{
  ki(ImageDownloadUI paramImageDownloadUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    be.uA().c(ImageDownloadUI.a(this.gQG));
    this.gQG.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ki
 * JD-Core Version:    0.6.2
 */