package com.tencent.mm.n;

import com.tencent.mm.network.aj;
import com.tencent.mm.protocal.l;
import com.tencent.mm.sdk.platformtools.aa;

final class as
  implements Runnable
{
  as(ar paramar, int paramInt1, int paramInt2)
  {
  }

  public final void run()
  {
    l locall = (l)ar.a(this.cmQ).wv();
    if (locall == null)
    {
      aa.aM("MicroMsg.RemoteReqResp", "null auth.resp");
      return;
    }
    i.wC().a(locall, this.cmy, this.cmz);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.as
 * JD-Core Version:    0.6.2
 */