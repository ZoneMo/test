package com.tencent.mm.ui.chatting;

import com.tencent.mm.c.a.hh;
import com.tencent.mm.c.a.hi;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.h;

final class ga extends g
{
  ga(ChattingUI paramChattingUI)
  {
  }

  public final boolean a(e parame)
  {
    if (((parame instanceof hh)) && (!ChattingUI.l(this.gPG).getUsername().equals(((hh)parame).bRe.bPx)));
    while (!ChattingUI.l(this.gPG).getUsername().toLowerCase().endsWith("@chatroom"))
      return false;
    h.p(this.gPG, this.gPG.getString(2131168041), null);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ga
 * JD-Core Version:    0.6.2
 */