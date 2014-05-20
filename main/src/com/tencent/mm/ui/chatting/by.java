package com.tencent.mm.ui.chatting;

import android.widget.ListView;
import com.tencent.mm.model.ah;
import com.tencent.mm.model.al;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.ui.chat.ChatFooter;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;

final class by
  implements Runnable
{
  by(bv parambv)
  {
  }

  public final void run()
  {
    if (bv.g(this.gMs))
    {
      aa.i("MicroMsg.ChattingFooterEventImpl", "jacks already stop before begin!!");
      return;
    }
    bv.h(this.gMs);
    bv.b(this.gMs).bO(100L);
    bv.c(this.gMs).bO(200L);
    bv.d(this.gMs).kA(bv.i(this.gMs).getHeight());
    bv.e(this.gMs).aIK();
    bv.j(this.gMs);
    this.gMs.aJc();
    bv.f(this.gMs).nE(3);
    be.nS().pause();
    be.nT().of();
    bv.f(this.gMs).dL(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.by
 * JD-Core Version:    0.6.2
 */