package com.tencent.mm.plugin.chatroom.a;

import com.tencent.mm.n.b;
import com.tencent.mm.n.d;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.f;
import com.tencent.mm.protocal.a.g;
import com.tencent.mm.protocal.a.no;
import com.tencent.mm.protocal.a.np;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class a extends x
  implements ab
{
  private final List cWb;
  private final List cWc;
  private final List cWd;
  private final List cWe;
  private m cjh = null;
  private final com.tencent.mm.n.a cke;

  public a(String paramString, List paramList)
  {
    b localb = new b();
    localb.a(new f());
    localb.b(new g());
    localb.es("/cgi-bin/micromsg-bin/addchatroommember");
    localb.cN(120);
    localb.cO(36);
    localb.cP(1000000036);
    this.cke = localb.wx();
    f localf = (f)this.cke.wr();
    localf.fze = an.hQ(paramString);
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      no localno = new no();
      localno.fEL = an.hQ(str);
      localLinkedList.add(localno);
    }
    localf.fzd = localLinkedList;
    localf.fzc = localLinkedList.size();
    this.cWb = new LinkedList();
    this.cWc = new LinkedList();
    this.cWd = new LinkedList();
    this.cWe = new LinkedList();
  }

  public final List Kg()
  {
    return this.cWb;
  }

  public final List Kh()
  {
    return this.cWc;
  }

  public final List Ki()
  {
    return this.cWd;
  }

  public final List Kj()
  {
    return this.cWe;
  }

  public final int a(com.tencent.mm.network.r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    f localf = (f)this.cke.wr();
    g localg = (g)this.cke.ws();
    if (this.cke.wt().xm() != 0)
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    LinkedList localLinkedList = localg.fzd;
    int i = 0;
    int j = 0;
    if (i < localLinkedList.size())
    {
      int k = ((np)localLinkedList.get(i)).fON;
      if (k != 0)
      {
        if (k != 3)
          break label178;
        aa.d("MicroMsg.NetSceneAddChatRoomMember", " blacklist : " + ((np)localLinkedList.get(i)).fEL);
        this.cWc.add(an.a(((np)localLinkedList.get(i)).fEL));
        j = -22;
      }
      while (true)
      {
        i++;
        break;
        label178: if (k == 1)
        {
          aa.d("MicroMsg.NetSceneAddChatRoomMember", " not user : " + ((np)localLinkedList.get(i)).fEL);
          this.cWd.add(an.a(((np)localLinkedList.get(i)).fEL));
          j = -4;
        }
        else if (k == 2)
        {
          aa.d("MicroMsg.NetSceneAddChatRoomMember", " invalid username : " + ((np)localLinkedList.get(i)).fEL);
          j = -14;
          this.cWb.add(an.a(((np)localLinkedList.get(i)).fEL));
        }
        else if (k == 4)
        {
          aa.d("MicroMsg.NetSceneAddChatRoomMember", " verify user : " + ((np)localLinkedList.get(i)).fEL);
          j = -44;
          this.cWe.add(an.a(((np)localLinkedList.get(i)).fEL));
        }
        else
        {
          aa.w("MicroMsg.NetSceneAddChatRoomMember", "unknown member status : status = " + k);
        }
      }
    }
    if (j != 0)
    {
      this.cjh.a(paramInt2, j, paramString, this);
      return;
    }
    com.tencent.mm.model.r.a(an.a(localf.fze), localg);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 120;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.a.a
 * JD-Core Version:    0.6.2
 */