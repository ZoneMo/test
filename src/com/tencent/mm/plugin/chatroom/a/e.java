package com.tencent.mm.plugin.chatroom.a;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.ig;
import com.tencent.mm.protocal.a.ih;
import com.tencent.mm.sdk.platformtools.aa;

public final class e extends x
  implements ab
{
  public String cWi;
  public String cWj;
  public int cWk;
  public int cWl;
  private m cjh = null;
  private final a cke;
  public int status;

  public e(String paramString)
  {
    b localb = new b();
    localb.a(new ig());
    localb.b(new ih());
    localb.es("/cgi-bin/micromsg-bin/getchatroomupgradestatus");
    localb.cN(519);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    this.cWi = paramString;
    ((ig)this.cke.wr()).fEJ = paramString;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    ih localih = (ih)this.cke.ws();
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt2);
    arrayOfObject[1] = Integer.valueOf(paramInt3);
    arrayOfObject[2] = paramString;
    aa.e("MicroMsg.NetSceneGetChatRoomUpgradeStatus", "NetSceneGetChatRoomUpgradeStatus onGYNetEnd errType:%d, errCode:%d, errMsg:%s", arrayOfObject);
    this.status = localih.fzr;
    this.cWj = localih.fKB;
    this.cWl = localih.fKC;
    this.cWj = localih.fKB;
    this.cWk = localih.fKA;
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 519;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.a.e
 * JD-Core Version:    0.6.2
 */