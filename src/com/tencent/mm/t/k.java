package com.tencent.mm.t;

import com.tencent.mm.n.a;
import com.tencent.mm.n.aa;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.ik;
import com.tencent.mm.protocal.a.il;
import com.tencent.mm.protocal.a.rw;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class k extends x
  implements ab
{
  private m cjh;
  public a cke;

  public k(List paramList)
  {
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localLinkedList.add(new rw().sn(str));
    }
    ik localik = new ik();
    localik.fBd = localLinkedList;
    localik.fKG = localLinkedList.size();
    b localb = new b();
    localb.a(localik);
    localb.b(new il());
    localb.es("/cgi-bin/micromsg-bin/getcontact");
    localb.cN(182);
    localb.cO(71);
    localb.cP(1000000071);
    this.cke = localb.wx();
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  protected final aa a(aj paramaj)
  {
    return aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 182;
  }

  protected final int we()
  {
    return 5;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.t.k
 * JD-Core Version:    0.6.2
 */