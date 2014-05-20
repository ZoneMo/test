package com.tencent.mm.plugin.ext;

import com.tencent.mm.c.a.bd;
import com.tencent.mm.modelvoice.bh;
import com.tencent.mm.modelvoice.br;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class j extends g
{
  public final boolean a(e parame)
  {
    if (!(parame instanceof com.tencent.mm.c.a.bc))
    {
      aa.aM("MicroMsg.SubCoreExtAgent", "mismatched event");
      return false;
    }
    com.tencent.mm.c.a.bc localbc = (com.tencent.mm.c.a.bc)parame;
    if (com.tencent.mm.modelvoice.bc.Er() == null)
      aa.e("MicroMsg.SubCoreExtAgent", "SubCoreVoice.getVoiceStg() == null" + cj.azV());
    bh localbh = com.tencent.mm.modelvoice.bc.Er().hA(localbc.bNe.rD);
    if (localbh != null)
      localbc.bNf.bMS = localbh.AF();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.j
 * JD-Core Version:    0.6.2
 */