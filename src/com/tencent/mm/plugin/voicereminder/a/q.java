package com.tencent.mm.plugin.voicereminder.a;

import com.tencent.mm.n.s;
import com.tencent.mm.sdk.platformtools.aa;

final class q
  implements s
{
  q(o paramo)
  {
  }

  public final void pB()
  {
    aa.e("MicroMsg.VoiceRemindRecorder", "Record Failed file:" + o.a(this.ePm));
    o.pn(o.a(this.ePm));
    if (this.ePm.cCs != null)
      this.ePm.cCs.pB();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.a.q
 * JD-Core Version:    0.6.2
 */