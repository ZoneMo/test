package com.tencent.mm.model;

import com.tencent.mm.platformtools.h;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.storage.m;
import com.tencent.mm.storage.o;

final class bq
  implements m
{
  bq(be parambe)
  {
  }

  public final void a(k paramk, i parami)
  {
    String str = parami.getUsername();
    if (i.tC(parami.getUsername()))
      parami.setUsername(i.tE(parami.getUsername()));
    if (cj.hX(parami.rn()))
      parami.bv(h.hJ(parami.kn()));
    if (cj.hX(parami.ro()))
      parami.bw(h.hI(parami.kn()));
    if (cj.hX(parami.rv()))
      parami.bI(h.hJ(parami.ru()));
    if (cj.hX(parami.rw()))
      parami.bJ(h.hI(parami.ru()));
    if (w.a(parami))
    {
      parami.bM(43);
      parami.bv(h.hJ(parami.rq()));
      parami.bw(h.hI(parami.rq()));
      parami.bJ(h.hI(parami.rr()));
      parami.bI(parami.rr());
      return;
    }
    an localan;
    if (w.db(str))
    {
      parami.qI();
      parami.bU(4);
      parami.bM(33);
      localan = be.g(this.ciN);
      if (localan != null)
        if (parami != null)
          break label388;
    }
    label388: for (i locali = new i(); ; locali = parami)
    {
      locali.setUsername(str);
      locali.qI();
      ao localao = localan.a(str, al.getContext());
      if (localao != null)
      {
        locali.bt(localao.cie);
        locali.bv(localao.cid);
        locali.bw(localao.cif);
        locali.qP();
      }
      if (parami.re())
        parami.bM(parami.qF());
      if (w.cT(str))
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(31);
        aa.d("MicroMsg.MMCore", "update official account helper showhead %d", arrayOfObject2);
        parami.bM(31);
      }
      if (parami.rd())
        be.uz().sx().a(new String[] { str }, "@blacklist");
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = parami.getUsername();
      arrayOfObject1[1] = parami.rn();
      aa.e("MicroMsg.MMCore", "onPreInsertContact2: %s, %s", arrayOfObject1);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.bq
 * JD-Core Version:    0.6.2
 */