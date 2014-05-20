package com.tencent.mm.ui.tools.jsapi;

import android.content.Context;
import android.content.res.Resources;
import com.tencent.mm.n;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.ui.applet.r;
import com.tencent.mm.ui.base.h;

final class z
  implements r
{
  z(p paramp, k paramk, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
  }

  public final void a(boolean paramBoolean, String paramString, int paramInt)
  {
    if (paramBoolean)
    {
      p.a(this.hpx, this.hpC, this.bLB, this.bLD, this.hpD, this.hpE, this.hpF, paramString, this.hpG);
      h.an(p.a(this.hpx), p.a(this.hpx).getResources().getString(n.beq));
      p.a(this.hpx, p.b(this.hpx), "send_app_msg:ok", null);
      return;
    }
    p.a(this.hpx, p.b(this.hpx), "send_app_msg:cancel", null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.z
 * JD-Core Version:    0.6.2
 */