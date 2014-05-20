package com.tencent.mm.p;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.k;

final class s
  implements ar
{
  s(r paramr)
  {
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    if ((r.a(this.cod).equals((String)paramObject)) && (r.b(this.cod) == 1))
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = r.a(this.cod);
      aa.e("MicroMsg.ReportLocation", "contactStgUpdate, %s", arrayOfObject);
      this.cod.eM(r.a(this.cod));
      be.uz().su().b(r.c(this.cod));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.s
 * JD-Core Version:    0.6.2
 */