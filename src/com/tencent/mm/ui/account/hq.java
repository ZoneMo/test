package com.tencent.mm.ui.account;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.CheckBox;
import android.widget.EditText;
import com.tencent.mm.sdk.platformtools.bc;

final class hq
  implements TextWatcher
{
  private bc gqN = new bc();

  hq(RegByMobileRegUI paramRegByMobileRegUI)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    String str1 = RegByMobileRegUI.a(this.gsP).getText().toString();
    if ((str1 != null) && (!str1.equals(RegByMobileRegUI.b(this.gsP))))
    {
      String str2 = RegByMobileRegUI.c(this.gsP).getText().toString();
      RegByMobileRegUI localRegByMobileRegUI = this.gsP;
      RegByMobileRegUI.a(localRegByMobileRegUI, bc.aO(str2.replace("+", ""), str1));
      RegByMobileRegUI.a(this.gsP).setText(RegByMobileRegUI.b(this.gsP));
      RegByMobileRegUI.a(this.gsP).setSelection(RegByMobileRegUI.a(this.gsP).getText().toString().length());
    }
    if ((str1 != null) && (str1.length() > 0) && (RegByMobileRegUI.d(this.gsP)) && (RegByMobileRegUI.e(this.gsP).isChecked()))
    {
      this.gsP.dg(true);
      return;
    }
    this.gsP.dg(false);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.hq
 * JD-Core Version:    0.6.2
 */