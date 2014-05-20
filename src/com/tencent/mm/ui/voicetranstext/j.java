package com.tencent.mm.ui.voicetranstext;

import android.os.Handler;
import com.tencent.mm.c.a.dw;
import com.tencent.mm.c.a.dx;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;

final class j extends g
{
  j(VoiceTransTextUI paramVoiceTransTextUI)
  {
  }

  public final boolean a(e parame)
  {
    aa.i("MicroMsg.VoiceTransTextUI", "receive notify, process----> may be pass.");
    if (VoiceTransTextUI.n(this.huE) == null);
    while ((VoiceTransTextUI.m(this.huE)) || (!(parame instanceof dw)) || (((dw)parame).bOO.bOP != VoiceTransTextUI.n(this.huE).aPq()))
      return false;
    aa.i("MicroMsg.VoiceTransTextUI", "");
    if (VoiceTransTextUI.o(this.huE))
    {
      aa.i("MicroMsg.VoiceTransTextUI", "has new result! but need wait. so, wait.");
      VoiceTransTextUI.p(this.huE);
      return false;
    }
    new Handler(this.huE.getMainLooper()).post(new k(this));
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicetranstext.j
 * JD-Core Version:    0.6.2
 */