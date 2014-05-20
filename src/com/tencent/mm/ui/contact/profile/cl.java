package com.tencent.mm.ui.contact.profile;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.ui.tools.dl;

final class cl
  implements MenuItem.OnMenuItemClickListener
{
  cl(cb paramcb, boolean paramBoolean)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    dl localdl = new dl(NormalUserFooterPreference.b(this.gXl.gXk));
    localdl.b(new cm(this));
    localdl.a(new co(this));
    localdl.cB();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.cl
 * JD-Core Version:    0.6.2
 */