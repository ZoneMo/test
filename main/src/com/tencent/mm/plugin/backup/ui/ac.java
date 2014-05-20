package com.tencent.mm.plugin.backup.ui;

import com.tencent.mm.ui.base.ct;

final class ac
  implements Runnable
{
  ac(ab paramab)
  {
  }

  public final void run()
  {
    this.cMR.cMO.notifyDataSetChanged();
    if (x.h(this.cMR.cMO) != null)
      x.h(this.cMR.cMO).dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.ac
 * JD-Core Version:    0.6.2
 */