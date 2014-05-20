package com.tencent.mm.ui.chatting;

final class gz
  implements Runnable
{
  gz(ChattingUI paramChattingUI)
  {
  }

  public final void run()
  {
    if (this.gPG.gMi != null)
      this.gPG.gMi.notifyDataSetChanged();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.gz
 * JD-Core Version:    0.6.2
 */