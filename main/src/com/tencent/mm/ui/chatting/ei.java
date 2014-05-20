package com.tencent.mm.ui.chatting;

import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.voicereminder.a.f;
import com.tencent.mm.pluginsdk.model.app.ab;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;

final class ei
  implements m
{
  ei(eh parameh, ak paramak, String paramString, int paramInt)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.d("MicroMsg.ChattingItemVoiceRemindsys", "errType " + paramInt1 + " errCode " + paramInt2 + "  scene " + paramx.getType());
    if ((!((f)be.uh().dN(f.class.getName())).bl(this.gNk.Bo())) && (paramInt1 == 0) && (paramInt2 == 0) && (((ab)paramx).oJ().equals(this.cpj)))
      eh.a(this.gNm).gMi.gMj.c(this.gNl, this.gNk);
    be.uA().b(221, eh.b(this.gNm));
    eh.c(this.gNm);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ei
 * JD-Core Version:    0.6.2
 */