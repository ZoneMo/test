package com.tencent.mm.modelsimple;

import com.tencent.mm.model.be;
import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.lf;
import com.tencent.mm.protocal.a.lg;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;

public final class ab extends x
  implements com.tencent.mm.network.ab
{
  private m cjh;
  private final a cke;
  private String cxt;

  public ab(String paramString1, String paramString2)
  {
    this.cxt = paramString1;
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new lf());
    localb.b(new lg());
    localb.es("/cgi-bin/micromsg-bin/getwburl");
    localb.cN(205);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    lf locallf = (lf)this.cke.wr();
    locallf.eBo = paramString2;
    String str1 = cj.hW((String)be.uz().sr().get(46));
    locallf.fCj = new rv().bM(cj.ib(str1));
    String str2 = cj.hW((String)be.uz().sr().get(72));
    locallf.fJQ = new rv().bM(cj.ib(str2));
    aa.d("MicroMsg.NetSceneGetWeiboURL", "dkwt get weibo url with id=" + paramString1 + ", a2=" + str1 + " , newa2:" + str2);
  }

  public final String Cu()
  {
    return this.cxt;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt2);
    arrayOfObject[1] = Integer.valueOf(paramInt3);
    arrayOfObject[2] = getURL();
    aa.e("MicroMsg.NetSceneGetWeiboURL", "dkwt onGYNetEnd:[%d,%d] get weibo url result:[%s] ", arrayOfObject);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 205;
  }

  public final String getURL()
  {
    return ((lg)this.cke.ws()).URL;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.ab
 * JD-Core Version:    0.6.2
 */