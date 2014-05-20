package com.tencent.mm.pluginsdk.ui;

import android.os.Handler;
import android.os.Message;

final class m extends Handler
{
  m(EmojiView paramEmojiView)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 1001:
    }
    if (!EmojiView.pn())
      EmojiView.a(this.fkQ);
    this.fkQ.invalidate();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.m
 * JD-Core Version:    0.6.2
 */