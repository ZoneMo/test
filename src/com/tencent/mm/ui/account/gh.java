package com.tencent.mm.ui.account;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

final class gh
  implements View.OnClickListener
{
  gh(RegByMobileRegAIOUI paramRegByMobileRegAIOUI)
  {
  }

  public final void onClick(View paramView)
  {
    RegByMobileRegAIOUI.b(this.gsL, RegByMobileRegAIOUI.c(this.gsL).getText().toString().trim());
    RegByMobileRegAIOUI.c(this.gsL, RegByMobileRegAIOUI.b(this.gsL).getText().toString());
    String str = RegByMobileRegAIOUI.k(this.gsL) + RegByMobileRegAIOUI.l(this.gsL);
    this.gsL.SM();
    RegByMobileRegAIOUI.d(this.gsL, str);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.gh
 * JD-Core Version:    0.6.2
 */