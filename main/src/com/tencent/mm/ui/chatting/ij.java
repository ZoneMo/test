package com.tencent.mm.ui.chatting;

import com.tencent.mm.model.ap;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.plugin.voicereminder.a.j;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.h;

final class ij
  implements j
{
  ij(ChattingUI paramChattingUI)
  {
  }

  public final void e(String paramString, long paramLong)
  {
    aa.d("MicroMsg.ChattingUI", "onVoiceRemind " + paramString + " time " + paramLong);
    if (w.cR(be.nQ().oL()))
      h.a(this.gPG.aal(), false, paramString, this.gPG.getString(2131167081), this.gPG.getString(2131167079), this.gPG.getString(2131167080), new ik(this, paramLong), new im(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ij
 * JD-Core Version:    0.6.2
 */