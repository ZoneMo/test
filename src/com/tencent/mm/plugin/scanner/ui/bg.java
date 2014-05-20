package com.tencent.mm.plugin.scanner.ui;

import android.app.Activity;
import android.app.ProgressDialog;
import com.tencent.mm.model.ct;
import com.tencent.mm.n;
import com.tencent.mm.plugin.c.a.b;
import com.tencent.mm.plugin.scanner.b.a;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.h;

final class bg
  implements b
{
  bg(at paramat, Activity paramActivity)
  {
  }

  public final int mf(String paramString)
  {
    if (at.f(this.eey) != null)
      at.f(this.eey).aaG();
    if ((this.eey.cIr == null) || (!this.eey.cIr.isShowing()))
    {
      at.d(this.eey);
      at.e(this.eey);
      return 0;
    }
    this.eey.cIr.dismiss();
    if (cj.hX(paramString))
    {
      h.a(this.cWD, n.buh, n.ber, new bh(this));
      return 0;
    }
    at.e(this.eey);
    ct localct = ct.vB();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(1);
    localct.a(10237, arrayOfObject);
    at.a(this.eey, this.cWD, paramString);
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.bg
 * JD-Core Version:    0.6.2
 */