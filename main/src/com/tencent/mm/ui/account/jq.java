package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.ad;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.h;

final class jq
  implements DialogInterface.OnClickListener
{
  jq(RegSetInfoUI paramRegSetInfoUI, x paramx)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = RegSetInfoUI.a(this.gtZ).getText().toString().trim();
    String str2 = RegSetInfoUI.b(this.gtZ).getText().toString().trim();
    if ((str2 == null) || (str2.length() <= 0))
    {
      h.c(this.gtZ, n.bEc, n.bvG);
      return;
    }
    int i = RegSetInfoUI.e(this.gtZ);
    be.uA().a(126, this.gtZ);
    ad localad = new ad("", RegSetInfoUI.z(this.gtZ), str2, RegSetInfoUI.A(this.gtZ), RegSetInfoUI.B(this.gtZ), RegSetInfoUI.C(this.gtZ), RegSetInfoUI.g(this.gtZ), i, str1, ((ad)this.cmw).zS(), RegSetInfoUI.D(this.gtZ).aGu(), RegSetInfoUI.E(this.gtZ), RegSetInfoUI.j(this.gtZ));
    be.uA().d(localad);
    RegSetInfoUI localRegSetInfoUI1 = this.gtZ;
    RegSetInfoUI localRegSetInfoUI2 = this.gtZ;
    this.gtZ.getString(n.ber);
    RegSetInfoUI.a(localRegSetInfoUI1, h.a(localRegSetInfoUI2, this.gtZ.getString(n.bvS), true, new jr(this, localad)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.jq
 * JD-Core Version:    0.6.2
 */