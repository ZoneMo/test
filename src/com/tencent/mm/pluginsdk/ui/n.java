package com.tencent.mm.pluginsdk.ui;

final class n
  implements Runnable
{
  n(EmojiView paramEmojiView)
  {
  }

  public final void run()
  {
    if (!EmojiView.pn())
      EmojiView.a(this.fkQ);
    this.fkQ.invalidate();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.n
 * JD-Core Version:    0.6.2
 */