package com.tencent.mm.plugin.ext.provider;

import com.tencent.mm.model.cd;
import com.tencent.mm.network.r;
import com.tencent.mm.sdk.platformtools.aa;

final class b
  implements cd
{
  b(a parama)
  {
  }

  public final void a(r paramr)
  {
    aa.i("MicroMsg.ExtContentProviderBase", "checkIsLogin() onSceneEnd()");
    this.dfA.cOF.countDown();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.provider.b
 * JD-Core Version:    0.6.2
 */