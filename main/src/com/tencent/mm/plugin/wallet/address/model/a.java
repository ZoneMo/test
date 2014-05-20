package com.tencent.mm.plugin.wallet.address.model;

import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.protocal.a.rb;
import com.tencent.mm.protocal.a.rc;
import com.tencent.mm.protocal.a.rd;
import com.tencent.mm.protocal.a.re;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.LinkedList;

public final class a extends x
  implements ab
{
  private m cjh;
  private com.tencent.mm.n.a cke;

  public a(com.tencent.mm.plugin.wallet.protocal.b paramb)
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new rb());
    localb.b(new rc());
    localb.es("/cgi-bin/micromsg-bin/rcptinfoadd");
    localb.cN(415);
    localb.cO(200);
    localb.cP(1000000200);
    this.cke = localb.wx();
    rb localrb = (rb)this.cke.wr();
    localrb.fTx = new re();
    localrb.fTx.fTC = new rw().sn(cj.R(paramb.fcW, ""));
    localrb.fTx.fTA = new rw().sn(cj.R(paramb.fcU, ""));
    localrb.fTx.fTF = new rw().sn(cj.R(paramb.fcZ, ""));
    localrb.fTx.fTD = new rw().sn(cj.R(paramb.fcX, ""));
    localrb.fTx.fTG = new rw().sn(cj.R(paramb.fda, ""));
    localrb.fTx.fTH = new rw().sn(cj.R(paramb.fdb, ""));
    localrb.fTx.fTB = new rw().sn(cj.R(paramb.fcV, ""));
    localrb.fTx.fTE = new rw().sn(cj.R(paramb.fcY, ""));
    localrb.fTx.fTI = new rw().sn(cj.R(paramb.fdc, ""));
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneRcptInfoAdd", "errType:" + paramInt2 + ",errCode:" + paramInt3 + ",errMsg" + paramString);
    if ((paramInt2 == 0) && (paramInt3 == 0))
    {
      rc localrc = (rc)((com.tencent.mm.n.a)paramaj).ws();
      if (localrc.fTy.fTz != null)
      {
        aa.d("MicroMsg.NetSceneRcptInfoAdd", "resp.rImpl.rcptinfolist.rcptinfolist " + localrc.fTy.fTz.size());
        c.anX();
        c.anY().O(localrc.fTy.fTz);
        c.anX();
        c.anY().amY();
      }
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 415;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.model.a
 * JD-Core Version:    0.6.2
 */