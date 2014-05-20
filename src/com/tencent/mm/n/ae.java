package com.tencent.mm.n;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class ae extends Handler
{
  ae(ac paramac, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    this.cmu.d((x)paramMessage.obj);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.ae
 * JD-Core Version:    0.6.2
 */