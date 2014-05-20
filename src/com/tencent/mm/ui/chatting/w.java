package com.tencent.mm.ui.chatting;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class w extends Handler
{
  w(v paramv, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    try
    {
      v.a(this.gKM).ag(true);
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.w
 * JD-Core Version:    0.6.2
 */