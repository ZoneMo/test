package com.tencent.mm.ui.account;

import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.an;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.ui.applet.n;

final class jz extends n
{
  jz(RegSetInfoUI paramRegSetInfoUI, x paramx)
  {
  }

  public final void aFM()
  {
    this.gtZ.SM();
    int i = RegSetInfoUI.e(this.gtZ);
    String str = RegSetInfoUI.f(this.gtZ);
    be.uA().a(429, this.gtZ);
    an localan = new an(str, RegSetInfoUI.g(this.gtZ), i, "", "", ((an)this.cmw).zS(), "");
    be.uA().d(localan);
  }

  protected final void onStart()
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.jz
 * JD-Core Version:    0.6.2
 */