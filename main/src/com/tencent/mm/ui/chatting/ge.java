package com.tencent.mm.ui.chatting;

import com.tencent.mm.model.r;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.e.al;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.Map;

final class ge
  implements al
{
  ge(ChattingUI paramChattingUI)
  {
  }

  public final void ca(String paramString)
  {
    aa.v("MicroMsg.ChattingUI", "roommember watcher notify " + paramString);
    if (this.gPG.gOY)
      r.b(this.gPG.aJe(), this.gPG.gOZ);
    while (true)
    {
      if (!au.hX(paramString))
      {
        this.gPG.aJI();
        this.gPG.aJz();
        this.gPG.aJW();
      }
      this.gPG.gMi.ei(null);
      return;
      this.gPG.gOZ.clear();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ge
 * JD-Core Version:    0.6.2
 */