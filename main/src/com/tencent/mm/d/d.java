package com.tencent.mm.d;

import com.tencent.mm.c.a.hj;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;

final class d
  implements az
{
  d(b paramb)
  {
  }

  public final boolean ok()
  {
    aa.d("MicroMsg.BroadcastController", "notify cancel");
    b.b(this.caT).bRf.visible = false;
    a.ayH().f(b.b(this.caT));
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.d.d
 * JD-Core Version:    0.6.2
 */