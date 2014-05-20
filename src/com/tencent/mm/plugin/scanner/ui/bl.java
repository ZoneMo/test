package com.tencent.mm.plugin.scanner.ui;

import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import com.tencent.mm.n;

final class bl extends Handler
{
  bl(bi parambi)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (bi.c(this.eeR) != null)
    {
      this.eeR.edK.bd(true);
      bi.c(this.eeR).setText(n.bxA);
      bi.c(this.eeR).setVisibility(0);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.bl
 * JD-Core Version:    0.6.2
 */