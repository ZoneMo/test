package com.tencent.mm.ui.conversation;

import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;

final class u
  implements Runnable
{
  u(s params)
  {
  }

  public final void run()
  {
    if (!be.se())
    {
      s.f(this.gYn).azn();
      aa.e("MicroMsg.ConversationAdapter", "dkpno handleDataChange acc has not ready");
      return;
    }
    long l1 = au.FD();
    s.g(this.gYn);
    long l2 = 3L * au.N(l1);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Long.valueOf(l2);
    arrayOfObject[1] = Long.valueOf(s.aLp());
    arrayOfObject[2] = Boolean.valueOf(s.d(this.gYn));
    aa.d("MicroMsg.ConversationAdapter", "dkpno handleDataChange guest:%d old:%d needNotify:%b", arrayOfObject);
    s.ci((l2 + s.aLp()) / 2L);
    s.h(this.gYn);
    s.f(this.gYn).bO(s.aLp());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.u
 * JD-Core Version:    0.6.2
 */