package com.tencent.mm.ui.chatting;

import android.os.Handler;
import android.os.Message;

final class fz extends Handler
{
  fz(ChattingUI paramChattingUI)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (this.gPG.isFinishing());
    while (!ChattingUI.b(this.gPG))
      return;
    ChattingUI.c(this.gPG);
    this.gPG.aJI();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.fz
 * JD-Core Version:    0.6.2
 */