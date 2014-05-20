package com.tencent.mm.ab;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ab;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;

public final class h
  implements m
{
  private h()
  {
    be.uA().a(159, this);
    be.uA().a(160, this);
    j localj = new j(5);
    be.uA().d(localj);
  }

  private static void BF()
  {
    be.uz().sr().set(81939, Long.valueOf(cj.FD()));
  }

  private void release()
  {
    be.uA().b(159, this);
    be.uA().b(160, this);
  }

  public static void update()
  {
    long l = cj.a((Long)be.uz().sr().get(81939), 0L);
    if (cj.FD() - l > 86400000L);
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
        new h();
      return;
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if ((!(paramx instanceof ab)) || (((ab)paramx).wQ() != 5))
      aa.d("MicroMsg.LangPackageUpdater", "another scene");
    int i;
    do
    {
      return;
      i = paramx.getType();
      if (i == 159)
      {
        if ((paramInt1 == 0) && (paramInt2 == 0))
        {
          BF();
          k[] arrayOfk = r.BM().dR(5);
          if ((arrayOfk == null) || (arrayOfk.length == 0))
          {
            aa.i("MicroMsg.LangPackageUpdater", "error no pkg found.");
            release();
            return;
          }
          k localk = arrayOfk[0];
          aa.i("MicroMsg.LangPackageUpdater", "dkregcode Pkg id:" + localk.getId() + " version:" + localk.getVersion() + " status:" + localk.getStatus() + " type:" + localk.BH());
          if (5 != localk.getStatus())
          {
            release();
            return;
          }
          i locali = new i(localk.getId(), 5);
          be.uA().d(locali);
          return;
        }
        release();
        return;
      }
    }
    while (i != 160);
    if ((paramInt1 == 0) && (paramInt2 == 0))
      BF();
    release();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ab.h
 * JD-Core Version:    0.6.2
 */