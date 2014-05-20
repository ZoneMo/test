package com.tencent.mm.ui.chatting;

import android.widget.ListView;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.ui.base.MMPullDownView;
import com.tencent.mm.ui.bd;

final class gw
  implements bd
{
  private int count = 0;

  gw(ChattingUI paramChattingUI)
  {
  }

  public final void FW()
  {
    ChattingUI.j(this.gPG).post(new gx(this));
    ChattingUI.r(this.gPG).ds(this.gPG.gMi.aJl());
    ChattingUI.r(this.gPG).dt(this.gPG.gMi.aJm());
    if ((this.gPG.gMi.PG() - this.count > 0) && (!ChattingUI.s(this.gPG)))
      this.gPG.dM(false);
    if ((ChattingUI.t(this.gPG)) && (!ChattingUI.u(this.gPG).aJu()) && (this.gPG.gMi.aJk()))
      this.gPG.dM(false);
    if (this.gPG.aJO())
      this.gPG.aJK();
  }

  public final void FX()
  {
    m.dZN.hx(13);
    this.count = this.gPG.gMi.PG();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.gw
 * JD-Core Version:    0.6.2
 */