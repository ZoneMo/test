package com.tencent.mm.ui.chatting;

import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.pluginsdk.model.app.a;
import com.tencent.mm.pluginsdk.model.app.ab;
import com.tencent.mm.sdk.platformtools.aa;

final class dz
  implements m
{
  dz(dw paramdw, a parama)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.d("MicroMsg.ChattingItemVoiceRemindConfirm", "errType " + paramInt1 + " errCode " + paramInt2 + "  scene " + paramx.getType());
    if (((ab)paramx).oJ().equals(this.gNe.field_mediaSvrId))
    {
      be.uA().b(221, dw.b(this.gNd));
      dw.a(this.gNd, null);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.dz
 * JD-Core Version:    0.6.2
 */