package com.tencent.mm.modelstat;

import com.tencent.mm.model.be;
import com.tencent.mm.network.ah;
import com.tencent.mm.sdk.platformtools.an;

final class s extends ah
{
  s(r paramr)
  {
  }

  public final void ct(int paramInt)
  {
    if ((paramInt != 5) && (paramInt != 1))
      return;
    be.ut().a(new t(this), 3000L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelstat.s
 * JD-Core Version:    0.6.2
 */