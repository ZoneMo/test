package com.tencent.mm.plugin.extqlauncher;

import com.tencent.mm.c.a.ae;
import com.tencent.mm.c.a.af;
import com.tencent.mm.plugin.extqlauncher.provider.ExtControlProviderQLauncher;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;

public final class f extends g
{
  public final boolean a(e parame)
  {
    if (!(parame instanceof ae))
    {
      aa.aM("MicroMsg.SubCoreExtQLauncher", "mismatched event");
      return false;
    }
    ae localae = (ae)parame;
    ExtControlProviderQLauncher localExtControlProviderQLauncher = new ExtControlProviderQLauncher(localae.bMs.bMv, localae.bMs.bMu, localae.bMs.context);
    localae.bMt.cursor = localExtControlProviderQLauncher.query(localae.bMs.uri, null, null, localae.bMs.selectionArgs, null);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.extqlauncher.f
 * JD-Core Version:    0.6.2
 */