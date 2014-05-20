package com.tencent.mm.plugin.scanner;

import com.tencent.mm.c.a.h;
import com.tencent.mm.plugin.scanner.a.i;
import com.tencent.mm.plugin.scanner.b.m;
import com.tencent.mm.plugin.scanner.b.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;

final class e extends com.tencent.mm.sdk.b.g
{
  e(b paramb)
  {
  }

  public final boolean a(com.tencent.mm.sdk.b.e parame)
  {
    com.tencent.mm.c.a.g localg = (com.tencent.mm.c.a.g)parame;
    ak localak = localg.bLO.bLP;
    com.tencent.mm.j.b localb = localg.bLO.bLQ;
    if ((localak == null) || (localak.rO() != 0) || (localb == null))
      aa.e("MicroMsg.scanner.SubCoreScanner", "wrong params");
    while (335544369 != localak.getType())
      return false;
    if (cj.hX(localb.cgV))
    {
      aa.e("MicroMsg.scanner.SubCoreScanner", "productInfo is null");
      return false;
    }
    n localn = m.P(localb.cgV, 0);
    if (localn == null)
    {
      aa.e("MicroMsg.scanner.SubCoreScanner", "product is null");
      return false;
    }
    if (cj.hX(localn.field_productid))
    {
      aa.e("MicroMsg.scanner.SubCoreScanner", "productid is null");
      return false;
    }
    aa.d("MicroMsg.scanner.SubCoreScanner", "onAppMsgInsertToDb");
    b.ZB().a(localn);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.e
 * JD-Core Version:    0.6.2
 */