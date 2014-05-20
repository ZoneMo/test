package com.tencent.mm.ui.account;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;

final class kq
  implements TextWatcher
{
  kq(RegSetInfoUI paramRegSetInfoUI)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if (!RegSetInfoUI.m(this.gtZ).azG())
      RegSetInfoUI.m(this.gtZ).azn();
    String str = RegSetInfoUI.a(this.gtZ).getText().toString().trim();
    if (cj.hX(str))
    {
      RegSetInfoUI.s(this.gtZ).setText(this.gtZ.getString(n.bwd));
      RegSetInfoUI.t(this.gtZ);
      if (RegSetInfoUI.u(this.gtZ) != null)
      {
        RegSetInfoUI.u(this.gtZ).dismiss();
        RegSetInfoUI.v(this.gtZ);
      }
      RegSetInfoUI.a(this.gtZ).postDelayed(new kr(this), 50L);
    }
    if ((!cj.hX(str)) && ((RegSetInfoUI.c(this.gtZ)) || (!str.equals(RegSetInfoUI.w(this.gtZ)))))
    {
      RegSetInfoUI.t(this.gtZ);
      RegSetInfoUI.m(this.gtZ).bO(500L);
    }
    RegSetInfoUI.a(this.gtZ, str);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.kq
 * JD-Core Version:    0.6.2
 */