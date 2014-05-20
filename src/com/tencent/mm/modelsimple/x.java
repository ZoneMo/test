package com.tencent.mm.modelsimple;

import com.tencent.mm.model.be;
import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.bw;
import com.tencent.mm.protocal.a.hh;
import com.tencent.mm.protocal.a.hk;
import com.tencent.mm.protocal.a.hl;
import com.tencent.mm.protocal.a.lz;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

public final class x extends com.tencent.mm.n.x
  implements ab
{
  private m cjh;
  private final a cke;

  private x()
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new hk());
    localb.b(new hl());
    localb.es("/cgi-bin/micromsg-bin/geta8key");
    localb.cN(233);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    hk localhk = (hk)this.cke.wr();
    String str1 = cj.hW((String)be.uz().sr().get(46));
    localhk.fCj = new rv().bM(cj.ib(str1));
    String str2 = cj.hW((String)be.uz().sr().get(72));
    localhk.fJQ = new rv().bM(cj.ib(str2));
    aa.d("MicroMsg.NetSceneGetA8Key", "dkwt get a2=" + str1 + " newa2=" + str2);
  }

  public x(int paramInt)
  {
    this();
    hk localhk = (hk)this.cke.wr();
    localhk.fBj = 3;
    localhk.fyJ = 5;
    localhk.fJO = paramInt;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = Integer.valueOf(localhk.fCj.ayg());
    aa.e("MicroMsg.NetSceneGetA8Key", "dkwt geta8key friendQQNum:%d  a2key-len:%d", arrayOfObject);
  }

  public x(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    this();
    hk localhk = (hk)this.cke.wr();
    localhk.fBj = 2;
    localhk.fJM = new rw().sn(paramString1);
    localhk.fyJ = paramInt1;
    localhk.eBo = paramString2;
    localhk.fJR = paramInt2;
    aa.d("MicroMsg.NetSceneGetA8Key", "get a8key reqUrl = " + paramString1 + ", username = " + paramString2 + ", scene = " + paramInt1 + ", reason = " + paramInt2);
  }

  public x(String paramString1, String paramString2, String paramString3)
  {
    this();
    hk localhk = (hk)this.cke.wr();
    localhk.fBj = 1;
    localhk.fJJ = new rw().sn(paramString1);
    localhk.fJK = new rw().sn(paramString2);
    localhk.fJL = new rw().sn(paramString3);
    aa.d("MicroMsg.NetSceneGetA8Key", "get a8key appid=" + paramString1);
  }

  public final int Ck()
  {
    return ((hk)this.cke.wr()).fJR;
  }

  public final String Cl()
  {
    return ((hl)this.cke.ws()).fJS;
  }

  public final String Cm()
  {
    rw localrw = ((hk)this.cke.wr()).fJM;
    if (localrw != null)
      return localrw.getString();
    return null;
  }

  public final int Cn()
  {
    return ((hl)this.cke.ws()).fJU;
  }

  public final lz Co()
  {
    return ((hl)this.cke.ws()).fJV;
  }

  public final hh Cp()
  {
    return ((hl)this.cke.ws()).fJW;
  }

  public final String Cq()
  {
    return ((hl)this.cke.ws()).fJX;
  }

  public final ArrayList Cr()
  {
    hl localhl = (hl)this.cke.ws();
    ArrayList localArrayList = new ArrayList();
    if ((localhl == null) || (localhl.fJZ == null))
      return localArrayList;
    Iterator localIterator = localhl.fJZ.iterator();
    while (localIterator.hasNext())
    {
      bw localbw = (bw)localIterator.next();
      try
      {
        localArrayList.add(localbw.toByteArray());
      }
      catch (IOException localIOException)
      {
      }
    }
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(localArrayList.size());
    aa.e("MicroMsg.NetSceneGetA8Key", "ScopeList size = %s", arrayOfObject);
    return localArrayList;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(paramInt2);
    arrayOfObject[1] = Integer.valueOf(paramInt3);
    arrayOfObject[2] = Cl();
    arrayOfObject[3] = ((hl)this.cke.ws()).fJT;
    aa.e("MicroMsg.NetSceneGetA8Key", "dkwt geta8key onGYNetEnd:[%d,%d] url:[%s]  a8key:[%s]", arrayOfObject);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final String getContent()
  {
    return ((hl)this.cke.ws()).dGS;
  }

  public final String getTitle()
  {
    return ((hl)this.cke.ws()).bMa;
  }

  public final int getType()
  {
    return 233;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.x
 * JD-Core Version:    0.6.2
 */