package com.tencent.mm.plugin.ext.provider;

import com.tencent.mm.c.a.ba;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.storage.i;

final class k
  implements Runnable
{
  k(ExtControlProviderSNS paramExtControlProviderSNS, i parami, com.tencent.mm.pluginsdk.d.a.a parama)
  {
  }

  public final void run()
  {
    ba localba = new ba();
    localba.bMZ.type = 1;
    localba.bMZ.username = this.dgi.getUsername();
    localba.bMZ.bNa = ExtControlProviderSNS.a(this.dgj);
    localba.bMZ.bNb = ExtControlProviderSNS.b(this.dgj);
    localba.bMZ.bNc = ExtControlProviderSNS.c(this.dgj);
    localba.bMZ.bNd = new l(this);
    com.tencent.mm.sdk.b.a.ayH().f(localba);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.provider.k
 * JD-Core Version:    0.6.2
 */