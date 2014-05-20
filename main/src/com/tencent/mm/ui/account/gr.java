package com.tencent.mm.ui.account;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.LinearLayout;

final class gr
  implements View.OnFocusChangeListener
{
  gr(RegByMobileRegAIOUI paramRegByMobileRegAIOUI)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
      RegByMobileRegAIOUI.a(this.gsL);
    if ((paramView == RegByMobileRegAIOUI.b(this.gsL)) || (paramView == RegByMobileRegAIOUI.c(this.gsL)))
      RegByMobileRegAIOUI.d(this.gsL).onFocusChange(paramView, paramBoolean);
    if (paramView == RegByMobileRegAIOUI.e(this.gsL))
    {
      if (paramBoolean)
        RegByMobileRegAIOUI.f(this.gsL).setBackgroundResource(com.tencent.mm.h.afi);
    }
    else
      return;
    RegByMobileRegAIOUI.f(this.gsL).setBackgroundResource(com.tencent.mm.h.afj);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.gr
 * JD-Core Version:    0.6.2
 */