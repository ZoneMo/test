package com.tencent.mm.ui.chatting;

import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.chatroom.a.f;
import com.tencent.mm.storage.c;
import com.tencent.mm.storage.i;

final class gh
  implements Runnable
{
  gh(ChattingUI paramChattingUI)
  {
  }

  public final void run()
  {
    com.tencent.mm.storage.b localb = be.uz().sA().ts(ChattingUI.l(this.gPG).getUsername());
    if ((localb != null) && (localb.aAh()))
    {
      f localf = new f(ChattingUI.l(this.gPG).getUsername(), localb.aAg());
      be.uA().d(localf);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.gh
 * JD-Core Version:    0.6.2
 */