package com.tencent.mm.plugin.scanner.ui;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class as extends Handler
{
  as(ar paramar)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (ar.a(this.eeq) >= ar.b(this.eeq))
    {
      if (this.eeq.eek != null)
        be.uA().c(this.eeq.eek);
      ar.c(this.eeq);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.as
 * JD-Core Version:    0.6.2
 */