package com.tencent.mm.ui.voicetranstext;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;

final class k
  implements Runnable
{
  k(j paramj)
  {
  }

  public final void run()
  {
    aa.i("MicroMsg.VoiceTransTextUI", "notify has new trans, so pull");
    if (VoiceTransTextUI.q(this.huH.huE) != null)
      VoiceTransTextUI.q(this.huH.huE).azn();
    VoiceTransTextUI.a(this.huH.huE, p.huO);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicetranstext.k
 * JD-Core Version:    0.6.2
 */