package com.tencent.mm.ui.tools.jsapi;

import com.tencent.mm.sdk.platformtools.aa;

final class w
  implements h
{
  w(p paramp, ao paramao)
  {
  }

  public final void a(i parami)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(parami.Hr());
    aa.e("MicroMsg.MsgHandler", "doGeoLocation, onJSOAuthEnd, retCode = %d", arrayOfObject);
    switch (ag.hpJ[parami.ordinal()])
    {
    default:
      p.a(this.hpx, this.hpy, "geo_location:fail", null);
      return;
    case 1:
    }
    p.h(this.hpx);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.w
 * JD-Core Version:    0.6.2
 */