package com.tencent.mm.v;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.bm;
import com.tencent.mm.protocal.a.bn;
import com.tencent.mm.sdk.platformtools.aa;

public final class a extends x
  implements ab
{
  public static int csC = 0;
  public static int csD = 1;
  public static int csE = -85;
  private m cjh;
  private final com.tencent.mm.n.a cke;
  private int csF = -1;
  private String csG;
  private int csH = 0;

  public a(c paramc, String paramString, int paramInt)
  {
    switch (b.csI[paramc.ordinal()])
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      this.csG = paramString;
      this.csH = paramInt;
      b localb = new b();
      localb.a(new bm());
      localb.b(new bn());
      localb.es("/cgi-bin/micromsg-bin/bindgooglecontact");
      localb.cN(487);
      localb.cO(0);
      localb.cP(0);
      this.cke = localb.wx();
      return;
      this.csF = 1;
      continue;
      this.csF = 2;
    }
  }

  public final int a(r paramr, m paramm)
  {
    aa.i("MicroMsg.GoogleContact.NetSceneInviteGoogleContact", "doScene");
    this.cjh = paramm;
    bm localbm = (bm)this.cke.wr();
    localbm.fBl = this.csF;
    localbm.fBm = this.csG;
    localbm.fBn = this.csH;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = Integer.valueOf(paramInt3);
    arrayOfObject[3] = paramString;
    aa.d("MicroMsg.GoogleContact.NetSceneInviteGoogleContact", "NetId:%d, ErrType:%d, ErrCode:%d, errMsg:%s", arrayOfObject);
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 487;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.v.a
 * JD-Core Version:    0.6.2
 */