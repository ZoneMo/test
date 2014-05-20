package com.tencent.mm.p;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.ia;
import com.tencent.mm.protocal.a.ib;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.util.Map;

public final class aa extends x
  implements ab
{
  private String bPx;
  private m cjh;
  private a cke;
  private rv col;
  private String com = "<brandlist></brandlist>";
  private String con = "";

  public aa(String paramString)
  {
    this.bPx = paramString;
    this.col = new rv();
    this.col.bM(new byte[0]);
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    b localb = new b();
    localb.a(new ia());
    localb.b(new ib());
    localb.es("/cgi-bin/micromsg-bin/getbrandlist");
    localb.cN(363);
    localb.cO(173);
    localb.cP(1000000173);
    this.cke = localb.wx();
    ia localia = (ia)this.cke.wr();
    localia.eBo = this.bPx;
    localia.fKq = this.col;
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.NetSceneGetBrandList", "GetBrandList Error. %s", new Object[] { paramString });
      this.cjh.a(paramInt2, paramInt3, paramString, this);
    }
    do
    {
      return;
      ib localib = (ib)((a)paramaj).ws();
      String str = cj.hW(localib.fKr).trim();
      if (str.startsWith("<brandlist"))
        this.com = (this.com.replaceAll("</brandlist>", "") + str.replaceFirst("<brandlist.*?>", ""));
      Map localMap = u.aL(localib.fKr, "brandlist");
      if (localMap != null);
      for (this.con = ((String)localMap.get(".brandlist.$ver")); ; this.con = "")
      {
        this.col = localib.fKq;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = this.con;
        arrayOfObject[1] = Integer.valueOf(localib.fKq.ayg());
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetBrandList", "onNetEnd, version:%s, left:%d", arrayOfObject);
        if (localib.fKq.ayg() > 0)
          break;
        this.cjh.a(paramInt2, paramInt3, paramString, this);
        return;
      }
    }
    while (a(wM(), this.cjh) >= 0);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetBrandList", "onGYNetEnd : doScene fail");
    this.cjh.a(3, -1, "", this);
  }

  public final int getType()
  {
    return 363;
  }

  public final String getUserName()
  {
    return this.bPx;
  }

  protected final int we()
  {
    return 100;
  }

  public final String yc()
  {
    return this.com;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.aa
 * JD-Core Version:    0.6.2
 */