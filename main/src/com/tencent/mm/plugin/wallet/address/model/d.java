package com.tencent.mm.plugin.wallet.address.model;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.protocal.a.rd;
import com.tencent.mm.protocal.a.rj;
import com.tencent.mm.protocal.a.rk;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.LinkedList;

public final class d extends x
  implements ab
{
  private m cjh;
  private a cke;

  public d(int paramInt)
  {
    b localb = new b();
    localb.a(new rj());
    localb.b(new rk());
    localb.es("/cgi-bin/micromsg-bin/rcptinfotouch");
    localb.cN(419);
    localb.cO(204);
    localb.cP(1000000204);
    this.cke = localb.wx();
    ((rj)this.cke.wr()).id = paramInt;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneRcptInfoTouch", "errType:" + paramInt2 + ",errCode:" + paramInt3 + ",errMsg" + paramString);
    if ((paramInt2 == 0) && (paramInt3 == 0))
    {
      rk localrk = (rk)((a)paramaj).ws();
      if (localrk.fTy.fTz != null)
      {
        aa.d("MicroMsg.NetSceneRcptInfoTouch", "resp.rImpl.rcptinfolist.rcptinfolist " + localrk.fTy.fTz.size());
        c.anX();
        c.anY().O(localrk.fTy.fTz);
        c.anX();
        c.anY().amY();
      }
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 419;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.model.d
 * JD-Core Version:    0.6.2
 */