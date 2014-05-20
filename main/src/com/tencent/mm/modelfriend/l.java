package com.tencent.mm.modelfriend;

import com.tencent.mm.c.a.bl;
import com.tencent.mm.c.a.bm;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class l extends g
{
  public final boolean a(e parame)
  {
    if (!(parame instanceof bl))
      return false;
    bl localbl = (bl)parame;
    localbl.bNn.bNq = true;
    if (!cj.hX(z.fB(localbl.bNm.bNo)))
    {
      localbl.bNn.bNq = false;
      return false;
    }
    if (!cj.hX(z.fB(localbl.bNm.bNp)))
    {
      localbl.bNn.bNq = false;
      return false;
    }
    aa.i("MicroMsg.FMessageMobileFilterListenerImpl", "mobile fmessage not found by phonemd5 or fullphonemd5");
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.l
 * JD-Core Version:    0.6.2
 */