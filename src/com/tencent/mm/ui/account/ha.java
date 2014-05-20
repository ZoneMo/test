package com.tencent.mm.ui.account;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.tencent.mm.sdk.platformtools.bc;

final class ha
  implements TextWatcher
{
  private bc gqN = new bc();

  ha(RegByMobileRegAIOUI paramRegByMobileRegAIOUI)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    String str1 = RegByMobileRegAIOUI.b(this.gsL).getText().toString();
    if ((str1 != null) && (!str1.equals(RegByMobileRegAIOUI.g(this.gsL))))
    {
      String str2 = RegByMobileRegAIOUI.c(this.gsL).getText().toString();
      RegByMobileRegAIOUI localRegByMobileRegAIOUI = this.gsL;
      RegByMobileRegAIOUI.a(localRegByMobileRegAIOUI, bc.aO(str2.replace("+", ""), str1));
      RegByMobileRegAIOUI.b(this.gsL).setText(RegByMobileRegAIOUI.g(this.gsL));
      RegByMobileRegAIOUI.b(this.gsL).setSelection(RegByMobileRegAIOUI.b(this.gsL).getText().toString().length());
    }
    RegByMobileRegAIOUI.h(this.gsL);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ha
 * JD-Core Version:    0.6.2
 */