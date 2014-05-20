package com.tencent.mm.ui.tools.jsapi;

import com.tencent.mm.pluginsdk.ui.applet.r;
import com.tencent.mm.sdk.platformtools.aa;

final class an
  implements r
{
  an(p paramp)
  {
  }

  public final void a(boolean paramBoolean, String paramString, int paramInt)
  {
    aa.e("MicroMsg.MsgHandler", "doAddContact fail, contact not biz");
    p.a(this.hpx, p.b(this.hpx), "add_contact:fail", null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.an
 * JD-Core Version:    0.6.2
 */