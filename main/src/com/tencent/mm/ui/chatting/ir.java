package com.tencent.mm.ui.chatting;

import com.tencent.mm.c.a.hb;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;

final class ir
  implements Runnable
{
  ir(ChattingUI paramChattingUI)
  {
  }

  public final void run()
  {
    hb localhb = new hb();
    localhb.bQX.bQZ = true;
    a.ayH().f(localhb);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ir
 * JD-Core Version:    0.6.2
 */