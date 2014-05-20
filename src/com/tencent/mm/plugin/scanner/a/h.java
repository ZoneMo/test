package com.tencent.mm.plugin.scanner.a;

import com.tencent.mm.c.a.dz;
import com.tencent.mm.c.a.ea;
import com.tencent.mm.plugin.scanner.b;
import com.tencent.mm.plugin.scanner.b.n;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.platformtools.aa;

public final class h extends com.tencent.mm.sdk.b.g
{
  public final boolean a(e parame)
  {
    dz localdz = (dz)parame;
    switch (localdz.bOR.bNK)
    {
    default:
      return false;
    case 0:
    }
    n localn = g.O(localdz.bOR.bOT, 0);
    if (localn == null)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localdz.bOR.bOT;
      aa.c("MicroMsg.ProductOperationListener", "error, xml[%s] can not parse", arrayOfObject);
      localdz.bOS.bMh = false;
      return false;
    }
    localdz.bOS.bOU = g.a(localdz.bOR.context, localn);
    localdz.bOS.bOV = b.ZA().ai(localn.field_thumburl, "@S");
    localdz.bOS.bMh = true;
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.a.h
 * JD-Core Version:    0.6.2
 */