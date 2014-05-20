package com.tencent.mm.plugin.whatsnew.ui;

import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;

final class a
  implements az
{
  a(ThirdAnniversaryUI paramThirdAnniversaryUI)
  {
  }

  public final boolean ok()
  {
    aa.d("MicroMsg.ThirdAnniversaryUI", "load error, timer reached");
    if (ThirdAnniversaryUI.a(this.ffF) != null)
      be.uA().c(ThirdAnniversaryUI.a(this.ffF));
    ThirdAnniversaryUI.b(this.ffF);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.whatsnew.ui.a
 * JD-Core Version:    0.6.2
 */