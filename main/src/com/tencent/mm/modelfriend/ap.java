package com.tencent.mm.modelfriend;

import com.tencent.mm.model.be;
import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.my;
import com.tencent.mm.protocal.a.mz;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class ap extends x
  implements ab
{
  private m cjh = null;
  private final a cke;

  public ap(String paramString, List paramList)
  {
    b localb = new b();
    localb.a(new my());
    localb.b(new mz());
    localb.es("/cgi-bin/micromsg-bin/listmfriend");
    localb.cN(431);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    my localmy = (my)this.cke.wr();
    localmy.fFm = paramString;
    localmy.fNO = 0;
    int i = 0;
    if (paramList == null);
    while (true)
    {
      localmy.fNM = i;
      localmy.fNP = new LinkedList();
      localmy.fNN = new LinkedList();
      if (paramList == null)
        break;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String[] arrayOfString = (String[])localIterator.next();
        if (!cj.hX(arrayOfString[2]))
          localmy.fNN.add(new rw().sn(arrayOfString[2]));
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
    mz localmz = (mz)this.cke.ws();
    be.ut().a(new aq(this, localmz));
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 431;
  }

  public final LinkedList zT()
  {
    return ((mz)this.cke.ws()).fNQ;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.ap
 * JD-Core Version:    0.6.2
 */