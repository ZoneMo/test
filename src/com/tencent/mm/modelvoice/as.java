package com.tencent.mm.modelvoice;

import com.tencent.mm.compatible.g.a;
import com.tencent.mm.n.s;
import com.tencent.mm.sdk.platformtools.aa;

final class as
  implements s
{
  as(ap paramap)
  {
  }

  public final void pB()
  {
    ap.h(this.cCB).qc();
    aa.e("MicroMsg.SceneVoice.Recorder", "Record Failed file:" + ap.a(this.cCB));
    bi.hv(ap.a(this.cCB));
    if (ap.k(this.cCB) != null)
      ap.k(this.cCB).pB();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.as
 * JD-Core Version:    0.6.2
 */