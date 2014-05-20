package com.tencent.mm.plugin.chatroom.a;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.dn;
import com.tencent.mm.protocal.a.do;
import com.tencent.mm.protocal.a.dt;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class d extends x
  implements ab
{
  private m cjh;
  private a cke;

  public d(String paramString, List paramList)
  {
    b localb = new b();
    localb.a(new dn());
    localb.b(new do());
    localb.es("/cgi-bin/micromsg-bin/delchatroommember");
    localb.cN(179);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    dn localdn = (dn)this.cke.wr();
    localdn.fEJ = paramString;
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      dt localdt = new dt();
      localdt.fEL = an.hQ(str);
      localLinkedList.add(localdt);
    }
    localdn.fzd = localLinkedList;
    localdn.fzc = localLinkedList.size();
  }

  public final int a(com.tencent.mm.network.r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneDelChatRoomMember", "netId : " + paramInt1 + " errType :" + paramInt2 + " errCode: " + paramInt3 + " errMsg :" + paramString);
    dn localdn = (dn)this.cke.wr();
    do localdo = (do)this.cke.ws();
    if (this.cke.wt().xm() != 0)
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    com.tencent.mm.model.r.a(localdn.fEJ, localdo);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 179;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.a.d
 * JD-Core Version:    0.6.2
 */