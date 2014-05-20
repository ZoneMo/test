package com.tencent.mm.modelsimple;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.yz;
import com.tencent.mm.protocal.a.za;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class aq extends x
  implements ab
{
  private m cjh;
  private a cke;

  public aq(int paramInt, String paramString)
  {
    b localb = new b();
    localb.a(new yz());
    localb.b(new za());
    localb.es("/cgi-bin/micromsg-bin/newverifypasswd");
    localb.cN(384);
    localb.cO(182);
    localb.cP(1000000182);
    this.cke = localb.wx();
    yz localyz = (yz)this.cke.wr();
    localyz.fBj = paramInt;
    localyz.fZn = cj.hZ(paramString);
    aa.d("MicroMsg.NetSceneVerifyPswd", "md5 " + localyz.fZn + " " + localyz.fBY);
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 384;
  }

  public final String zC()
  {
    try
    {
      String str = ((za)this.cke.ws()).fFm;
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.aq
 * JD-Core Version:    0.6.2
 */