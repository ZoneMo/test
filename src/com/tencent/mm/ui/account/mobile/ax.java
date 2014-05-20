package com.tencent.mm.ui.account.mobile;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Map;

final class ax
  implements TextWatcher
{
  ax(MobileInputUI paramMobileInputUI)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    String str1 = this.gwj.gqD.getText().toString();
    if (cj.hX(str1))
    {
      this.gwj.dg(false);
      this.gwj.gsz.setEnabled(false);
      this.gwj.gqD.setText("+");
      this.gwj.gqD.setSelection(this.gwj.gqD.getText().toString().length());
      this.gwj.gqC.setText(this.gwj.getString(n.brz));
    }
    while (true)
    {
      if ((this.gwj.gqA.getText() == null) || (this.gwj.gqA.getText().toString().length() <= 0) || (!this.gwj.gqI) || ((MobileInputUI.b(this.gwj)) && (!this.gwj.frL.isChecked())))
        break label370;
      this.gwj.dg(true);
      this.gwj.gsz.setEnabled(true);
      return;
      if (!str1.contains("+"))
      {
        String str4 = "+" + str1;
        this.gwj.gqD.setText(str4);
        this.gwj.gqD.setSelection(this.gwj.gqD.getText().toString().length());
      }
      else
      {
        if (str1.length() <= 1)
          break;
        String str2 = str1.substring(1);
        if (str2.length() > 4)
        {
          this.gwj.gqD.setText(str2.substring(0, 4));
          return;
        }
        String str3 = (String)this.gwj.gqH.get(str2);
        if (cj.hX(str3))
        {
          this.gwj.gqC.setText(this.gwj.getString(n.brx));
          this.gwj.gqI = false;
        }
        else
        {
          this.gwj.gqC.setText(str3);
          this.gwj.gqI = true;
        }
      }
    }
    label370: this.gwj.dg(false);
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
 * Qualified Name:     com.tencent.mm.ui.account.mobile.ax
 * JD-Core Version:    0.6.2
 */