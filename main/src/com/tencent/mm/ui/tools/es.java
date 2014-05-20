package com.tencent.mm.ui.tools;

import android.support.v4.app.FragmentActivity;
import com.tencent.mm.sdk.platformtools.aa;

final class es
  implements Runnable
{
  es(er paramer)
  {
  }

  public final void run()
  {
    if ((this.hlZ.hlY == null) || (this.hlZ.hlY.isFinishing()))
    {
      aa.w(eo.b(this.hlZ.hlX), "want to expand search view, but activity status error");
      return;
    }
    this.hlZ.hlY.u();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.es
 * JD-Core Version:    0.6.2
 */