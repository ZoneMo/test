package com.tencent.mm.plugin.shootstub.a;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.hd;
import com.tencent.mm.protocal.a.he;
import java.util.LinkedList;

public final class k extends x
  implements ab
{
  private m cjh;
  public a cke;
  private LinkedList clh;
  private String etC;

  public k(String paramString, LinkedList paramLinkedList)
  {
    this.etC = paramString;
    this.clh = paramLinkedList;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    if ((this.clh == null) || (this.clh.size() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.shoot.NetSceneGameWish", "userNameList == null");
      return -1;
    }
    b localb = new b();
    localb.a(new hd());
    localb.b(new he());
    localb.es("/cgi-bin/micromsg-bin/gamewish");
    localb.cN(446);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    hd localhd = (hd)this.cke.wr();
    localhd.fyR = this.etC;
    localhd.fBd = this.clh;
    localhd.fAC = this.clh.size();
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    hd localhd = (hd)((a)paramaj).wr();
    if ((localhd.fyR == null) || (localhd.fyR.length() <= 0) || (localhd.fBd == null))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.shoot.NetSceneGameWish", "ERR: Security Check Failed, AppID == null");
      return com.tencent.mm.n.aa.cmi;
    }
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.shoot.NetSceneGameWish", "onGYNetEnd errtype:" + paramInt2 + " errcode:" + paramInt3 + " errMsg:" + paramString);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 446;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.shootstub.a.k
 * JD-Core Version:    0.6.2
 */