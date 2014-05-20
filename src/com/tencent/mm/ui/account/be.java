package com.tencent.mm.ui.account;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Map;

final class be
  implements TextWatcher
{
  be(LoginByMobileUI paramLoginByMobileUI)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    String str1 = LoginByMobileUI.c(this.gqO).getText().toString();
    if (cj.hX(str1))
    {
      this.gqO.dg(false);
      LoginByMobileUI.c(this.gqO).setText("+");
      LoginByMobileUI.c(this.gqO).setSelection(LoginByMobileUI.c(this.gqO).getText().toString().length());
      LoginByMobileUI.e(this.gqO).setText(this.gqO.getString(n.brz));
    }
    while (true)
    {
      if ((LoginByMobileUI.a(this.gqO).getText() == null) || (LoginByMobileUI.a(this.gqO).getText().toString().length() <= 0) || (!LoginByMobileUI.d(this.gqO)))
        break label327;
      this.gqO.dg(true);
      return;
      if (!str1.contains("+"))
      {
        String str4 = "+" + str1;
        LoginByMobileUI.c(this.gqO).setText(str4);
        LoginByMobileUI.c(this.gqO).setSelection(LoginByMobileUI.c(this.gqO).getText().toString().length());
      }
      else
      {
        if (str1.length() <= 1)
          break;
        String str2 = str1.substring(1);
        if (str2.length() > 4)
        {
          LoginByMobileUI.c(this.gqO).setText(str2.substring(0, 4));
          return;
        }
        String str3 = (String)LoginByMobileUI.f(this.gqO).get(str2);
        if (cj.hX(str3))
        {
          LoginByMobileUI.e(this.gqO).setText(this.gqO.getString(n.brx));
          LoginByMobileUI.a(this.gqO, false);
        }
        else
        {
          LoginByMobileUI.e(this.gqO).setText(str3);
          LoginByMobileUI.a(this.gqO, true);
        }
      }
    }
    label327: this.gqO.dg(false);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.be
 * JD-Core Version:    0.6.2
 */