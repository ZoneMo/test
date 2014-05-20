package com.tencent.mm.ui.tools;

import android.support.v4.view.z;
import com.tencent.mm.sdk.platformtools.aa;

final class ey
  implements Runnable
{
  ey(eo parameo)
  {
  }

  public final void run()
  {
    if (eo.e(this.hlX) == null)
    {
      aa.w(eo.b(this.hlX), "post do expand search menu, but search menu item is null");
      return;
    }
    z.f(eo.e(this.hlX));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ey
 * JD-Core Version:    0.6.2
 */