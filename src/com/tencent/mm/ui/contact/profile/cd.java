package com.tencent.mm.ui.contact.profile;

import android.view.MenuItem;
import android.widget.ImageView;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.ca;

final class cd
  implements ca
{
  cd(cc paramcc)
  {
  }

  public final void a(ImageView paramImageView, MenuItem paramMenuItem)
  {
    if (paramMenuItem.getTitle().equals(NormalUserFooterPreference.b(this.gXm.gXl.gXk).getString(2131166248)))
      c.a(paramImageView, NormalUserFooterPreference.a(this.gXm.gXl.gXk).getUsername());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.cd
 * JD-Core Version:    0.6.2
 */