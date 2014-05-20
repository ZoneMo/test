package com.tencent.mm.ui;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class du extends Handler
{
  du(RoomInfoUI paramRoomInfoUI, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    RoomInfoUI.a(this.gpa);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.du
 * JD-Core Version:    0.6.2
 */