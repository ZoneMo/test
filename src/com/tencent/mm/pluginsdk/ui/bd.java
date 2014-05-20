package com.tencent.mm.pluginsdk.ui;

import com.tencent.mm.aj.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;

final class bd
  implements az
{
  bd(VoiceSearchLayout paramVoiceSearchLayout)
  {
  }

  public final boolean ok()
  {
    if (VoiceSearchLayout.d(this.fnw) == null)
      return true;
    if (VoiceSearchLayout.e(this.fnw) < VoiceSearchLayout.arQ().length)
    {
      VoiceSearchLayout.a(this.fnw, VoiceSearchLayout.arQ()[VoiceSearchLayout.f(this.fnw)]);
      return true;
    }
    int i = VoiceSearchLayout.d(this.fnw).getMaxAmplitude();
    aa.d("MicroMsg.VoiceSearchLayout", "addr vol:" + i);
    int j = VoiceSearchLayout.g(this.fnw);
    if (VoiceSearchLayout.g(this.fnw) == VoiceSearchLayout.h(this.fnw))
    {
      if (i <= 10)
      {
        VoiceSearchLayout.i(this.fnw);
        if (VoiceSearchLayout.j(this.fnw) >= VoiceSearchLayout.arR().length)
          VoiceSearchLayout.k(this.fnw);
        VoiceSearchLayout.a(this.fnw, VoiceSearchLayout.arR()[VoiceSearchLayout.j(this.fnw)]);
        return true;
      }
      int k = i / 5;
      if (k >= VoiceSearchLayout.arS().length)
        k = -1 + VoiceSearchLayout.arS().length;
      aa.d("MicroMsg.VoiceSearchLayout", "addr mvol:" + k);
      VoiceSearchLayout.b(this.fnw, k);
    }
    while (true)
    {
      VoiceSearchLayout.a(this.fnw, VoiceSearchLayout.arS()[j]);
      return true;
      if (VoiceSearchLayout.g(this.fnw) > VoiceSearchLayout.h(this.fnw))
        VoiceSearchLayout.l(this.fnw);
      else
        VoiceSearchLayout.m(this.fnw);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.bd
 * JD-Core Version:    0.6.2
 */