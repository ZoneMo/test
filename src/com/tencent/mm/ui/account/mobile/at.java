package com.tencent.mm.ui.account.mobile;

import android.widget.EditText;
import com.tencent.mm.modelsimple.e;
import com.tencent.mm.sdk.platformtools.ar;
import com.tencent.mm.sdk.platformtools.cj;

final class at
  implements ar
{
  String faQ;

  at(MobileInputUI paramMobileInputUI)
  {
  }

  public final boolean ve()
  {
    this.faQ = e.p(this.gwj, this.gwj.cjJ);
    return true;
  }

  public final boolean vf()
  {
    EditText localEditText;
    if (cj.hX(this.gwj.gqA.getText().trim()))
    {
      localEditText = this.gwj.gqA;
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
 * Qualified Name:     com.tencent.mm.ui.account.mobile.at
 * JD-Core Version:    0.6.2
 */