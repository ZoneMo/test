package com.tencent.mm.o;

import com.tencent.mm.a.j;
import com.tencent.mm.c.a.hm;
import com.tencent.mm.c.a.ho;
import com.tencent.mm.m.c;
import com.tencent.mm.model.be;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.bs;
import com.tencent.mm.protocal.a.bt;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.d;
import com.tencent.mm.storage.e;

public final class a extends x
  implements ab
{
  private String bNV;
  private String bNX;
  private m cjh;
  private final com.tencent.mm.n.a cke;

  public a(long paramLong, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt)
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new bs());
    localb.b(new bt());
    localb.es("/cgi-bin/micromsg-bin/bindqq");
    localb.cN(144);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    bs localbs = (bs)this.cke.wr();
    localbs.fBX = new j(paramLong).intValue();
    localbs.fBL = cj.hZ(paramString1);
    localbs.fBY = cj.ia(paramString1);
    localbs.fBZ = paramString2;
    localbs.fCa = paramString3;
    localbs.fCb = paramInt;
    localbs.fCc = new rw().sn(paramString4);
    String str = cj.hW((String)be.uz().sr().get(47));
    localbs.fCd = new rv().bM(cj.ib(str));
    aa.d("MicroMsg.NetSceneBindQQ", " init opcode:" + paramInt + " uin:" + paramLong + " imgSid:" + paramString2 + " imgCode:" + paramString3 + " encryptKey:" + paramString4 + " ksid:" + str);
  }

  public a(long paramLong, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    this(paramLong, paramString1, paramString2, paramString3, paramString4, 1);
    this.bNV = paramString5;
    this.bNX = paramString6;
    bs localbs = (bs)this.cke.wr();
    localbs.fBC = paramString5;
    localbs.fBD = paramString6;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneBindQQ", "onGYNetEnd errType:" + paramInt2 + " errCode:" + paramInt3);
    aa.d("MicroMsg.NetSceneBindQQ", "onGYNetEnd imgsid:" + ((bt)this.cke.ws()).fBZ);
    bs localbs = (bs)this.cke.wr();
    bt localbt = (bt)this.cke.ws();
    boolean bool;
    if ((paramInt2 == 0) && (paramInt3 == 0))
    {
      be.uz().sr().set(9, Integer.valueOf(localbs.fBX));
      if (localbs.fCb == 1)
        be.uz().sr().set(17, Integer.valueOf(localbt.fCf));
      cc localcc = be.uz().sz();
      String str1 = localbt.fCh;
      if (localbt.fCg == 1)
      {
        bool = true;
        localcc.M(str1, bool);
        int i = localbs.fBX;
        if (i != 0)
          be.uz().sz().an(new j(i) + "@qqim", 3);
        c.c(i, 3);
        be.uz().sr().set(32, localbs.fBL);
        be.uz().sr().set(33, localbs.fBY);
        be.uz().sr().set(46, cj.cp(an.a(localbt.fCj)));
        String str2 = cj.cp(an.a(localbs.fCd));
        be.uz().sr().set(47, str2);
        be.us().set(18, str2);
        be.uz().sr().set(-1535680990, localbt.fCi);
        if ((!cj.hX(this.bNV)) && (!cj.hX(this.bNX)))
        {
          be.uz().sr().set(64, Integer.valueOf(localbt.fBQ));
          hm localhm = new hm();
          localhm.bRg.bRh = localbt;
          com.tencent.mm.sdk.b.a.ayH().f(localhm);
          ho localho = new ho();
          localho.bRi.bRj = true;
          localho.bRi.bRk = true;
          com.tencent.mm.sdk.b.a.ayH().f(localho);
        }
      }
    }
    while (true)
    {
      if ((localbs.fCb == 3) && (paramInt3 == -3))
      {
        paramInt3 = 10000;
        aa.d("MicroMsg.NetSceneBindQQ", "onGYNetEnd : retCode = 10000");
      }
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
      bool = false;
      break;
      if (paramInt2 == 4)
      {
        be.uz().sr().set(32, "");
        be.uz().sr().set(33, "");
      }
    }
  }

  public final int getType()
  {
    return 144;
  }

  public final byte[] xs()
  {
    return an.a(((bt)this.cke.ws()).fzx);
  }

  public final String xt()
  {
    return ((bt)this.cke.ws()).fBZ;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.o.a
 * JD-Core Version:    0.6.2
 */