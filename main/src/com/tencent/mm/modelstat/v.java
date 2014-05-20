package com.tencent.mm.modelstat;

import com.tencent.mm.model.aw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

final class v
  implements aw
{
  v(r paramr)
  {
  }

  public final void C(int paramInt1, int paramInt2)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = Integer.valueOf(0);
    arrayOfObject[3] = cj.azV();
    aa.e("MicroMsg.SubCoreStat", "ReportDataFlow [%d][%d][%d] : %s ", arrayOfObject);
    k.C(paramInt1, paramInt2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelstat.v
 * JD-Core Version:    0.6.2
 */