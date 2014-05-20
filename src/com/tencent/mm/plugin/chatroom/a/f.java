package com.tencent.mm.plugin.chatroom.a;

import com.tencent.mm.m.af;
import com.tencent.mm.m.y;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.ce;
import com.tencent.mm.protocal.a.cf;
import com.tencent.mm.protocal.a.ii;
import com.tencent.mm.protocal.a.ij;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.c;
import java.util.Iterator;
import java.util.List;

public final class f extends com.tencent.mm.n.x
  implements ab
{
  private final String cWi;
  private m cjh = null;
  private final a cke;

  public f(String paramString, int paramInt)
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new ii());
    localb.b(new ij());
    localb.es("/cgi-bin/micromsg-bin/getchatroommemberdetail");
    localb.cN(551);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    this.cWi = paramString;
    ((ii)this.cke.wr()).fKD = paramString;
    ((ii)this.cke.wr()).fAm = paramInt;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    aa.d("MicroMsg.NetSceneGetChatroomMemberDetail", "chatroomName %s, oldVer: %d", arrayOfObject);
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = Integer.valueOf(paramInt2);
      arrayOfObject1[1] = Integer.valueOf(paramInt3);
      arrayOfObject1[2] = paramString;
      aa.b("MicroMsg.NetSceneGetChatroomMemberDetail", "onGYNetEnd errType:%d, errCode:%d, errMsg:%s", arrayOfObject1);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    Object[] arrayOfObject2 = new Object[3];
    arrayOfObject2[0] = Integer.valueOf(paramInt2);
    arrayOfObject2[1] = Integer.valueOf(paramInt3);
    arrayOfObject2[2] = paramString;
    aa.d("MicroMsg.NetSceneGetChatroomMemberDetail", "onGYNetEnd errType:%d, errCode:%d, errMsg:%s", arrayOfObject2);
    ij localij = (ij)this.cke.ws();
    Object[] arrayOfObject3 = new Object[2];
    arrayOfObject3[0] = Integer.valueOf(localij.fKE);
    int i;
    label171: com.tencent.mm.m.x localx;
    if (localij.fKF == null)
    {
      i = 0;
      arrayOfObject3[1] = Integer.valueOf(i);
      aa.d("MicroMsg.NetSceneGetChatroomMemberDetail", "svrVer:%d, modCnt:%d", arrayOfObject3);
      Iterator localIterator = localij.fKF.fDc.iterator();
      cf localcf;
      do
      {
        if (!localIterator.hasNext())
          break;
        localcf = (cf)localIterator.next();
      }
      while (cj.hX(localcf.fDh));
      localx = af.wm().eq(localcf.eBo);
      if (localx == null)
      {
        localx = new com.tencent.mm.m.x();
        localx.setUsername(localcf.eBo);
      }
      localx.eo(localcf.fDg);
      localx.ep(localcf.fDh);
      localx.bU(3);
      if (cj.hX(localcf.fDg))
        break label313;
    }
    label313: for (boolean bool = true; ; bool = false)
    {
      localx.Q(bool);
      af.wm().a(localx);
      break label171;
      i = localij.fKF.fzc;
      break;
    }
    com.tencent.mm.storage.b localb = be.uz().sA().tt(this.cWi);
    localb.lO(localij.fKE);
    localb.e(v.th(), localij.fKF.fDc);
    be.uz().sA().b(localb);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 482;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.a.f
 * JD-Core Version:    0.6.2
 */