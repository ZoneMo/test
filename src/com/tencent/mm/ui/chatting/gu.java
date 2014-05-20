package com.tencent.mm.ui.chatting;

import android.widget.ListView;
import com.tencent.mm.sdk.platformtools.aa;

final class gu
  implements Runnable
{
  gu(ChattingUI paramChattingUI, long paramLong, int paramInt)
  {
  }

  public final void run()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Long.valueOf(this.gPK);
    arrayOfObject[1] = Integer.valueOf(this.gPL);
    aa.f("MicroMsg.ChattingUI", "on set position %d, set selection %d", arrayOfObject);
    ChattingUI.j(this.gPG).setSelection(this.gPL);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.gu
 * JD-Core Version:    0.6.2
 */