package com.tencent.mm.modelvoice;

import com.tencent.mm.compatible.g.a;
import com.tencent.mm.n.s;
import com.tencent.mm.sdk.platformtools.aa;

final class ai
  implements bq
{
  ai(af paramaf)
  {
  }

  public final void pB()
  {
    af.g(this.cCv).qc();
    aa.e("MicroMsg.SceneVoice.Recorder", "Record Failed file:" + af.a(this.cCv));
    bi.hv(af.a(this.cCv));
    if (this.cCv.cCs != null)
      this.cCv.cCs.pB();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.ai
 * JD-Core Version:    0.6.2
 */