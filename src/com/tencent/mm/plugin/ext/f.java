package com.tencent.mm.plugin.ext;

import com.tencent.mm.c.a.ah;
import com.tencent.mm.c.a.ai;
import com.tencent.mm.pluginsdk.aq;
import com.tencent.mm.pluginsdk.x;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;

public final class f extends g
{
  public final boolean a(e parame)
  {
    if (!(parame instanceof ah))
    {
      aa.aM("MicroMsg.SubCoreExtAgent", "mismatched event");
      return false;
    }
    ah localah = (ah)parame;
    if (aq.apE() != null)
      localah.bMx.cursor = aq.apE().oB(localah.bMw.bMy);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.f
 * JD-Core Version:    0.6.2
 */