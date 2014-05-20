package com.tencent.mm.ui.chatting;

import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.w.e;
import com.tencent.mm.w.y;

final class iq
  implements Runnable
{
  iq(ChattingUI paramChattingUI, e parame, int paramInt)
  {
  }

  public final void run()
  {
    if (ChattingUI.D(this.gPG))
      return;
    y localy = new y((int)this.gQg.AG(), this.gQh, (byte)0);
    be.uA().d(localy);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.iq
 * JD-Core Version:    0.6.2
 */