package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.an;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.h;

final class jw
  implements DialogInterface.OnClickListener
{
  jw(RegSetInfoUI paramRegSetInfoUI, x paramx)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = RegSetInfoUI.b(this.gtZ).getText().toString().trim();
    String str2 = RegSetInfoUI.a(this.gtZ).getText().toString().trim();
    if ((str1 == null) || (str1.length() <= 0))
    {
      h.c(this.gtZ, n.bEc, n.bvG);
      return;
    }
    this.gtZ.SM();
    int i = RegSetInfoUI.e(this.gtZ);
    String str3 = RegSetInfoUI.f(this.gtZ);
    be.uA().a(429, this.gtZ);
    an localan = new an(str3, RegSetInfoUI.g(this.gtZ), i, str1, str2, ((an)this.cmw).zS(), RegSetInfoUI.D(this.gtZ).aGu());
    be.uA().d(localan);
    RegSetInfoUI localRegSetInfoUI1 = this.gtZ;
    RegSetInfoUI localRegSetInfoUI2 = this.gtZ;
    this.gtZ.getString(n.ber);
    RegSetInfoUI.a(localRegSetInfoUI1, h.a(localRegSetInfoUI2, this.gtZ.getString(n.bvS), true, new jx(this, localan)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.jw
 * JD-Core Version:    0.6.2
 */