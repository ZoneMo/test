package com.tencent.mm.ui.applet;

import android.app.Activity;
import com.tencent.mm.sdk.platformtools.az;
import com.tencent.mm.ui.base.h;

final class y
  implements az
{
  y(x paramx)
  {
  }

  public final boolean ok()
  {
    if (!x.a(this.gxP).isFinishing())
    {
      x localx = this.gxP;
      Activity localActivity = x.a(this.gxP);
      x.a(this.gxP).getString(2131167675);
      x.a(localx, h.a(localActivity, x.a(this.gxP).getString(2131167726), true, new z(this)));
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.applet.y
 * JD-Core Version:    0.6.2
 */