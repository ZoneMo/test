package com.tencent.mm.ui.chatting;

final class jg
  implements Runnable
{
  jg(ChattingUI paramChattingUI)
  {
  }

  public final void run()
  {
    if (this.gPG.gMi != null)
      this.gPG.gMi.notifyDataSetChanged();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.jg
 * JD-Core Version:    0.6.2
 */