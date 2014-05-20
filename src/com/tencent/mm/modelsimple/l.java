package com.tencent.mm.modelsimple;

import com.tencent.mm.am.b;
import com.tencent.mm.model.cd;
import com.tencent.mm.network.n;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.ou;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;

final class l
  implements cd
{
  l(i parami, com.tencent.mm.protocal.l paraml)
  {
  }

  public final void a(r paramr)
  {
    if ((paramr == null) || (paramr.wZ() == null) || (this.cxg.fxM.fAW == null))
    {
      aa.e("MicroMsg.NetSceneAuth", "[arthurdan.NetSceneAuthCrash] fatal error null == dispatcher.getAccInfo() || null == resp.rImpl.getSessionKey() !!!");
      return;
    }
    paramr.wZ().q(this.cxg.fxM.fAW.avA(), this.cxg.fxM.fAX);
    paramr.wZ().f(this.cxg.fxM.fEI.getString(), i.d(this.cxe), i.e(this.cxe));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.l
 * JD-Core Version:    0.6.2
 */