package com.tencent.mm.p;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;

final class ae
  implements m
{
  ae(ab paramab)
  {
  }

  public final void a(o paramo)
  {
    int i = 1;
    if (((paramo.cnV != n.cnR) && (paramo.cnV != n.cnT)) || (paramo.cnX == null));
    label333: 
    while (true)
    {
      return;
      i locali = be.uz().su().tO(paramo.cnW);
      if ((locali != null) && (locali.aAp()) && (!w.cH(locali.field_username)))
      {
        com.tencent.mm.storage.n localn1 = be.uz().sx().tZ(paramo.cnW);
        if (localn1 != null)
        {
          if ((!paramo.cnX.xE()) && (!w.da(locali.field_username)) && (!"officialaccounts".equals(localn1.field_parentRef)))
            localn1.field_parentRef = "officialaccounts";
          while (true)
          {
            if (i == 0)
              break label333;
            be.uz().sx().a(localn1, localn1.field_username);
            if (!"officialaccounts".equals(localn1.field_parentRef))
              break;
            com.tencent.mm.storage.n localn2 = be.uz().sx().tZ("officialaccounts");
            if (localn2 == null)
            {
              localn2 = new com.tencent.mm.storage.n("officialaccounts");
              localn2.aAH();
              be.uz().sx().c(localn2);
            }
            if (!cj.hX(localn2.field_content))
              break;
            aa.d("MicroMsg.SubCoreBiz", "conv content is null");
            String str = be.uz().sx().aAO();
            if (cj.hX(str))
            {
              aa.w("MicroMsg.SubCoreBiz", "last convBiz is null");
              return;
              if ((paramo.cnX.xE()) && (localn1.field_parentRef != null))
                localn1.field_parentRef = null;
            }
            else
            {
              ak localak = be.uz().sw().uW(str);
              if ((localak == null) || (localak.field_msgId == 0L))
              {
                aa.w("MicroMsg.SubCoreBiz", "last biz msg is error");
                return;
              }
              be.uz().sw().a(localak.field_msgId, localak);
              return;
              i = 0;
            }
          }
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.ae
 * JD-Core Version:    0.6.2
 */