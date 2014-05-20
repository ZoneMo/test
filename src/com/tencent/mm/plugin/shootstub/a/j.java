package com.tencent.mm.plugin.shootstub.a;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.gy;
import com.tencent.mm.protocal.a.gz;
import java.util.LinkedList;

public final class j extends x
  implements ab
{
  private m cjh;
  public a cke;
  private String etC;
  private int etD;
  private String etE;
  private LinkedList etM;
  private int etR;

  public j(String paramString1, int paramInt1, int paramInt2, String paramString2, LinkedList paramLinkedList)
  {
    this.etC = paramString1;
    this.etD = paramInt1;
    this.etR = paramInt2;
    this.etE = paramString2;
    this.etM = paramLinkedList;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    b localb = new b();
    localb.a(new gy());
    localb.b(new gz());
    localb.es("/cgi-bin/micromsg-bin/gamestart");
    localb.cN(444);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    gy localgy = (gy)this.cke.wr();
    localgy.fyR = this.etC;
    localgy.fIK = this.etD;
    localgy.fJB = this.etR;
    localgy.fIL = this.etE;
    localgy.fIW = this.etM.size();
    localgy.fIX = this.etM;
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    gy localgy = (gy)((a)paramaj).wr();
    if ((localgy.fyR == null) || (localgy.fyR.length() <= 0) || (localgy.fIK < 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.shoot.NetSceneGameStart", "ERR: Security Check Failed");
      return com.tencent.mm.n.aa.cmi;
    }
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.shoot.NetSceneGameStart", "onGYNetEnd errtype:" + paramInt2 + " errcode:" + paramInt3 + " errMsg:" + paramString);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 444;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.shootstub.a.j
 * JD-Core Version:    0.6.2
 */