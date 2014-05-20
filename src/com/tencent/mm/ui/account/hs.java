package com.tencent.mm.ui.account;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.widget.CheckBox;
import android.widget.EditText;

final class hs
  implements View.OnKeyListener
{
  hs(RegByMobileRegUI paramRegByMobileRegUI)
  {
  }

  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((66 != paramInt) || (paramKeyEvent.getAction() != 0) || (!RegByMobileRegUI.e(this.gsP).isChecked()))
      return false;
    RegByMobileRegUI.b(this.gsP, RegByMobileRegUI.c(this.gsP).getText().toString().trim());
    RegByMobileRegUI.c(this.gsP, RegByMobileRegUI.a(this.gsP).getText().toString());
    String str = RegByMobileRegUI.f(this.gsP) + RegByMobileRegUI.g(this.gsP);
    this.gsP.SM();
    RegByMobileRegUI.d(this.gsP, str);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.hs
 * JD-Core Version:    0.6.2
 */