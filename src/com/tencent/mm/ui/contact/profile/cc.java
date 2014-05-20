package com.tencent.mm.ui.contact.profile;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.ui.tools.dl;

final class cc
  implements MenuItem.OnMenuItemClickListener
{
  cc(cb paramcb)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    dl localdl = new dl(NormalUserFooterPreference.b(this.gXl.gXk));
    localdl.a(new cd(this));
    localdl.b(new ce(this));
    localdl.a(new ch(this));
    localdl.cB();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.cc
 * JD-Core Version:    0.6.2
 */