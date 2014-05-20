package com.tencent.mm.ui.account;

import android.view.KeyEvent;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

final class hr
  implements TextView.OnEditorActionListener
{
  hr(RegByMobileRegUI paramRegByMobileRegUI)
  {
  }

  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (((paramInt != 6) && (paramInt != 5)) || (!RegByMobileRegUI.e(this.gsP).isChecked()))
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
 * Qualified Name:     com.tencent.mm.ui.account.hr
 * JD-Core Version:    0.6.2
 */