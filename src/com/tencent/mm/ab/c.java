package com.tencent.mm.ab;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;

public final class c
  implements m
{
  private static c cvH;
  private boolean cvF = false;
  private int cvG = 3;

  public static c BE()
  {
    if (cvH == null)
      cvH = new c();
    return cvH;
  }

  private void release()
  {
    this.cvF = false;
    be.uA().b(159, this);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (paramx.getType() == 159)
    {
      if ((paramInt1 != 0) || (paramInt2 != 0))
        break label41;
      be.uz().sr().set(81938, Long.valueOf(cj.FC()));
    }
    while (true)
    {
      release();
      return;
      label41: int i = -1 + this.cvG;
      this.cvG = i;
      if (i < 0)
      {
        be.uz().sr().set(81938, Long.valueOf((3600000L + (cj.FD() - 86400000L)) / 1000L));
        this.cvG = 3;
      }
    }
  }

  public final void update()
  {
    new StringBuilder("isUpdateing : ").append(this.cvF).toString();
    new StringBuilder("isSDCardAvailable : ").append(be.uz().isSDCardAvailable()).toString();
    if ((!this.cvF) && (be.uz().isSDCardAvailable()))
    {
      release();
      this.cvF = true;
      be.uA().a(159, this);
      j localj = new j(7);
      be.uA().d(localj);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ab.c
 * JD-Core Version:    0.6.2
 */