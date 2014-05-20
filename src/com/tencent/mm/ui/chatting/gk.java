package com.tencent.mm.ui.chatting;

import android.os.Handler;
import android.widget.RelativeLayout;

final class gk
  implements jv
{
  gk(ChattingUI paramChattingUI)
  {
  }

  public final boolean aKd()
  {
    ChattingUI.d(this.gPG);
    ChattingUI.e(this.gPG);
    ChattingUI.f(this.gPG);
    if (ChattingUI.g(this.gPG) == null)
    {
      ChattingUI.h(this.gPG);
      ChattingUI.a(this.gPG, (RelativeLayout)this.gPG.findViewById(2131362349));
    }
    ChattingUI.g(this.gPG).setVisibility(0);
    ChattingUI.i(this.gPG).postDelayed(new gl(this), 5000L);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.gk
 * JD-Core Version:    0.6.2
 */