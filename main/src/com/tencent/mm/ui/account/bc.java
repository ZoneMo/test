package com.tencent.mm.ui.account;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

final class bc
  implements TextWatcher
{
  private com.tencent.mm.sdk.platformtools.bc gqN = new com.tencent.mm.sdk.platformtools.bc();

  bc(LoginByMobileUI paramLoginByMobileUI)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    String str1 = LoginByMobileUI.a(this.gqO).getText().toString();
    if ((str1 != null) && (!str1.equals(LoginByMobileUI.b(this.gqO))))
    {
      String str2 = LoginByMobileUI.c(this.gqO).getText().toString();
      LoginByMobileUI localLoginByMobileUI = this.gqO;
      LoginByMobileUI.a(localLoginByMobileUI, com.tencent.mm.sdk.platformtools.bc.aO(str2.replace("+", ""), str1));
      LoginByMobileUI.a(this.gqO).setText(LoginByMobileUI.b(this.gqO));
      LoginByMobileUI.a(this.gqO).setSelection(LoginByMobileUI.a(this.gqO).getText().toString().length());
    }
    if ((str1 != null) && (str1.length() > 0) && (LoginByMobileUI.d(this.gqO)))
    {
      this.gqO.dg(true);
      return;
    }
    this.gqO.dg(false);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bc
 * JD-Core Version:    0.6.2
 */