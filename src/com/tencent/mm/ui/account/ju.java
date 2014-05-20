package com.tencent.mm.ui.account;

import android.widget.EditText;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.ad;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.ui.applet.n;

final class ju extends n
{
  ju(RegSetInfoUI paramRegSetInfoUI, x paramx)
  {
  }

  public final void aFM()
  {
    this.gtZ.SM();
    String str1 = RegSetInfoUI.a(this.gtZ).getText().toString().trim();
    String str2 = RegSetInfoUI.b(this.gtZ).getText().toString().trim();
    int i = RegSetInfoUI.e(this.gtZ);
    be.uA().a(126, this.gtZ);
    ad localad = new ad("", RegSetInfoUI.z(this.gtZ), str2, RegSetInfoUI.A(this.gtZ), RegSetInfoUI.B(this.gtZ), RegSetInfoUI.C(this.gtZ), RegSetInfoUI.g(this.gtZ), i, str1, ((ad)this.cmw).zS(), "", RegSetInfoUI.E(this.gtZ), RegSetInfoUI.j(this.gtZ));
    be.uA().d(localad);
  }

  protected final void onStart()
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ju
 * JD-Core Version:    0.6.2
 */