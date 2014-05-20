package com.tencent.mm.plugin.chatroom.a;

import com.tencent.mm.m.af;
import com.tencent.mm.m.y;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.a;
import com.tencent.mm.n.d;
import com.tencent.mm.n.m;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.dj;
import com.tencent.mm.protocal.a.dk;
import com.tencent.mm.protocal.a.no;
import com.tencent.mm.protocal.a.np;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class c extends com.tencent.mm.n.x
  implements ab
{
  private final List cWb;
  private final List cWc;
  private final List cWd;
  private List cWe;
  private String cWg;
  private int cWh = 0;
  private m cjh;
  private final a cke;

  public c(String paramString, List paramList)
  {
    aa.d("MicroMsg.NetSceneCreateChatRoom", "topic : " + paramString + " size : " + paramList.size() + " username : " + (String)paramList.get(0));
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new dj());
    localb.b(new dk());
    localb.es("/cgi-bin/micromsg-bin/createchatroom");
    localb.cN(119);
    localb.cO(37);
    localb.cP(1000000037);
    this.cke = localb.wx();
    dj localdj = (dj)this.cke.wr();
    localdj.fEF = an.hQ(paramString);
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      no localno = new no();
      localno.fEL = an.hQ(str);
      localLinkedList.add(localno);
    }
    localdj.fzd = localLinkedList;
    localdj.fzc = localLinkedList.size();
    this.cWb = new LinkedList();
    this.cWc = new LinkedList();
    this.cWd = new LinkedList();
    this.cWe = new LinkedList();
    this.cWg = "";
  }

  private int a(dk paramdk, List paramList)
  {
    LinkedList localLinkedList = new LinkedList();
    int i = 0;
    int j = 0;
    if (i < paramList.size())
    {
      int n = ((np)paramList.get(i)).fON;
      if (n != 0)
      {
        if (n != 3)
          break label123;
        aa.d("MicroMsg.NetSceneCreateChatRoom", " blacklist : " + ((np)paramList.get(i)).fEL);
        this.cWc.add(an.a(((np)paramList.get(i)).fEL));
        j = -22;
      }
      while (true)
      {
        i++;
        break;
        label123: if (n == 1)
        {
          aa.d("MicroMsg.NetSceneCreateChatRoom", " not user : " + ((np)paramList.get(i)).fEL);
          this.cWd.add(an.a(((np)paramList.get(i)).fEL));
          j = -21;
        }
        else if (n == 2)
        {
          aa.d("MicroMsg.NetSceneCreateChatRoom", " invalid username : " + ((np)paramList.get(i)).fEL);
          j = -14;
          this.cWb.add(an.a(((np)paramList.get(i)).fEL));
        }
        else if (n == 4)
        {
          aa.d("MicroMsg.NetSceneCreateChatRoom", " verify user : " + ((np)paramList.get(i)).fEL);
          this.cWe.add(an.a(((np)paramList.get(i)).fEL));
          localLinkedList.add(paramList.get(i));
        }
        else
        {
          aa.w("MicroMsg.NetSceneCreateChatRoom", "unknown member status : status = " + n);
        }
      }
    }
    int k = paramdk.fzc;
    Iterator localIterator = localLinkedList.iterator();
    if (localIterator.hasNext())
      if (!paramList.remove((np)localIterator.next()))
        break label446;
    label446: for (int m = k - 1; ; m = k)
    {
      k = m;
      break;
      paramdk.fzc = k;
      return j;
    }
  }

  private static boolean a(dk paramdk)
  {
    if ((!an.a(paramdk.fze).toLowerCase().endsWith("@chatroom")) || (paramdk.fzc == 0))
    {
      aa.e("MicroMsg.NetSceneCreateChatRoom", "CreateChatroom: room:[" + paramdk.fze + "] listCnt:" + paramdk.fzc);
      return false;
    }
    i locali1 = new i();
    locali1.bt(an.a(paramdk.fEF));
    locali1.bv(an.a(paramdk.fEG));
    locali1.bw(an.a(paramdk.fEH));
    locali1.setUsername(an.a(paramdk.fze));
    k localk = be.uz().su();
    if (!localk.tP(locali1.getUsername()))
      localk.B(locali1);
    com.tencent.mm.m.x localx = new com.tencent.mm.m.x();
    localx.setUsername(locali1.getUsername());
    localx.eo(paramdk.fDg);
    localx.ep(paramdk.fDh);
    localx.bU(3);
    localx.Q(false);
    localx.cL(-1);
    af.wm().a(localx);
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i < paramdk.fzd.size())
    {
      i locali2 = localk.tO(an.a(((np)paramdk.fzd.get(i)).fEL));
      i locali3;
      if (locali2.rj() != 0)
      {
        locali2.qH();
        localk.a(locali2.getUsername(), locali2);
        locali3 = locali2;
      }
      while (true)
      {
        localArrayList.add(locali3.getUsername());
        i++;
        break;
        locali3 = com.tencent.mm.model.r.a(locali2, (np)paramdk.fzd.get(i));
        localk.B(locali3);
      }
    }
    if (!localArrayList.contains(v.th()))
    {
      localArrayList.add(v.th());
      aa.d("MicroMsg.NetSceneCreateChatRoom", "respon has not self add one " + localArrayList.contains(v.th()));
    }
    return com.tencent.mm.model.r.a(locali1.getUsername(), localArrayList, v.th());
  }

  public final List Kg()
  {
    return this.cWb;
  }

  public final List Kh()
  {
    return this.cWc;
  }

  public final List Kj()
  {
    return this.cWe;
  }

  public final int Kk()
  {
    return this.cWh;
  }

  public final String Kl()
  {
    return this.cWg;
  }

  public final int a(com.tencent.mm.network.r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneCreateChatRoom", "netId : " + paramInt1 + " errType :" + paramInt2 + " errCode: " + paramInt3 + " errMsg :" + paramString);
    dk localdk = (dk)this.cke.ws();
    this.cWg = an.a(localdk.fze);
    if (this.cke.wt().xm() != 0)
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    this.cWh = localdk.fzc;
    int i = a(localdk, localdk.fzd);
    if (i != 0)
    {
      this.cjh.a(paramInt2, i, paramString, this);
      return;
    }
    if (localdk.fzc == 0)
      if (this.cWe.size() != this.cWh)
        break label213;
    label213: for (int j = -44; ; j = i)
    {
      this.cjh.a(paramInt2, j, paramString, this);
      return;
      a(localdk);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
  }

  public final int getType()
  {
    return 119;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.a.c
 * JD-Core Version:    0.6.2
 */