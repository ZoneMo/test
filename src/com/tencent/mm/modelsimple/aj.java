package com.tencent.mm.modelsimple;

import com.tencent.mm.m.af;
import com.tencent.mm.m.y;
import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.r;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.a.sh;
import com.tencent.mm.protocal.a.si;
import com.tencent.mm.protocal.a.sj;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Iterator;
import java.util.LinkedList;

public final class aj extends com.tencent.mm.n.x
  implements ab
{
  private m cjh;
  private final a cke;

  public aj(String paramString)
  {
    b localb = new b();
    localb.a(new si());
    localb.b(new sj());
    localb.es("/cgi-bin/micromsg-bin/searchcontact");
    localb.cN(106);
    localb.cO(34);
    localb.cP(1000000034);
    this.cke = localb.wx();
    aa.e("MicroMsg.NetSceneSearchContact", "search username [%s]", new Object[] { paramString });
    ((si)this.cke.wr()).fEI = new rw().sn(paramString);
  }

  public final sj CB()
  {
    return (sj)this.cke.ws();
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, com.tencent.mm.network.aj paramaj, byte[] paramArrayOfByte)
  {
    sj localsj = (sj)this.cke.ws();
    Iterator localIterator;
    if ((localsj != null) && (localsj.fKH > 0))
      localIterator = localsj.fKI.iterator();
    while (localIterator.hasNext())
    {
      sh localsh = (sh)localIterator.next();
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = localsh.fEI;
      aa.e("MicroMsg.NetSceneSearchContact", "search RES username [%s]", arrayOfObject2);
      com.tencent.mm.m.x localx2 = new com.tencent.mm.m.x();
      localx2.setUsername(an.a(localsh.fEI));
      localx2.eo(localsh.fDg);
      localx2.ep(localsh.fDh);
      localx2.cL(-1);
      Object[] arrayOfObject3 = new Object[3];
      arrayOfObject3[0] = localx2.getUsername();
      arrayOfObject3[1] = localx2.vV();
      arrayOfObject3[2] = localx2.vW();
      aa.e("MicroMsg.NetSceneSearchContact", "dkhurl search %s b[%s] s[%s]", arrayOfObject3);
      localx2.bU(3);
      localx2.Q(true);
      af.wm().a(localx2);
      continue;
      if ((localsj != null) && (!cj.hX(an.a(localsj.fEI))))
      {
        String str = an.a(localsj.fEI);
        com.tencent.mm.m.x localx1 = new com.tencent.mm.m.x();
        localx1.setUsername(str);
        localx1.eo(localsj.fDg);
        localx1.ep(localsj.fDh);
        localx1.cL(-1);
        Object[] arrayOfObject1 = new Object[3];
        arrayOfObject1[0] = localx1.getUsername();
        arrayOfObject1[1] = localx1.vV();
        arrayOfObject1[2] = localx1.vW();
        aa.e("MicroMsg.NetSceneSearchContact", "dkhurl search %s b[%s] s[%s]", arrayOfObject1);
        localx1.bU(3);
        localx1.Q(true);
        af.wm().a(localx1);
      }
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 106;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.aj
 * JD-Core Version:    0.6.2
 */