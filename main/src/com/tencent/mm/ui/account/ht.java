package com.tencent.mm.ui.account;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Map;

final class ht
  implements TextWatcher
{
  ht(RegByMobileRegUI paramRegByMobileRegUI)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    String str1 = RegByMobileRegUI.c(this.gsP).getText().toString();
    if (cj.hX(str1))
    {
      this.gsP.dg(false);
      RegByMobileRegUI.c(this.gsP).setText("+");
      RegByMobileRegUI.c(this.gsP).setSelection(RegByMobileRegUI.c(this.gsP).getText().toString().length());
      RegByMobileRegUI.h(this.gsP).setText(this.gsP.getString(n.brz));
    }
    while (true)
    {
      if ((RegByMobileRegUI.a(this.gsP).getText() == null) || (RegByMobileRegUI.a(this.gsP).getText().toString().length() <= 0) || (!RegByMobileRegUI.d(this.gsP)) || (!RegByMobileRegUI.e(this.gsP).isChecked()))
        break label340;
      this.gsP.dg(true);
      return;
      if (!str1.contains("+"))
      {
        String str4 = "+" + str1;
        RegByMobileRegUI.c(this.gsP).setText(str4);
        RegByMobileRegUI.c(this.gsP).setSelection(RegByMobileRegUI.c(this.gsP).getText().toString().length());
      }
      else
      {
        if (str1.length() <= 1)
          break;
        String str2 = str1.substring(1);
        if (str2.length() > 4)
        {
          RegByMobileRegUI.c(this.gsP).setText(str2.substring(0, 4));
          return;
        }
        String str3 = (String)RegByMobileRegUI.i(this.gsP).get(str2);
        if (cj.hX(str3))
        {
          RegByMobileRegUI.h(this.gsP).setText(this.gsP.getString(n.brx));
          RegByMobileRegUI.a(this.gsP, false);
        }
        else
        {
          RegByMobileRegUI.h(this.gsP).setText(str3);
          RegByMobileRegUI.a(this.gsP, true);
        }
      }
    }
    label340: this.gsP.dg(false);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ht
 * JD-Core Version:    0.6.2
 */