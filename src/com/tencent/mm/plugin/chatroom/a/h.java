package com.tencent.mm.plugin.chatroom.a;

import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.protocal.a.xm;
import com.tencent.mm.protocal.a.xn;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.c;

public final class h extends x
  implements ab
{
  public String cWi = null;
  public String cWj = null;
  public String cWm = null;
  public int cWn = 0;
  private m cjh = null;
  private final a cke;
  public int yx = 0;

  public h(String paramString)
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new xm());
    localb.b(new xn());
    localb.es("/cgi-bin/micromsg-bin/upgradechatroom");
    localb.cN(482);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    this.cWi = paramString;
    ((xm)this.cke.wr()).fEJ = paramString;
  }

  public final int a(com.tencent.mm.network.r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    xn localxn = (xn)this.cke.ws();
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt2);
    arrayOfObject[1] = Integer.valueOf(paramInt3);
    arrayOfObject[2] = paramString;
    aa.e("MicroMsg.NetSceneUpgradeChatroom", "NetSceneUpgradeChatroom onGYNetEnd errType:%d, errCode:%d, errMsg:%s", arrayOfObject);
    this.cWm = localxn.fPc;
    if (!cj.hX(this.cWm))
    {
      com.tencent.mm.storage.b localb = be.uz().sA().ts(this.cWi);
      if (localb == null)
        localb = new com.tencent.mm.storage.b();
      localb.aR(v.th(), this.cWm);
      com.tencent.mm.model.r.a(localb);
    }
    this.cWj = localxn.fKB;
    this.yx = localxn.fKA;
    this.cWn = localxn.fKC;
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 482;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.a.h
 * JD-Core Version:    0.6.2
 */