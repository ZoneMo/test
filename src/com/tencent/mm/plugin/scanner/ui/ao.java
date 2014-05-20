package com.tencent.mm.plugin.scanner.ui;

import android.view.View;
import android.widget.TextView;
import com.tencent.mm.n;

final class ao
  implements Runnable
{
  ao(an paraman)
  {
  }

  public final void run()
  {
    if (System.currentTimeMillis() - an.a(this.eei) > 30000L)
    {
      this.eei.edK.bd(true);
      this.eei.djQ.setVisibility(8);
      an.b(this.eei).setText(n.bxk);
      an.b(this.eei).setVisibility(0);
      if (an.c(this.eei) == null)
        an.a(this.eei, new ap(this));
      an.d(this.eei).setOnTouchListener(an.c(this.eei));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.ao
 * JD-Core Version:    0.6.2
 */