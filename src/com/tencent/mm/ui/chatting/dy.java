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

final class dy
  implements m
{
  dy(dw paramdw, ak paramak, String paramString, int paramInt)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.d("MicroMsg.ChattingItemVoiceRemindConfirm", "errType " + paramInt1 + " errCode " + paramInt2 + "  scene " + paramx.getType());
    if ((!((f)be.uh().dN(f.class.getName())).bl(this.gNb.Bo())) && (paramInt1 == 0) && (paramInt2 == 0) && (((ab)paramx).oJ().equals(this.cpj)))
    {
      ak localak = ak.u(this.gNb);
      localak.uN(this.gNb.aCo());
      localak.bT(-1L);
      dw.a(this.gNd).gMi.gMj.d(this.gNc, localak);
    }
    be.uA().b(221, dw.b(this.gNd));
    dw.a(this.gNd, null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.dy
 * JD-Core Version:    0.6.2
 */