package com.tencent.mm.plugin.backup.ui;

import android.content.Context;
import com.tencent.mm.ui.base.h;

final class z
  implements Runnable
{
  z(x paramx)
  {
  }

  public final void run()
  {
    if (x.d(this.cMO))
      return;
    x localx = this.cMO;
    Context localContext = x.c(this.cMO);
    x.c(this.cMO).getString(2131167675);
    x.a(localx, h.a(localContext, x.c(this.cMO).getString(2131167727), false, new aa(this)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.z
 * JD-Core Version:    0.6.2
 */