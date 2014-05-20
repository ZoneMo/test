package com.tencent.mm.modelfriend;

import android.content.Context;
import com.tencent.mm.c.a.hm;
import com.tencent.mm.c.a.ho;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.bq;
import com.tencent.mm.protocal.a.br;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;

public final class ai extends x
  implements ab
{
  private String bNV;
  private String bNX;
  private m cjh = null;
  private final com.tencent.mm.n.a cke;

  public ai(String paramString1, int paramInt1, String paramString2, int paramInt2, String paramString3)
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new bq());
    localb.b(new br());
    localb.es("/cgi-bin/micromsg-bin/bindopmobile");
    localb.cN(132);
    localb.cO(45);
    localb.cP(1000000045);
    this.cke = localb.wx();
    bq localbq = (bq)this.cke.wr();
    localbq.fBl = paramInt1;
    localbq.fBy = paramInt2;
    localbq.fBz = paramString3;
    if ((cj.hX(this.bNV)) && (cj.hX(this.bNX)))
    {
      localbq.fBC = al.getContext().getString(n.bwC);
      localbq.fBD = com.tencent.mm.protocal.a.fxq;
    }
    if ((paramString1 != null) && (paramString1.length() > 0) && ((paramInt1 == 1) || (paramInt1 == 4) || (paramInt1 == 18)))
      be.uz().sr().set(4097, paramString1);
    while (true)
    {
      aa.d("MicroMsg.NetSceneBindOpMobile", "Get mobile:" + paramString1 + " opcode:" + paramInt1 + " verifyCode:" + paramString2);
      localbq.fBw = paramString1;
      localbq.fBx = paramString2;
      return;
      if ((paramInt1 == 2) || (paramInt1 == 19))
        paramString1 = (String)be.uz().sr().get(4097);
      else if (paramInt1 == 3)
        paramString1 = (String)be.uz().sr().get(6);
    }
  }

  public ai(String paramString1, int paramInt, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this(paramString1, paramInt, paramString2, 0, paramString3);
    this.bNV = paramString4;
    this.bNX = paramString5;
    bq localbq = (bq)this.cke.wr();
    localbq.fBC = paramString4;
    localbq.fBD = paramString5;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    bq localbq = (bq)this.cke.wr();
    if ((localbq.fBw == null) || (localbq.fBw.length() <= 0))
    {
      aa.e("MicroMsg.NetSceneBindOpMobile", "doScene getMobile Error: " + localbq.fBw);
      return -1;
    }
    if (((localbq.fBl == 2) || (localbq.fBl == 19)) && ((localbq.fBx == null) || (localbq.fBx.length() <= 0)))
    {
      aa.e("MicroMsg.NetSceneBindOpMobile", "doScene getVerifyCode Error: " + localbq.fBw);
      return -1;
    }
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      aa.e("MicroMsg.NetSceneBindOpMobile", "onGYNetEnd  errType:" + paramInt2 + " errCode:" + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    bq localbq = (bq)this.cke.wr();
    br localbr = (br)this.cke.ws();
    aa.d("MicroMsg.NetSceneBindOpMobile", "onGYNetEnd  errType:" + paramInt2 + " errCode:" + paramInt3 + " sms:" + localbr.fBJ + "safedevice status = " + localbr.fBQ);
    if ((localbq.fBl == 2) || (localbq.fBl == 4) || (localbq.fBl == 11) || (localbq.fBl == 19))
    {
      be.uz().sr().set(4097, "");
      be.uz().sr().set(6, localbq.fBw);
      if ((cj.hX(this.bNV)) || (cj.hX(this.bNX)))
        z.zm();
      if ((!cj.hX(this.bNV)) && (!cj.hX(this.bNX)))
      {
        hm localhm = new hm();
        localhm.bRg.bRh = localbr;
        com.tencent.mm.sdk.b.a.ayH().f(localhm);
        be.uz().sr().set(64, Integer.valueOf(localbr.fBQ));
        ho localho1 = new ho();
        localho1.bRi.bRj = true;
        localho1.bRi.bRk = true;
        com.tencent.mm.sdk.b.a.ayH().f(localho1);
      }
      aa.d("MicroMsg.NetSceneBindOpMobile", "onGYNetEnd  mobile binded");
    }
    while (true)
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
      if (localbq.fBl == 3)
      {
        be.uz().sr().set(4097, "");
        be.uz().sr().set(6, "");
        be.uz().sr().set(64, Integer.valueOf(localbr.fBQ));
        ho localho2 = new ho();
        localho2.bRi.bRj = false;
        localho2.bRi.bRk = true;
        com.tencent.mm.sdk.b.a.ayH().f(localho2);
        z.zv();
        z.zw();
        aa.d("MicroMsg.NetSceneBindOpMobile", "onGYNetEnd  mobile unbinded");
      }
    }
  }

  public final int getType()
  {
    return 132;
  }

  public final int vI()
  {
    return ((bq)this.cke.wr()).fBl;
  }

  public final String xn()
  {
    return ((br)this.cke.ws()).fBA;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.ai
 * JD-Core Version:    0.6.2
 */