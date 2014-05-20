package com.tencent.mm.app;

import android.content.res.Resources;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.pluginsdk.ui.applet.r;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.z.f;

final class af
  implements r
{
  af(ad paramad, WXMediaMessage paramWXMediaMessage, String paramString1, String paramString2, String paramString3, MMActivity paramMMActivity)
  {
  }

  public final void a(boolean paramBoolean, String paramString, int paramInt)
  {
    if (!paramBoolean)
      return;
    s.a(this.bLA, this.bLB, this.bLC, this.bLD, 3, null);
    if (!cj.hX(paramString))
    {
      f localf = new f(this.bLD, paramString, w.dd(this.bLD));
      be.uA().d(localf);
    }
    h.an(this.bLy, this.bLy.getResources().getString(2131167783));
    m.dZN.j(10910, "2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.af
 * JD-Core Version:    0.6.2
 */