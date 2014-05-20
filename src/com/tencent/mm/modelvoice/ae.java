package com.tencent.mm.modelvoice;

import com.tencent.mm.compatible.audio.e;
import com.tencent.mm.model.be;
import com.tencent.mm.n.p;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bs;

final class ae
  implements bs
{
  ae(ad paramad)
  {
  }

  public final void wE()
  {
    if (!this.cCi.cCh.cCg.cCe.isPlaying())
    {
      be.uB().pb();
      aa.d("MicroMsg.SceneVoice", "onCompletion() resetSpeaker");
    }
    y.c(this.cCi.cCh.cCg.cCe).wE();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.ae
 * JD-Core Version:    0.6.2
 */