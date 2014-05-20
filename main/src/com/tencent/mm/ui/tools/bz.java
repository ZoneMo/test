package com.tencent.mm.ui.tools;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class bz
  implements MenuItem.OnMenuItemClickListener
{
  bz(ImageGalleryGridUI paramImageGalleryGridUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.hjY.onBackPressed();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.bz
 * JD-Core Version:    0.6.2
 */