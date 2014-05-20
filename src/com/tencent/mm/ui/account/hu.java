package com.tencent.mm.ui.account;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.EditText;

final class hu
  implements MenuItem.OnMenuItemClickListener
{
  hu(RegByMobileRegUI paramRegByMobileRegUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    RegByMobileRegUI.b(this.gsP, RegByMobileRegUI.c(this.gsP).getText().toString().trim());
    RegByMobileRegUI.c(this.gsP, RegByMobileRegUI.a(this.gsP).getText().toString());
    String str = RegByMobileRegUI.f(this.gsP) + RegByMobileRegUI.g(this.gsP);
    this.gsP.SM();
    RegByMobileRegUI.d(this.gsP, str);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.hu
 * JD-Core Version:    0.6.2
 */