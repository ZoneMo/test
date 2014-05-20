package com.tencent.mm.u;

import com.tencent.mm.model.av;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.h;

public final class c
  implements av
{
  private String g(int paramInt, boolean paramBoolean)
  {
    if (!be.uz().isSDCardAvailable())
      return null;
    int i;
    int j;
    if (paramInt == 0)
    {
      i = -1;
      j = 0;
      if (i != -1)
        break label69;
      label25: if (j != 0)
        break label77;
    }
    label67: label69: label77: for (String str = null; ; str = f(j, paramBoolean))
    {
      if (!com.tencent.mm.a.c.as(str))
        break label89;
      return str;
      for (i = 0; ; i++)
      {
        if (i >= 32)
          break label67;
        paramInt = 0x7FFFFFFF & paramInt >> 1;
        if (paramInt == 0)
          break;
      }
      break;
      j = 1 << i;
      break label25;
    }
    label89: ud();
    return null;
  }

  public final String cp(int paramInt)
  {
    return g(paramInt, true);
  }

  public final String cq(int paramInt)
  {
    return g(paramInt, false);
  }

  public final boolean cr(int paramInt)
  {
    if (paramInt == 0)
      return false;
    for (int i = 0; ; i++)
    {
      if (i >= 32)
        break label52;
      if ((!com.tencent.mm.a.c.as(f(paramInt & 1 << i, false))) || (!com.tencent.mm.a.c.as(f(paramInt & 1 << i, true))))
        break;
    }
    label52: return true;
  }

  public final String f(int paramInt, boolean paramBoolean)
  {
    if (paramInt == 0)
      return null;
    StringBuilder localStringBuilder = new StringBuilder().append(h.ggv).append("vuserpic_").append(Integer.toHexString(paramInt));
    if (paramBoolean);
    for (String str = "_HD"; ; str = "")
      return str + ".png";
  }

  public final void ud()
  {
    if (!be.uz().isSDCardAvailable());
    long l1;
    long l2;
    do
    {
      return;
      l1 = cj.a((Long)be.uz().sr().get(66051), 0L);
      l2 = cj.FD();
    }
    while (432000000L > l2 - l1);
    be.uz().sr().set(66051, Long.valueOf(l2));
    new d();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.u.c
 * JD-Core Version:    0.6.2
 */