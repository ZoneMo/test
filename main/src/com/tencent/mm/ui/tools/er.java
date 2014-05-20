package com.tencent.mm.ui.tools;

import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.af;
import com.tencent.mm.sdk.platformtools.aa;

final class er
  implements af
{
  er(eo parameo, FragmentActivity paramFragmentActivity)
  {
  }

  public final boolean ad()
  {
    aa.d(eo.b(this.hlX), "onMenuItemActionExpand, searchViewExpand " + eo.a(this.hlX));
    if (!eo.a(this.hlX))
    {
      eo.a(this.hlX, true);
      eo.d(this.hlX).post(new es(this));
      if (eo.c(this.hlX) != null)
        eo.c(this.hlX).FV();
    }
    return true;
  }

  public final boolean ae()
  {
    aa.d(eo.b(this.hlX), "onMenuItemActionCollapse, searchViewExpand " + eo.a(this.hlX));
    if (eo.a(this.hlX))
    {
      eo.a(this.hlX, false);
      this.hlX.auV();
      if (this.hlX.hgH != null)
        this.hlX.hgH.em(false);
      eo.d(this.hlX).post(new et(this));
      if (eo.c(this.hlX) != null)
        eo.d(this.hlX).post(new eu(this));
    }
    eo.d(this.hlX).post(new ev(this));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.er
 * JD-Core Version:    0.6.2
 */