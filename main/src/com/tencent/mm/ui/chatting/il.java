package com.tencent.mm.ui.chatting;

import android.widget.ListView;
import com.tencent.mm.sdk.platformtools.aa;

final class il
  implements Runnable
{
  il(ik paramik, int paramInt)
  {
  }

  public final void run()
  {
    ChattingUI.j(this.gQc.gQb.gPG).setSelection(this.dmE);
    aa.d("MicroMsg.ChattingUI", "position " + this.dmE);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.il
 * JD-Core Version:    0.6.2
 */