package com.tencent.mm.plugin.wallet.address.model;

import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.protocal.a.rd;
import com.tencent.mm.protocal.a.rf;
import com.tencent.mm.protocal.a.rg;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.LinkedList;

public final class b extends x
  implements ab
{
  private m cjh;
  private a cke;
  public String crH;
  public boolean eVW;
  public String username;

  public b(String paramString1, String paramString2, int paramInt)
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new rf());
    localb.b(new rg());
    localb.es("/cgi-bin/micromsg-bin/rcptinfoquery");
    localb.cN(417);
    localb.cO(202);
    localb.cP(1000000202);
    this.cke = localb.wx();
    rf localrf = (rf)this.cke.wr();
    localrf.timestamp = 0;
    localrf.fTJ = paramString1;
    localrf.bNG = paramString2;
    localrf.bLN = paramInt;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    int i = 1;
    aa.d("MicroMsg.NetSceneRcptInfoQuery", "errType:" + paramInt2 + ",errCode:" + paramInt3 + ",errMsg" + paramString);
    rg localrg;
    if ((paramInt2 == 0) && (paramInt3 == 0))
    {
      localrg = (rg)((a)paramaj).ws();
      this.username = localrg.fTL;
      this.crH = localrg.fTN;
      if (localrg.fTM != i)
        break label184;
    }
    while (true)
    {
      this.eVW = i;
      if (localrg.fTy.fTz != null)
      {
        aa.d("MicroMsg.NetSceneRcptInfoQuery", "resp.rImpl.rcptinfolist.rcptinfolist " + localrg.fTy.fTz.size());
        c.anX();
        c.anY().O(localrg.fTy.fTz);
        c.anX();
        c.anY().amY();
      }
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
      label184: i = 0;
    }
  }

  public final int getType()
  {
    return 417;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.model.b
 * JD-Core Version:    0.6.2
 */