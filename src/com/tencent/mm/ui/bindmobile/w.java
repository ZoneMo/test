package com.tencent.mm.ui.bindmobile;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.ui.tools.dg;

final class w
  implements MenuItem.OnMenuItemClickListener
{
  w(BindMContactIntroUI paramBindMContactIntroUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    dg localdg = new dg(this.gIR.aal());
    localdg.a(new x(this));
    localdg.b(new y(this));
    localdg.aNy();
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.w
 * JD-Core Version:    0.6.2
 */