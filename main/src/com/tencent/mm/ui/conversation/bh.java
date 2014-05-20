package com.tencent.mm.ui.conversation;

import android.os.Looper;
import android.os.MessageQueue;
import android.os.MessageQueue.IdleHandler;
import com.tencent.mm.sdk.platformtools.aa;

final class bh
  implements MessageQueue.IdleHandler
{
  bh(MainUI paramMainUI)
  {
  }

  public final boolean queueIdle()
  {
    aa.d("MicroMsg.MainUI", "dkuploadAddrBook idleHandler");
    MainUI.aLH();
    Looper.myQueue().removeIdleHandler(MainUI.c(this.gZI));
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.bh
 * JD-Core Version:    0.6.2
 */