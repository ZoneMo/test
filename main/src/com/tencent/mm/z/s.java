package com.tencent.mm.z;

import com.tencent.mm.compatible.g.k;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.protocal.a.cx;
import com.tencent.mm.protocal.a.cy;
import com.tencent.mm.protocal.a.pe;
import com.tencent.mm.protocal.as;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;
import com.tencent.mm.storage.ap;
import java.util.LinkedList;

final class s
  implements az
{
  private boolean cuE = false;

  s(r paramr)
  {
  }

  public final boolean ok()
  {
    if (!this.cuE)
    {
      this.cuE = true;
      be.uz().sw().aCP();
    }
    if (r.a(this.cvv))
    {
      r.b(this.cvv);
      i.Bu();
      be.uz().sw().aCQ();
      return false;
    }
    k localk = new k();
    if (this.cvv.cvs.fyt.fIy.fAC > 1)
      be.uz().sp();
    int i = 0;
    label272: boolean bool;
    if (i < 5)
      if (r.c(this.cvv))
        if ((this.cvv.cvs.fyt.fIy == null) || (this.cvv.cvs.fyt.fIy.fAD == null) || (r.d(this.cvv) >= this.cvv.cvs.fyt.fIy.fAD.size()) || (!r.e(this.cvv).a((cx)this.cvv.cvs.fyt.fIy.fAD.get(r.d(this.cvv)), false)))
        {
          aa.d("MicroMsg.SyncRespHandler", "sync processingResp.getCmdList() " + this.cvv.cvs.fyt.fIy.fAC);
          r.f(this.cvv);
          r.g(this.cvv);
          if (localk.qh() <= 500L)
            break label434;
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = Long.valueOf(localk.qh());
          arrayOfObject2[1] = Integer.valueOf(i);
          aa.e("MicroMsg.SyncRespHandler", "dksynctime(>500) : %d cnt:%d", arrayOfObject2);
          bool = true;
        }
    while (true)
    {
      if (0L > 0L)
        be.uz().sp();
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Long.valueOf(localk.qh());
      arrayOfObject1[1] = Integer.valueOf(i);
      aa.e("MicroMsg.SyncRespHandler", "dksynctime : %d cnt:%d", arrayOfObject1);
      return bool;
      r.h(this.cvv);
      break label272;
      r.b(this.cvv).a(this.cvv.cvs);
      r.e(this.cvv).Bx();
      r.i(this.cvv);
      aa.i("MicroMsg.SyncRespHandler", "sync resp list process done");
      be.uz().sw().aCQ();
      bool = false;
      continue;
      label434: i++;
      break;
      bool = true;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.z.s
 * JD-Core Version:    0.6.2
 */