package com.tencent.mm.modelsimple;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.ow;
import com.tencent.mm.protocal.a.ox;
import com.tencent.mm.protocal.a.pa;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Set;

public final class z extends x
  implements ab
{
  private m cjh;
  private final a cke;

  public z(int paramInt)
  {
    b localb = new b();
    localb.a(new ow());
    localb.b(new ox());
    localb.es("/cgi-bin/micromsg-bin/newgetinvitefriend");
    localb.cN(135);
    localb.cO(23);
    localb.cP(1000000023);
    this.cke = localb.wx();
    ((ow)this.cke.wr()).fNb = paramInt;
  }

  public final LinkedList Cs()
  {
    return ((ox)this.cke.ws()).fJl;
  }

  public final LinkedList Ct()
  {
    return ((ox)this.cke.ws()).fzG;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    ox localox = (ox)this.cke.ws();
    aa.d("MicroMsg.NetSceneGetInviteFriend", "friend:" + localox.fJl.size() + " group:" + localox.fzG.size());
    HashSet localHashSet = new HashSet();
    LinkedList localLinkedList = new LinkedList();
    for (int i = 0; i < localox.fJk; i++)
      if (!localHashSet.contains(((pa)localox.fJl.get(i)).eBo))
      {
        localLinkedList.add(localox.fJl.get(i));
        localHashSet.add(((pa)localox.fJl.get(i)).eBo);
      }
    localox.fJl = localLinkedList;
    localox.fJk = localLinkedList.size();
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 135;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.z
 * JD-Core Version:    0.6.2
 */