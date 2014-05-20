package com.tencent.mm.z;

import com.tencent.mm.model.b;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.protocal.bd;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;

public final class g extends x
  implements ab
{
  private com.tencent.mm.n.m cjh;
  private final aj cmF = new h();

  public g()
  {
    if ((com.tencent.mm.model.be.uz() != null) && (com.tencent.mm.model.be.uz().sr() != null))
    {
      String str = (String)com.tencent.mm.model.be.uz().sr().get(8195);
      ((bd)this.cmF.wJ()).az(au.ib(str));
      ((bd)this.cmF.wJ()).bQ(com.tencent.mm.model.be.uz().sd());
      return;
    }
    aa.e("MicroMsg.NetSceneSynCheck", "[arthurdan.NetSceneSynCheckCrash] Notice!!! MMCore.getAccStg() is null");
  }

  public final int a(r paramr, com.tencent.mm.n.m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cmF, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.protocal.be localbe = (com.tencent.mm.protocal.be)paramaj.wv();
    aa.i("MicroMsg.NetSceneSynCheck", "new syncCheck complete, selector=" + localbe.awT());
    if ((com.tencent.mm.model.be.se()) && (!com.tencent.mm.model.be.uG()))
    {
      byte[] arrayOfByte = ((bd)paramaj.wJ()).awS();
      if (au.A(arrayOfByte))
        aa.e("MicroMsg.NetSceneSynCheck", "onGYNetEnd md5 is null");
      localbe.aA(arrayOfByte);
      m.a(localbe.awT(), 3, localbe.awU());
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 39;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.z.g
 * JD-Core Version:    0.6.2
 */