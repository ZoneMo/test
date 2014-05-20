package com.tencent.mm.pluginsdk.ui.chat;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class bg extends Handler
{
  bg(bd parambd, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    this.frj.show();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.bg
 * JD-Core Version:    0.6.2
 */