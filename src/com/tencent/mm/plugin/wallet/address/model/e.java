package com.tencent.mm.plugin.wallet.address.model;

import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.protocal.a.rd;
import com.tencent.mm.protocal.a.re;
import com.tencent.mm.protocal.a.rl;
import com.tencent.mm.protocal.a.rm;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.LinkedList;

public final class e extends x
  implements ab
{
  private m cjh;
  private a cke;

  public e(com.tencent.mm.plugin.wallet.protocal.b paramb)
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new rl());
    localb.b(new rm());
    localb.es("/cgi-bin/micromsg-bin/rcptinfoupdate");
    localb.cN(418);
    localb.cO(203);
    localb.cP(1000000203);
    this.cke = localb.wx();
    rl localrl = (rl)this.cke.wr();
    localrl.fTx = new re();
    localrl.fTx.id = paramb.id;
    localrl.fTx.fTC = new rw().sn(cj.R(paramb.fcW, ""));
    localrl.fTx.fTA = new rw().sn(cj.R(paramb.fcU, ""));
    localrl.fTx.fTF = new rw().sn(cj.R(paramb.fcZ, ""));
    localrl.fTx.fTD = new rw().sn(cj.R(paramb.fcX, ""));
    localrl.fTx.fTG = new rw().sn(cj.R(paramb.fda, ""));
    localrl.fTx.fTH = new rw().sn(cj.R(paramb.fdb, ""));
    localrl.fTx.fTB = new rw().sn(cj.R(paramb.fcV, ""));
    localrl.fTx.fTE = new rw().sn(cj.R(paramb.fcY, ""));
    localrl.fTx.fTI = new rw().sn(cj.R(paramb.fdc, ""));
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneRcptInfoUpdate", "errType:" + paramInt2 + ",errCode:" + paramInt3 + ",errMsg" + paramString);
    if ((paramInt2 == 0) && (paramInt3 == 0))
    {
      rm localrm = (rm)((a)paramaj).ws();
      if (localrm.fTy.fTz != null)
      {
        aa.d("MicroMsg.NetSceneRcptInfoUpdate", "resp.rImpl.rcptinfolist.rcptinfolist " + localrm.fTy.fTz.size());
        c.anX();
        c.anY().O(localrm.fTy.fTz);
        c.anX();
        c.anY().amY();
      }
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 418;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.model.e
 * JD-Core Version:    0.6.2
 */