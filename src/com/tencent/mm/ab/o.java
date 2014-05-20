package com.tencent.mm.ab;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.cj;

public final class o extends g
{
  private static long caF = 86400000L;

  private static boolean oQ()
  {
    return 1000L * cj.M(Long.valueOf(cj.a((Long)be.uz().sr().get(81938))).longValue()) > caF;
  }

  public final boolean a(com.tencent.mm.sdk.b.e parame)
  {
    new StringBuilder("callback expired : ").append(oQ()).toString();
    if (oQ())
      c.BE().update();
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ab.o
 * JD-Core Version:    0.6.2
 */