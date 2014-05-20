package com.tencent.mm.plugin.scanner.ui;

import android.app.Activity;
import com.tencent.mm.n;
import com.tencent.mm.ui.base.h;

final class be
  implements Runnable
{
  be(at paramat, Activity paramActivity)
  {
  }

  public final void run()
  {
    at localat = this.eey;
    Activity localActivity = this.cWD;
    this.cWD.getString(n.ber);
    localat.cIr = h.a(localActivity, this.cWD.getString(n.bui), true, new bf(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.be
 * JD-Core Version:    0.6.2
 */