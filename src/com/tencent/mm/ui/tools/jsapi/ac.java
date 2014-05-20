package com.tencent.mm.ui.tools.jsapi;

import android.app.ProgressDialog;
import android.content.Context;
import com.tencent.mm.n;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.w.d;

final class ac
  implements d
{
  ac(p paramp, ProgressDialog paramProgressDialog, k paramk, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
  }

  public final void AC()
  {
    if (this.hpH != null)
      this.hpH.dismiss();
    p.a(this.hpx, this.hpC, this.bLB, this.bLD, this.hpD, this.hpE, this.hpF, null, this.hpG);
    h.an(p.a(this.hpx), p.a(this.hpx).getString(n.bej));
    p.a(this.hpx, p.b(this.hpx), "send_app_msg:ok", null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.ac
 * JD-Core Version:    0.6.2
 */