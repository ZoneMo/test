package com.tencent.mm.plugin.scanner.ui;

import android.os.Handler;
import android.os.Message;
import android.widget.TextView;

final class aj extends Handler
{
  aj(ai paramai)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if ((paramMessage != null) && (paramMessage.what == 1) && (this.edO.djQ != null))
      this.edO.djQ.setVisibility(0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.aj
 * JD-Core Version:    0.6.2
 */