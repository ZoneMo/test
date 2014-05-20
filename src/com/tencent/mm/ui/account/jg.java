package com.tencent.mm.ui.account;

import android.widget.EditText;
import android.widget.ProgressBar;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.an;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.az;
import com.tencent.mm.sdk.platformtools.cj;

final class jg
  implements az
{
  jg(RegSetInfoUI paramRegSetInfoUI)
  {
  }

  public final boolean ok()
  {
    Object localObject1 = RegSetInfoUI.a(this.gtZ).getText().toString().trim();
    String str1 = RegSetInfoUI.b(this.gtZ).getText().toString().trim();
    if ((cj.hX((String)localObject1)) && (!cj.hX(str1)))
      if (str1.length() <= 5)
        break label190;
    label190: for (localObject1 = str1.substring(0, 5); ; localObject1 = str1)
    {
      if ((!cj.hX((String)localObject1)) && (cj.hX(str1)));
      for (Object localObject2 = localObject1; ; localObject2 = str1)
      {
        if ((!cj.hX((String)localObject1)) && (RegSetInfoUI.c(this.gtZ)) && (RegSetInfoUI.d(this.gtZ)))
        {
          int i = RegSetInfoUI.e(this.gtZ);
          String str2 = RegSetInfoUI.f(this.gtZ);
          be.uA().a(429, this.gtZ);
          an localan = new an(str2, RegSetInfoUI.g(this.gtZ), i, (String)localObject2, (String)localObject1, "", "");
          be.uA().d(localan);
          RegSetInfoUI.h(this.gtZ).setVisibility(0);
        }
        return false;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.jg
 * JD-Core Version:    0.6.2
 */