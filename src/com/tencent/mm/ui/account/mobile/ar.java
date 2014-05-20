package com.tencent.mm.ui.account.mobile;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import com.tencent.mm.sdk.platformtools.bc;

final class ar
  implements TextWatcher
{
  private bc gqN = new bc();

  ar(MobileInputUI paramMobileInputUI)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    String str1 = this.gwj.gqA.getText().toString();
    if ((str1 != null) && (!str1.equals(this.gwj.gqM)))
    {
      String str2 = this.gwj.gqD.getText().toString();
      MobileInputUI localMobileInputUI = this.gwj;
      localMobileInputUI.gqM = bc.aO(str2.replace("+", ""), str1);
      this.gwj.gqA.setText(this.gwj.gqM);
      this.gwj.gqA.setSelection(this.gwj.gqA.getText().toString().length());
    }
    if ((str1 != null) && (str1.length() > 0) && (this.gwj.gqI) && ((!MobileInputUI.b(this.gwj)) || (this.gwj.frL.isChecked())))
    {
      this.gwj.dg(true);
      this.gwj.gsz.setEnabled(true);
      return;
    }
    this.gwj.dg(false);
    this.gwj.gsz.setEnabled(false);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.ar
 * JD-Core Version:    0.6.2
 */