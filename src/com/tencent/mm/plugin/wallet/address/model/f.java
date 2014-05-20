package com.tencent.mm.plugin.wallet.address.model;

import com.tencent.mm.c.a.eo;
import com.tencent.mm.c.a.ep;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.m;

public final class f extends g
{
  public final boolean a(e parame)
  {
    eo localeo = (eo)parame;
    aa.d("MicroMsg.RcptAddressEventListener", "revent " + localeo.bPp.bPr);
    String str = be.uz().sX();
    m.aK(localeo.bPp.bPr, str + "address");
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.model.f
 * JD-Core Version:    0.6.2
 */