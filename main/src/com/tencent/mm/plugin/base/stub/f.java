package com.tencent.mm.plugin.base.stub;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;
import com.tencent.mm.ui.base.h;

final class f
  implements az
{
  f(e parame)
  {
  }

  public final boolean ok()
  {
    if (e.a(this.cOh).isFinishing())
    {
      aa.w("MicroMsg.OAuthSession", "onTimerExpired, context is finishing");
      return false;
    }
    e locale = this.cOh;
    OAuthUI localOAuthUI = e.a(this.cOh);
    e.a(this.cOh).getString(2131167675);
    e.a(locale, h.a(localOAuthUI, e.a(this.cOh).getString(2131167726), true, new g(this)));
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.f
 * JD-Core Version:    0.6.2
 */