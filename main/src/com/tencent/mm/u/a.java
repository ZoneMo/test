package com.tencent.mm.u;

import com.tencent.mm.model.ar;
import com.tencent.mm.model.av;
import com.tencent.mm.model.be;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.la;
import com.tencent.mm.protocal.a.lb;
import com.tencent.mm.protocal.a.yw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import java.io.FileOutputStream;
import java.util.LinkedList;

public final class a extends x
  implements ab
{
  private m cjh;
  private final com.tencent.mm.n.a cke;
  private ay ckr = new ay(new b(this), true);
  private int csA = 0;

  public a()
  {
    int i = cj.c((Integer)be.uz().sr().get(66052));
    boolean bool = ar.ub().cr(i);
    int j = 0;
    if (bool)
      j = cj.c((Integer)be.uz().sr().get(66053));
    aa.d("MicroMsg.NetSceneGetVUserInfo", "init: allfileid:" + Integer.toBinaryString(i) + " inver:" + cj.c((Integer)be.uz().sr().get(66053)) + " reqver:" + j);
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new la());
    localb.b(new lb());
    localb.es("/cgi-bin/micromsg-bin/getvuserinfo");
    localb.cN(167);
    localb.cO(60);
    localb.cP(1000000060);
    this.cke = localb.wx();
    ((la)this.cke.wr()).fFT = j;
  }

  private static boolean a(int paramInt, boolean paramBoolean, byte[] paramArrayOfByte)
  {
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(ar.ub().f(paramInt, paramBoolean));
      localFileOutputStream.write(paramArrayOfByte);
      localFileOutputStream.close();
      return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    int i = 0;
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      aa.e("MicroMsg.NetSceneGetVUserInfo", "errType:" + paramInt2 + " errCode:" + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    lb locallb = (lb)((com.tencent.mm.n.a)paramaj).ws();
    aa.d("MicroMsg.NetSceneGetVUserInfo", "onGYNetEnd new version:" + locallb.fFT + " old version:" + cj.c((Integer)be.uz().sr().get(66053)) + " Count:" + locallb.fMK.size());
    be.uz().sr().set(66053, Integer.valueOf(locallb.fFT));
    if (locallb.fMK.size() <= 0)
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    int j = 0;
    while (i < locallb.fMK.size())
    {
      j |= ((yw)locallb.fMK.get(i)).fZj;
      i++;
    }
    be.uz().sr().set(66052, Integer.valueOf(j));
    this.cjh.a(paramInt2, paramInt3, paramString, this);
    this.csA = (-1 + locallb.fMK.size());
    this.ckr.bO(50L);
  }

  public final int getType()
  {
    return 167;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.u.a
 * JD-Core Version:    0.6.2
 */