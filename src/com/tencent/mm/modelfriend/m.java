package com.tencent.mm.modelfriend;

import com.tencent.mm.c.a.bo;
import com.tencent.mm.c.a.bp;
import com.tencent.mm.c.a.bq;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.cj;

public final class m extends g
{
  public final boolean a(e parame)
  {
    bo localbo = (bo)parame;
    localbo.bNs.bNt = z.fB(localbo.bNr.bNo);
    if (cj.hX(localbo.bNs.bNt))
      localbo.bNs.bNt = z.fB(localbo.bNr.bNp);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.m
 * JD-Core Version:    0.6.2
 */