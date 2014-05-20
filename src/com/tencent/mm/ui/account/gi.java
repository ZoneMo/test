package com.tencent.mm.ui.account;

import android.widget.EditText;
import com.tencent.mm.modelsimple.e;
import com.tencent.mm.sdk.platformtools.ar;
import com.tencent.mm.sdk.platformtools.cj;

final class gi
  implements ar
{
  String faQ;

  gi(RegByMobileRegAIOUI paramRegByMobileRegAIOUI)
  {
  }

  public final boolean ve()
  {
    this.faQ = e.p(this.gsL, RegByMobileRegAIOUI.m(this.gsL));
    return true;
  }

  public final boolean vf()
  {
    EditText localEditText;
    if (cj.hX(RegByMobileRegAIOUI.b(this.gsL).getText().trim()))
    {
      localEditText = RegByMobileRegAIOUI.b(this.gsL);
      if (!cj.hX(this.faQ))
        break label60;
    }
    label60: for (String str = ""; ; str = this.faQ)
    {
      localEditText.setText(str);
      return true;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.gi
 * JD-Core Version:    0.6.2
 */