package com.tencent.mm.ui.gallery;

import android.app.Activity;
import android.content.res.Resources;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.ui.base.h;

final class c
  implements MenuItem.OnMenuItemClickListener
{
  c(GestureGalleryUI paramGestureGalleryUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    String[] arrayOfString = this.hcy.aal().getResources().getStringArray(2131296279);
    h.c(this.hcy, null, arrayOfString, "", new d(this));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.gallery.c
 * JD-Core Version:    0.6.2
 */