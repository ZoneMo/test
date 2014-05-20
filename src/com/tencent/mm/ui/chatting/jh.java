package com.tencent.mm.ui.chatting;

import com.tencent.mm.c.a.gy;
import com.tencent.mm.pluginsdk.ap;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.ei;
import java.util.LinkedList;
import java.util.List;

final class jh
  implements ei
{
  jh(ChattingUI paramChattingUI)
  {
  }

  public final void aHS()
  {
    LinkedList localLinkedList = h.apu().kl(ChattingUI.l(this.gPG).getUsername());
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(localLinkedList.size());
    aa.d("MicroMsg.ChattingUI", "Click banner : %d", arrayOfObject);
    if (h.apu().kn(ChattingUI.l(this.gPG).getUsername()))
    {
      ChattingUI.J(this.gPG);
      return;
    }
    this.gPG.dO(true);
  }

  public final void aHT()
  {
    gy localgy = new gy();
    localgy.bQS.bQV = true;
    a.ayH().f(localgy);
    ChattingUI.b(this.gPG, ChattingUI.l(this.gPG).getUsername());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.jh
 * JD-Core Version:    0.6.2
 */