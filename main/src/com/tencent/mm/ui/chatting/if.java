package com.tencent.mm.ui.chatting;

import android.widget.ListView;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;

final class if
  implements Runnable
{
  if(ChattingUI paramChattingUI, boolean paramBoolean)
  {
  }

  public final void run()
  {
    int i = ChattingUI.j(this.gPG).getLastVisiblePosition();
    int j = -1 + ChattingUI.j(this.gPG).getCount();
    aa.v("MicroMsg.ChattingUI", "last visible/adapter=" + i + "/" + j + " " + this.gMt);
    if ((i >= j - 1) || (this.gMt))
    {
      int k = this.gPG.gMi.getCount();
      if ((k <= 1) || (!((ak)this.gPG.gMi.getItem(k - 2)).isSystem()))
        break label137;
      int m = j - 1;
      ChattingUI.j(this.gPG).setSelectionFromTop(m, 0);
    }
    label137: 
    do
    {
      return;
      ChattingUI.j(this.gPG).setSelection(j);
    }
    while (this.gPY == null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.if
 * JD-Core Version:    0.6.2
 */