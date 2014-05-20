package com.tencent.mm.ui.account;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.ImageView;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;

final class kn
  implements TextWatcher
{
  kn(RegSetInfoUI paramRegSetInfoUI)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    String str = RegSetInfoUI.b(this.gtZ).getText().toString().trim();
    if ((str != null) && (str.length() > 16))
      RegSetInfoUI.b(this.gtZ).setText(str.substring(0, 16));
    while (true)
    {
      return;
      if (!RegSetInfoUI.m(this.gtZ).azG())
        RegSetInfoUI.m(this.gtZ).azn();
      RegSetInfoUI.n(this.gtZ);
      if (cj.hX(RegSetInfoUI.b(this.gtZ).getText().toString().trim()))
        RegSetInfoUI.o(this.gtZ).setVisibility(8);
      while (!RegSetInfoUI.p(this.gtZ))
      {
        RegSetInfoUI.a(this.gtZ).setText(str);
        return;
        RegSetInfoUI.o(this.gtZ).setVisibility(0);
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
 * Qualified Name:     com.tencent.mm.ui.account.kn
 * JD-Core Version:    0.6.2
 */