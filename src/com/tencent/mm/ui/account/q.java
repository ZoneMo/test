package com.tencent.mm.ui.account;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.MMAutoSwitchEditTextView;

final class q
  implements MenuItem.OnMenuItemClickListener
{
  q(EmailVerifyUI paramEmailVerifyUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    EmailVerifyUI.b(this.gpL, EmailVerifyUI.e(this.gpL).getText());
    if ((!cj.hX(EmailVerifyUI.f(this.gpL))) && (EmailVerifyUI.f(this.gpL).length() == 12))
      EmailVerifyUI.a(this.gpL, EmailVerifyUI.f(this.gpL));
    while (true)
    {
      return true;
      this.gpL.dg(false);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.q
 * JD-Core Version:    0.6.2
 */