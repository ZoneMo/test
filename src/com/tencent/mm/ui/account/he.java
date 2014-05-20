package com.tencent.mm.ui.account;

import android.widget.EditText;
import com.tencent.mm.modelsimple.e;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ar;
import com.tencent.mm.sdk.platformtools.cj;

final class he
  implements ar
{
  String faQ;

  he(RegByMobileRegUI paramRegByMobileRegUI)
  {
  }

  public final boolean ve()
  {
    try
    {
      this.faQ = e.p(this.gsP, RegByMobileRegUI.j(this.gsP));
      return true;
    }
    catch (Exception localException)
    {
      while (true)
        aa.e("MicroMsg.RegByMobileRegUI", "getPhoneNum err: " + localException.getMessage());
    }
  }

  public final boolean vf()
  {
    EditText localEditText;
    if (cj.hX(RegByMobileRegUI.a(this.gsP).getText().trim()))
    {
      localEditText = RegByMobileRegUI.a(this.gsP);
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
 * Qualified Name:     com.tencent.mm.ui.account.he
 * JD-Core Version:    0.6.2
 */