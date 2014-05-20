package com.tencent.mm.ui.voicetranstext;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;

final class i
  implements az
{
  i(VoiceTransTextUI paramVoiceTransTextUI, int paramInt)
  {
  }

  public final boolean ok()
  {
    if (VoiceTransTextUI.m(this.huE))
      return false;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.huG);
    aa.e("MicroMsg.VoiceTransTextUI", "timmer get, delay:%d", arrayOfObject);
    VoiceTransTextUI.a(this.huE, p.huO);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicetranstext.i
 * JD-Core Version:    0.6.2
 */