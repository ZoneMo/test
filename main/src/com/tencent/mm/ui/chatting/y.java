package com.tencent.mm.ui.chatting;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;
import com.tencent.mm.ui.base.dn;

final class y
  implements az
{
  y(v paramv, boolean paramBoolean)
  {
  }

  public final boolean ok()
  {
    if (!this.gKN)
    {
      aa.v("sensor", "speaker off");
      this.gKM.dH(false);
      this.gKM.aIM();
      return false;
    }
    aa.v("sensor", "speaker true");
    v.b(this.gKM);
    v.a(this.gKM, dn.a(v.a(this.gKM), v.a(this.gKM).getString(2131165274), 2000L));
    this.gKM.dH(true);
    this.gKM.aIQ();
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.y
 * JD-Core Version:    0.6.2
 */