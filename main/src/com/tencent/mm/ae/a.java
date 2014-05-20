package com.tencent.mm.ae;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.ea;
import com.tencent.mm.protocal.a.eb;
import com.tencent.mm.sdk.platformtools.aa;

public final class a extends x
  implements ab
{
  private m cjh;
  private final com.tencent.mm.n.a cke;

  public a(String paramString)
  {
    b localb = new b();
    localb.a(new ea());
    localb.b(new eb());
    localb.es("/cgi-bin/micromsg-bin/deletecardimg");
    localb.cN(576);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    ((ea)this.cke.wr()).fEQ = paramString;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt2);
    arrayOfObject[1] = Integer.valueOf(paramInt3);
    aa.e("MicroMsg.NetSceneDeleteCardImg", "onGYNetEnd:%s, %s", arrayOfObject);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 576;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ae.a
 * JD-Core Version:    0.6.2
 */