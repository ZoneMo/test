package com.tencent.mm.plugin.ext;

import com.tencent.mm.c.a.bf;
import com.tencent.mm.c.a.bg;
import com.tencent.mm.modelvoice.bc;
import com.tencent.mm.modelvoice.bh;
import com.tencent.mm.modelvoice.br;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class k extends g
{
  public final boolean a(e parame)
  {
    if (!(parame instanceof bf))
    {
      aa.aM("MicroMsg.SubCoreExtAgent", "mismatched event");
      return false;
    }
    bf localbf = (bf)parame;
    if (bc.Er() == null)
    {
      aa.e("MicroMsg.SubCoreExtAgent", "SubCoreVoice.getVoiceStg()" + cj.azV());
      localbf.bNh.rD = "";
    }
    bh localbh = bc.Er().eF((int)localbf.bNg.bMS);
    if (localbh == null)
      localbf.bNh.rD = "";
    localbf.bNh.rD = localbh.getFileName();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.k
 * JD-Core Version:    0.6.2
 */