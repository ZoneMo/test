package com.tencent.mm.ab;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ab;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.RegionCodeDecoder;
import com.tencent.mm.storage.e;

public final class q
  implements m
{
  private static q cvZ;
  private boolean cvF = false;
  private int cvG = 3;

  private static void BF()
  {
    be.uz().sr().set(81937, Long.valueOf(cj.FC()));
  }

  public static q BK()
  {
    if (cvZ == null)
      cvZ = new q();
    return cvZ;
  }

  private void release()
  {
    this.cvF = false;
    be.uA().b(159, this);
    be.uA().b(160, this);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if ((!(paramx instanceof ab)) || (((ab)paramx).wQ() != 8))
      aa.d("MicroMsg.RegionCodeUpdater", "another scene");
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
          k[] arrayOfk = r.BM().dR(8);
          if ((arrayOfk == null) || (arrayOfk.length == 0))
          {
            aa.i("MicroMsg.RegionCodeUpdater", "error no pkg found.");
            release();
            return;
          }
          k localk = arrayOfk[0];
          aa.i("MicroMsg.RegionCodeUpdater", "dkregcode Pkg id:" + localk.getId() + " version:" + localk.getVersion() + " status:" + localk.getStatus() + " type:" + localk.BH());
          if (5 != localk.getStatus())
          {
            release();
            return;
          }
          i locali = new i(localk.getId(), 8);
          be.uA().d(locali);
          return;
        }
        int j = -1 + this.cvG;
        this.cvG = j;
        if (j <= 0)
        {
          be.uz().sr().set(81937, Long.valueOf((3600000L + (cj.FD() - 604800000L)) / 1000L));
          this.cvG = 3;
        }
        release();
        return;
      }
    }
    while (i != 160);
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      BF();
      RegionCodeDecoder.aDe().aAf();
    }
    release();
  }

  public final void update()
  {
    if ((!this.cvF) && (be.uz().isSDCardAvailable()))
    {
      release();
      this.cvF = true;
      be.uA().a(159, this);
      be.uA().a(160, this);
      j localj = new j(8);
      be.uA().d(localj);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ab.q
 * JD-Core Version:    0.6.2
 */