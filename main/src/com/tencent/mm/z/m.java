package com.tencent.mm.z;

import com.tencent.mm.c.a.gc;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;

public final class m
{
  public static void a(long paramLong, int paramInt, String paramString)
  {
    aa.i("MicroMsg.NewSyncMgr", "dealWithSelector, selector = " + paramLong);
    if ((0x100 & paramLong) != 0L)
    {
      gc localgc = new gc();
      a.ayH().f(localgc);
    }
    long l = 0x5F & (0xFFFFFEFF & paramLong);
    if ((l != 0L) && (be.se()) && (be.uz().sr() != null))
    {
      be.uz().sr().set(8196, Long.valueOf(l));
      be.uA().d(new i(paramInt));
    }
    if (!au.hX(paramString))
    {
      aa.d("MicroMsg.NewSyncMgr", "dealWithSelector xml:%s", new Object[] { paramString });
      if (!au.hX(paramString))
      {
        com.tencent.mm.c.a.m localm = new com.tencent.mm.c.a.m();
        localm.bLU.type = 3;
        localm.bLU.bLW = paramString;
        a.ayH().f(localm);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.z.m
 * JD-Core Version:    0.6.2
 */