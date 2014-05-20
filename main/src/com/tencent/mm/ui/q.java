package com.tencent.mm.ui;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.mm.sdk.platformtools.aa;

final class q extends Handler
{
  private boolean gkZ;
  public final int gla = 0x1 | hashCode();
  public final int glb = 0x2 | hashCode();

  public q(o paramo, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void aEm()
  {
    sendEmptyMessage(this.gla);
  }

  public final void b(m paramm)
  {
    Message localMessage = Message.obtain();
    localMessage.obj = paramm;
    localMessage.what = this.glb;
    sendMessage(localMessage);
  }

  public final void clear()
  {
    this.gkZ = true;
    removeMessages(this.gla);
    removeMessages(this.glb);
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if (this.gkZ);
    do
    {
      return;
      synchronized (this.gkY)
      {
        o.b(this.gkY, o.d(this.gkY));
        String str = this.gkY.gkP.TAG;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(o.e(this.gkY));
        aa.d(str, "newcursor updateWorkerRefresh status %d", arrayOfObject);
        if (paramMessage.what == this.gla)
        {
          h.d(this.gkY.gkP);
          return;
        }
      }
    }
    while (paramMessage.what != this.glb);
    h.a(this.gkY.gkP, (m)paramMessage.obj, false, true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.q
 * JD-Core Version:    0.6.2
 */