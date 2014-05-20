package com.tencent.mm.m;

import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

final class f
  implements r
{
  f(e parame)
  {
  }

  public final boolean eb(String paramString)
  {
    if (cj.hX(paramString));
    String str;
    do
    {
      return false;
      str = v.th();
    }
    while ((!w.cp(paramString)) && (!w.cH(paramString)) && (!paramString.equals(str)));
    aa.c("MicroMsg.AvatarService", "SmallBM mIGiveupVer1 shouldGiveup user:%s", new Object[] { paramString });
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.f
 * JD-Core Version:    0.6.2
 */