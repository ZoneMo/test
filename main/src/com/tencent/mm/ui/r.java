package com.tencent.mm.ui;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.LinkedList;

final class r extends Handler
{
  long glc;
  private final int gld = 0x776 | hashCode();
  private final int gle = 0x77A | hashCode();
  long lastUpdateTime;

  public r(o paramo, Looper paramLooper)
  {
    super(paramLooper);
    o.a(paramo, new LinkedList());
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if (paramMessage.what == this.gle)
    {
      removeMessages(this.gld);
      l = System.currentTimeMillis();
      if ((l - this.glc > this.gkY.gkP.gkH) || (l - this.glc < 0L) || ((this.lastUpdateTime != 0L) && (l - this.lastUpdateTime > this.gkY.gkP.gkI)) || (l - this.lastUpdateTime < 0L))
      {
        o.c(this.gkY);
        this.glc = l;
      }
    }
    while (paramMessage.what != this.gld)
      while (true)
      {
        long l;
        return;
        sendEmptyMessageDelayed(this.gld, this.gkY.gkP.gkH);
      }
    o.c(this.gkY);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.r
 * JD-Core Version:    0.6.2
 */