package com.tencent.mm.ui.gallery;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.ui.tools.s;
import com.tencent.mm.ui.base.dn;

final class b
  implements MenuItem.OnMenuItemClickListener
{
  b(GestureGalleryUI paramGestureGalleryUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if ((GestureGalleryUI.a(this.hcy) == null) || (GestureGalleryUI.a(this.hcy).equals("")))
      return true;
    if (!be.uz().isSDCardAvailable())
    {
      dn.bW(this.hcy);
      return true;
    }
    s.f(GestureGalleryUI.a(this.hcy), this.hcy);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.gallery.b
 * JD-Core Version:    0.6.2
 */