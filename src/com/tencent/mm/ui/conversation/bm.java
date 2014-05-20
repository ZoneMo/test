package com.tencent.mm.ui.conversation;

import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.bv;
import com.tencent.mm.ui.chatting.lm;

final class bm
  implements d
{
  bm(MainUI paramMainUI)
  {
  }

  public final void bh(String paramString1, String paramString2)
  {
    com.tencent.mm.ac.b.BQ();
    be.uz().st().a(new bv(2, paramString1));
    aa.d("MicroMsg.MainUI", "jump to " + paramString2);
    lm.c(this.gZI.aal(), paramString2, true);
  }

  public final void xa(String paramString)
  {
    com.tencent.mm.ac.b.BQ();
    be.uz().st().a(new bv(3, paramString));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.bm
 * JD-Core Version:    0.6.2
 */