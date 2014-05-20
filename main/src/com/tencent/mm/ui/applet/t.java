package com.tencent.mm.ui.applet;

import android.os.Handler;
import android.os.Message;
import android.widget.TextView;

final class t extends Handler
{
  t(p paramp)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (p.h(this.gxE).getVisibility() != 0)
    {
      p.i(this.gxE);
      return;
    }
    p.j(this.gxE);
    p.k(this.gxE);
    super.handleMessage(paramMessage);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.applet.t
 * JD-Core Version:    0.6.2
 */