package com.tencent.mm.modelfriend;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.a.sz;
import com.tencent.mm.protocal.a.ta;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class ar extends x
  implements ab
{
  private m cjh = null;
  private final a cke;

  public ar(String paramString, List paramList)
  {
    b localb = new b();
    localb.a(new sz());
    localb.b(new ta());
    localb.es("/cgi-bin/micromsg-bin/sendsmstomfriend");
    localb.cN(432);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    sz localsz = (sz)this.cke.wr();
    localsz.fFm = paramString;
    localsz.fNN = new LinkedList();
    int i = 0;
    if (paramList == null);
    while (true)
    {
      localsz.fNM = i;
      if (paramList == null)
        break;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (!cj.hX(str))
          localsz.fNN.add(new rw().sn(str));
      }
      i = paramList.size();
    }
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 432;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.ar
 * JD-Core Version:    0.6.2
 */