package com.tencent.mm.plugin.shootstub.a;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.go;
import com.tencent.mm.protocal.a.gp;
import java.util.LinkedList;

public final class g extends x
  implements ab
{
  private m cjh;
  public a cke;
  private LinkedList clh;
  private String etC;
  private int etD;

  public g(String paramString, int paramInt, LinkedList paramLinkedList)
  {
    this.etC = paramString;
    this.etD = paramInt;
    this.clh = paramLinkedList;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    if ((this.clh == null) || (this.clh.size() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.shoot.NetSceneGameGift", "userNameList == null");
      return -1;
    }
    b localb = new b();
    localb.a(new go());
    localb.b(new gp());
    localb.es("/cgi-bin/micromsg-bin/gamegift");
    localb.cN(447);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    go localgo = (go)this.cke.wr();
    localgo.fyR = this.etC;
    localgo.fIK = this.etD;
    localgo.fBd = this.clh;
    localgo.fAC = this.clh.size();
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    go localgo = (go)((a)paramaj).wr();
    if ((localgo.fyR == null) || (localgo.fyR.length() <= 0) || (localgo.fIK < 0) || (localgo.fBd == null))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.shoot.NetSceneGameGift", "ERR: Security Check Failed");
      return com.tencent.mm.n.aa.cmi;
    }
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.shoot.NetSceneGameGift", "onGYNetEnd errtype:" + paramInt2 + " errcode:" + paramInt3 + " errMsg:" + paramString);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 447;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.shootstub.a.g
 * JD-Core Version:    0.6.2
 */