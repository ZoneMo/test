package com.tencent.mm.m;

import com.tencent.mm.compatible.g.j;
import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.bg;
import com.tencent.mm.protocal.a.bh;
import java.util.LinkedList;

public final class z extends x
  implements ab
{
  private m cjh;
  private LinkedList clh = null;
  private LinkedList cli = null;

  public z(LinkedList paramLinkedList)
  {
    this.clh = paramLinkedList;
  }

  public final int a(r paramr, m paramm)
  {
    if ((this.clh == null) || (this.clh.size() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneBatchGetHeadImg", j.qg() + "doScene ReqSize==0");
      return -1;
    }
    this.cjh = paramm;
    b localb = new b();
    localb.a(new bg());
    localb.b(new bh());
    localb.es("/cgi-bin/micromsg-bin/batchgetheadimg");
    localb.cN(123);
    localb.cO(15);
    localb.cP(1000000015);
    a locala = localb.wx();
    bg localbg = (bg)locala.wr();
    localbg.fBd = this.clh;
    localbg.fAC = this.clh.size();
    return a(paramr, locala, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneBatchGetHeadImg", "errType:" + paramInt2 + " errCode:" + paramInt3);
    this.cli = ((bh)((a)paramaj).ws()).fBh;
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 123;
  }

  public final LinkedList wc()
  {
    return this.clh;
  }

  public final LinkedList wd()
  {
    return this.cli;
  }

  protected final int we()
  {
    return 20;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.z
 * JD-Core Version:    0.6.2
 */