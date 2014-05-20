package com.tencent.mm.ui.chatting;

import android.widget.ListView;
import com.tencent.mm.sdk.platformtools.aa;

final class ho
  implements Runnable
{
  ho(hn paramhn, int paramInt1, int paramInt2)
  {
  }

  public final void run()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.dmE);
    arrayOfObject[1] = Integer.valueOf(this.gPL);
    aa.f("MicroMsg.ChattingUI", "on search click, click position %d, set selection %d", arrayOfObject);
    ChattingUI.j(this.gPT.gPG).setSelection(this.gPL);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ho
 * JD-Core Version:    0.6.2
 */