package com.tencent.mm.ah;

import com.tencent.mm.c.a.bi;
import com.tencent.mm.c.a.bj;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;

final class q extends g
{
  q(k paramk)
  {
  }

  public final boolean a(e parame)
  {
    bi localbi = (bi)parame;
    int i = localbi.bNi.bNk;
    String str = localbi.bNi.bNl;
    int j = localbi.bNi.state;
    if (i == 1)
      j = k.Dy().gC(str);
    while (true)
    {
      localbi.bNj.state = j;
      return false;
      if (i == 0)
        if (j == 2)
          k.Dy().v(str, 2);
        else if (j == 1)
          k.Dy().v(str, 1);
        else
          k.Dy().v(str, 0);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ah.q
 * JD-Core Version:    0.6.2
 */