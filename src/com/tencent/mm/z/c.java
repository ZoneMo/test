package com.tencent.mm.z;

import com.tencent.mm.compatible.g.k;
import com.tencent.mm.model.be;
import com.tencent.mm.protocal.a.cx;
import com.tencent.mm.protocal.a.oz;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.LinkedList;
import java.util.Queue;

final class c
  implements az
{
  private boolean cuE = false;

  c(b paramb)
  {
  }

  public final boolean ok()
  {
    long l1 = cj.FD();
    if (!this.cuE)
    {
      this.cuE = true;
      be.uz().sw().aCP();
    }
    if (b.a(this.cuF))
    {
      i locali = b.b(this.cuF);
      locali.Bw();
      be.uz().sw().aCQ();
      return false;
    }
    k localk = new k();
    if (this.cuF.cuy.fyr.fRg > 1);
    for (long l2 = be.uz().sp().ca(Thread.currentThread().getId()); ; l2 = 0L)
    {
      int i = 0;
      label294: boolean bool;
      if (i < 20)
        if ((this.cuF.cuy.fyr.fRh == null) || (b.c(this.cuF) >= this.cuF.cuy.fyr.fRh.size()) || (!b.d(this.cuF).a((cx)this.cuF.cuy.fyr.fRh.get(b.c(this.cuF)), true)))
        {
          b.b(this.cuF).c(this.cuF.cuy);
          b.d(this.cuF).Bx();
          b.e(this.cuF).remove(this.cuF.cuy);
          b.f(this.cuF);
          if (!b.e(this.cuF).isEmpty())
          {
            this.cuF.b((com.tencent.mm.protocal.ap)b.e(this.cuF).poll());
            be.uz().sw().aCQ();
            bool = false;
          }
        }
      while (true)
      {
        if (b.g(this.cuF) != null)
          b.g(this.cuF).Bm();
        if ((l2 > 0L) && (be.uz().sp() != null))
          be.uz().sp().cb(l2);
        b.a(this.cuF, cj.FD() - l1);
        return bool;
        aa.i("MicroMsg.InitRespHandler", "init resp list process done");
        break label294;
        if (b.g(this.cuF) != null)
        {
          a locala = b.g(this.cuF);
          locala.cur = (1 + locala.cur);
        }
        b.h(this.cuF);
        if (localk.qh() > 1000L)
        {
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = Long.valueOf(localk.qh());
          arrayOfObject[1] = Integer.valueOf(i);
          aa.e("MicroMsg.InitRespHandler", "dksynctime(>1000) : %d cnt:%d", arrayOfObject);
          bool = true;
        }
        else
        {
          i++;
          break;
          bool = true;
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.z.c
 * JD-Core Version:    0.6.2
 */