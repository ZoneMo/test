package com.tencent.mm.ui.bindmobile;

import android.widget.EditText;
import com.tencent.mm.modelsimple.e;
import com.tencent.mm.sdk.platformtools.ar;
import com.tencent.mm.sdk.platformtools.cj;

final class ad
  implements ar
{
  String faQ;

  ad(BindMContactUI paramBindMContactUI)
  {
  }

  public final boolean ve()
  {
    this.faQ = e.p(this.gJb, BindMContactUI.c(this.gJb));
    return true;
  }

  public final boolean vf()
  {
    EditText localEditText;
    if (cj.hX(BindMContactUI.b(this.gJb).getText().trim()))
    {
      localEditText = BindMContactUI.b(this.gJb);
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
 * Qualified Name:     com.tencent.mm.ui.bindmobile.ad
 * JD-Core Version:    0.6.2
 */