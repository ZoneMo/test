package com.tencent.mm.ui.chatting;

import android.os.Handler;
import android.os.Message;
import android.view.View;

final class fh extends Handler
{
  fh(fg paramfg)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    View localView = (View)paramMessage.obj;
    if (fg.a(this.gOn) != localView.getScrollY())
    {
      fg.a(this.gOn, true);
      fg.b(this.gOn).sendMessageDelayed(fg.b(this.gOn).obtainMessage(0, localView), 5L);
      fg.a(this.gOn, localView.getScrollY());
      return;
    }
    fg.a(this.gOn, false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.fh
 * JD-Core Version:    0.6.2
 */