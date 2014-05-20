package com.tencent.mm.p;

import com.tencent.mm.sdk.platformtools.LBSManager;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.x;

final class t
  implements x
{
  long coe = 0L;

  private t(r paramr)
  {
  }

  public final void a(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, String paramString1, String paramString2, boolean paramBoolean)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Float.valueOf(paramFloat1);
    arrayOfObject[1] = Float.valueOf(paramFloat2);
    aa.e("MicroMsg.ReportLocation", "LBSManager notify. lat:%f, lng:%f", arrayOfObject);
    if (r.d(this.cod) != null)
      r.d(this.cod).azc();
    if (cj.FC() >= this.coe + r.e(this.cod))
    {
      r.a(r.a(this.cod), paramFloat1, paramFloat2, paramInt1);
      this.coe = cj.FC();
    }
    if (r.b(this.cod) == 2)
      this.cod.xZ();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.t
 * JD-Core Version:    0.6.2
 */