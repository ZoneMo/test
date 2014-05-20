package com.tencent.mm.ui.tools;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class ba
  implements MenuItem.OnMenuItemClickListener
{
  ba(CropImageNewUI paramCropImageNewUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    dl localdl = new dl(this.hhZ);
    localdl.a(new bb(this));
    localdl.b(new bc(this));
    localdl.cB();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ba
 * JD-Core Version:    0.6.2
 */