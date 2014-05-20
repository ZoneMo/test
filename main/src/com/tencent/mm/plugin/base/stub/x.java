package com.tencent.mm.plugin.base.stub;

import com.tencent.mm.model.cd;
import com.tencent.mm.network.r;
import com.tencent.mm.pluginsdk.d.a.a;
import com.tencent.mm.sdk.platformtools.aa;

final class x
  implements cd
{
  x(w paramw)
  {
  }

  public final void a(r paramr)
  {
    aa.i("MicroMsg.WXCommProvider", "checkIsLogin() onSceneEnd()");
    this.cOG.cOF.countDown();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.x
 * JD-Core Version:    0.6.2
 */