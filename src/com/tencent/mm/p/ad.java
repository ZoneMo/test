package com.tencent.mm.p;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.n;
import com.tencent.mm.storage.o;
import com.tencent.mm.storage.r;

final class ad
  implements r
{
  ad(ab paramab)
  {
  }

  public final void a(n paramn, o paramo)
  {
    if ((paramn != null) && (!cj.hX(paramn.field_username)))
    {
      String str = paramn.field_username;
      i locali = be.uz().su().tO(str);
      if ((locali != null) && (locali.aAp()) && (!w.cH(str)))
      {
        a locala = ab.ye().eG(str);
        if (((locala == null) || (!locala.xE())) && (!w.da(str)))
          break label86;
        paramn.field_parentRef = null;
      }
    }
    return;
    label86: paramn.field_parentRef = "officialaccounts";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.ad
 * JD-Core Version:    0.6.2
 */