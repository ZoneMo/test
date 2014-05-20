package com.tencent.mm.ui.tools.jsapi;

import com.tencent.mm.pluginsdk.m;
import com.tencent.mm.pluginsdk.n;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.HashMap;
import java.util.Map;

final class x
  implements n
{
  x(p paramp)
  {
  }

  public final void a(double paramDouble1, double paramDouble2, int paramInt, double paramDouble3, double paramDouble4)
  {
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = Double.valueOf(paramDouble1);
    arrayOfObject[1] = Double.valueOf(paramDouble2);
    arrayOfObject[2] = Integer.valueOf(paramInt);
    arrayOfObject[3] = Double.valueOf(paramDouble3);
    arrayOfObject[4] = Double.valueOf(paramDouble4);
    aa.f("MicroMsg.MsgHandler", "doGeoLocation.onGetLocation, fLongitude:%f, fLatitude:%f, locType:%d, speed:%f, accuracy:%f", arrayOfObject);
    if (p.i(this.hpx) != null)
      p.i(this.hpx).b(p.j(this.hpx));
    if (p.j(this.hpx) == null)
    {
      aa.w("MicroMsg.MsgHandler", "already callback");
      return;
    }
    p.k(this.hpx);
    HashMap localHashMap = new HashMap();
    localHashMap.put("longitude", Double.valueOf(paramDouble1));
    localHashMap.put("latitude", Double.valueOf(paramDouble2));
    localHashMap.put("speed", Double.valueOf(paramDouble3));
    localHashMap.put("accuracy", Double.valueOf(paramDouble4));
    p.a(this.hpx, p.b(this.hpx), "geo_location:ok", localHashMap);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.x
 * JD-Core Version:    0.6.2
 */