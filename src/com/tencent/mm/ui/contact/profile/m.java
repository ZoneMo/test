package com.tencent.mm.ui.contact.profile;

import android.view.MenuItem;
import android.widget.ImageView;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.ca;

final class m
  implements ca
{
  m(e parame)
  {
  }

  public final void a(ImageView paramImageView, MenuItem paramMenuItem)
  {
    if (paramMenuItem.getTitle().equals(e.b(this.gWd).getString(2131166248)))
      c.a(paramImageView, e.c(this.gWd).getUsername());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.m
 * JD-Core Version:    0.6.2
 */