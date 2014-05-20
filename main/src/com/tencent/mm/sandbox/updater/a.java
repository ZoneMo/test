package com.tencent.mm.sandbox.updater;

import com.tencent.mm.n;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.x;

final class a
  implements Runnable
{
  a(AppUpdaterUI paramAppUpdaterUI)
  {
  }

  public final void run()
  {
    h.a(this.gbe, AppUpdaterUI.a(this.gbe), this.gbe.getString(n.ber), new b(this)).setOnCancelListener(new c(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.a
 * JD-Core Version:    0.6.2
 */