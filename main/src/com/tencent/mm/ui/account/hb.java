package com.tencent.mm.ui.account;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Map;

final class hb
  implements TextWatcher
{
  hb(RegByMobileRegAIOUI paramRegByMobileRegAIOUI)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    String str1 = RegByMobileRegAIOUI.c(this.gsL).getText().toString();
    if (cj.hX(str1))
    {
      this.gsL.dg(false);
      RegByMobileRegAIOUI.c(this.gsL).setText("+");
      RegByMobileRegAIOUI.c(this.gsL).setSelection(RegByMobileRegAIOUI.c(this.gsL).getText().toString().length());
      RegByMobileRegAIOUI.i(this.gsL).setText(this.gsL.getString(n.brz));
    }
    while (true)
    {
      RegByMobileRegAIOUI.h(this.gsL);
      return;
      if (!str1.contains("+"))
      {
        String str4 = "+" + str1;
        RegByMobileRegAIOUI.c(this.gsL).setText(str4);
        RegByMobileRegAIOUI.c(this.gsL).setSelection(RegByMobileRegAIOUI.c(this.gsL).getText().toString().length());
      }
      else
      {
        if (str1.length() <= 1)
          break;
        String str2 = str1.substring(1);
        if (str2.length() > 4)
        {
          RegByMobileRegAIOUI.c(this.gsL).setText(str2.substring(0, 4));
          return;
        }
        String str3 = (String)RegByMobileRegAIOUI.j(this.gsL).get(str2);
        if (cj.hX(str3))
        {
          RegByMobileRegAIOUI.i(this.gsL).setText(this.gsL.getString(n.brx));
          RegByMobileRegAIOUI.a(this.gsL, false);
        }
        else
        {
          RegByMobileRegAIOUI.i(this.gsL).setText(str3);
          RegByMobileRegAIOUI.a(this.gsL, true);
        }
      }
    }
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.hb
 * JD-Core Version:    0.6.2
 */