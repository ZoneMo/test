package com.tencent.mm.ui.chatting;

import android.widget.ListView;
import com.tencent.mm.ui.base.MMPullDownView;
import com.tencent.mm.ui.base.cn;

final class hq
  implements cn
{
  hq(ChattingUI paramChattingUI)
  {
  }

  public final void VZ()
  {
    if ((ChattingUI.s(this.gPG)) || (ChattingUI.t(this.gPG)) || (ChattingUI.x(this.gPG)))
      this.gPG.gMi.aJi();
    if (this.gPG.gMi.aJl())
    {
      ChattingUI.j(this.gPG).setSelectionFromTop(1, ChattingUI.r(this.gPG).aHj());
      ChattingUI.r(this.gPG).ds(true);
    }
    int i;
    int j;
    do
    {
      return;
      i = this.gPG.gMi.getCount();
      this.gPG.gMi.VV();
      this.gPG.gMi.ei(null);
      j = this.gPG.gMi.getCount();
    }
    while (j <= i);
    int k = j - i;
    this.gPG.gMi.nz(k);
    ChattingUI.j(this.gPG).setSelectionFromTop(k + 1, ChattingUI.y(this.gPG) + ChattingUI.r(this.gPG).aHj());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.hq
 * JD-Core Version:    0.6.2
 */