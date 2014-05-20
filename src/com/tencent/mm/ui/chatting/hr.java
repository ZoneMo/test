package com.tencent.mm.ui.chatting;

import android.widget.LinearLayout;
import android.widget.ListView;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.MMPullDownView;
import com.tencent.mm.ui.base.cl;

final class hr
  implements cl
{
  hr(ChattingUI paramChattingUI)
  {
  }

  public final void Mf()
  {
    aa.d("MicroMsg.ChattingUI", "buttom load data");
    if ((ChattingUI.s(this.gPG)) || (ChattingUI.t(this.gPG)) || (ChattingUI.x(this.gPG)))
      this.gPG.gMi.aJj();
    if (this.gPG.gMi.aJm())
    {
      ChattingUI.j(this.gPG).setSelection(-1 + this.gPG.gMi.getCount());
      ChattingUI.r(this.gPG).dt(true);
    }
    int i;
    do
    {
      return;
      i = this.gPG.gMi.getCount();
      this.gPG.gMi.ei(null);
    }
    while (this.gPG.gMi.getCount() <= i);
    aa.i("MicroMsg.ChattingUI", "pullDownView height: " + ChattingUI.r(this.gPG).getHeight() + ", chatHistoryList height: " + ChattingUI.j(this.gPG).getHeight() + " header height: " + this.gPG.gOQ.getHeight() + " topHeight: " + ChattingUI.r(this.gPG).aHj());
    ChattingUI.j(this.gPG).setSelectionFromTop(i + 1, ChattingUI.j(this.gPG).getHeight() - ChattingUI.y(this.gPG) - ChattingUI.r(this.gPG).aHj());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.hr
 * JD-Core Version:    0.6.2
 */