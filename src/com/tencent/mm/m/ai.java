package com.tencent.mm.m;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.az;
import com.tencent.mm.storage.e;

final class ai
  implements az
{
  ai(af paramaf)
  {
  }

  public final boolean ok()
  {
    if (be.se())
    {
      if (((Boolean)be.uz().sr().get(90113, Boolean.valueOf(false))).booleanValue())
      {
        af.wq();
        af.wp();
      }
      be.uz().sr().set(90113, Boolean.valueOf(false));
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.ai
 * JD-Core Version:    0.6.2
 */