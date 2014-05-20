package com.tencent.mm.ui.account;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.EditText;

final class bf
  implements MenuItem.OnMenuItemClickListener
{
  bf(LoginByMobileUI paramLoginByMobileUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    LoginByMobileUI.b(this.gqO, LoginByMobileUI.c(this.gqO).getText().toString().trim());
    LoginByMobileUI.c(this.gqO, LoginByMobileUI.a(this.gqO).getText().toString());
    String str = LoginByMobileUI.g(this.gqO) + LoginByMobileUI.h(this.gqO);
    this.gqO.SM();
    LoginByMobileUI.d(this.gqO, str);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bf
 * JD-Core Version:    0.6.2
 */