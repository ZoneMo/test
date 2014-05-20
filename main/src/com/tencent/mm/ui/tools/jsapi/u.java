package com.tencent.mm.ui.tools.jsapi;

import com.tencent.mm.sdk.platformtools.aa;

final class u
  implements h
{
  u(p paramp, String paramString, ao paramao)
  {
  }

  public final void a(i parami)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(parami.Hr());
    aa.e("MicroMsg.MsgHandler", "doGetLatestAddress, onJSOAuthEnd, retCode = %d", arrayOfObject);
    switch (ag.hpJ[parami.ordinal()])
    {
    default:
      p.a(this.hpx, this.hpy, "get_recently_used_address:fail", null);
      return;
    case 1:
    }
    p.a(this.hpx, "get_recently_used_address:", this.hpA);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.u
 * JD-Core Version:    0.6.2
 */