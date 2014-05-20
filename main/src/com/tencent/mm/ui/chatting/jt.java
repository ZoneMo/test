package com.tencent.mm.ui.chatting;

import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.model.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.c;
import java.util.ArrayList;
import java.util.List;

final class jt
  implements Runnable
{
  jt(ChattingUI paramChattingUI)
  {
  }

  public final void run()
  {
    Object localObject = ChattingUI.L(this.gPG);
    if (!be.se())
      aa.w("MicroMsg.UnreadCountHelper", "getMainTabUnreadCount, but mmcore not ready");
    for (int i = 0; ; i = x.a(w.chM, (List)localObject))
    {
      ChattingUI.M(this.gPG).ml(i);
      return;
      if ((0x8000 & v.tl()) == 0)
      {
        if (localObject == null)
          localObject = new ArrayList();
        ((List)localObject).add("floatbottle");
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.jt
 * JD-Core Version:    0.6.2
 */