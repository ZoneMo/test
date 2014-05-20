package com.tencent.mm.ab;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.ct;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.cj;

public final class m extends g
{
  public final boolean a(com.tencent.mm.sdk.b.e parame)
  {
    if (1000L * cj.M(cj.a((Long)be.uz().sr().get(66818), 0L)) > 1800000L);
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
      {
        int j = cj.a((Integer)be.uz().sr().get(66820), -99999);
        if (j != -99999)
        {
          ct.e(9, String.valueOf(j));
          be.uz().sr().set(66820, Integer.valueOf(-99999));
        }
        be.uz().sr().set(66818, Long.valueOf(cj.FC()));
      }
      return false;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ab.m
 * JD-Core Version:    0.6.2
 */