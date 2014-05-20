package com.tencent.mm.plugin.chatroom.a;

import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.protocal.a.cz;
import com.tencent.mm.protocal.a.da;
import com.tencent.mm.protocal.a.lo;
import com.tencent.mm.protocal.q;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.Iterator;
import java.util.LinkedList;

public final class b extends x
  implements ab
{
  private LinkedList cWf;
  private m cjh;
  private final a cke;

  public b(LinkedList paramLinkedList)
  {
    this.cWf = paramLinkedList;
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new cz());
    localb.b(new da());
    localb.es("/cgi-bin/micromsg-bin/collectchatroom");
    localb.cN(181);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    cz localcz = (cz)this.cke.wr();
    localcz.fEc = paramLinkedList;
    localcz.fEb = paramLinkedList.size();
  }

  public final int a(com.tencent.mm.network.r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneCollectChatRoom", "netId : " + paramInt1 + " errType :" + paramInt2 + " errCode: " + paramInt3 + " errMsg :" + paramString);
    ((a)paramaj).ws();
    if (paramaj.wv().xm() != 0)
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if (this.cWf != null)
    {
      Iterator localIterator = this.cWf.iterator();
      while (localIterator.hasNext())
      {
        lo locallo = (lo)localIterator.next();
        aa.d("MicroMsg.NetSceneCollectChatRoom", "del groupcard Name :" + locallo.fMV);
        com.tencent.mm.model.r.cd(locallo.fMV);
      }
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 181;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.a.b
 * JD-Core Version:    0.6.2
 */