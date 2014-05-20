package com.tencent.mm.ui.conversation;

import android.os.Handler;
import android.os.Message;

final class bo extends Handler
{
  bo(MainUI paramMainUI)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (MainUI.b(this.gZI) != null)
    {
      MainUI.b(this.gZI).clearCache();
      MainUI.b(this.gZI).notifyDataSetChanged();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.bo
 * JD-Core Version:    0.6.2
 */