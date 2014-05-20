package com.tencent.mm.plugin.wallet.address.model;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.rd;
import com.tencent.mm.protocal.a.rh;
import com.tencent.mm.protocal.a.ri;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.LinkedList;

public final class c extends x
  implements ab
{
  private m cjh;
  private a cke;
  private int eVX = 0;

  public c(int paramInt)
  {
    b localb = new b();
    localb.a(new rh());
    localb.b(new ri());
    localb.es("/cgi-bin/micromsg-bin/rcptinforemove");
    localb.cN(416);
    localb.cO(201);
    localb.cP(1000000201);
    this.cke = localb.wx();
    this.eVX = paramInt;
    aa.d("MicroMsg.NetSceneRcptInfoRemove", "remove Id " + paramInt);
    ((rh)this.cke.wr()).id = paramInt;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneRcptInfoRemove", "errType:" + paramInt2 + ",errCode:" + paramInt3 + ",errMsg" + paramString);
    if ((paramInt2 == 0) && (paramInt3 == 0))
    {
      ri localri = (ri)((a)paramaj).ws();
      if (localri.fTy.fTz != null)
      {
        aa.d("MicroMsg.NetSceneRcptInfoRemove", "resp.rImpl.rcptinfolist.rcptinfolist " + localri.fTy.fTz.size());
        com.tencent.mm.plugin.wallet.c.c.anX();
        com.tencent.mm.plugin.wallet.c.c.anY().O(localri.fTy.fTz);
        com.tencent.mm.plugin.wallet.c.c.anX();
        com.tencent.mm.plugin.wallet.c.c.anY().amY();
      }
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int amW()
  {
    return this.eVX;
  }

  public final int getType()
  {
    return 416;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.model.c
 * JD-Core Version:    0.6.2
 */