package com.tencent.mm.modelsimple;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.n.z;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.qg;
import com.tencent.mm.protocal.a.sf;
import com.tencent.mm.protocal.a.sg;
import com.tencent.mm.sdk.platformtools.u;
import java.util.Map;

public final class ag extends x
  implements ab
{
  public int bLI;
  public int bLJ;
  public long bMS = -1L;
  private m cjh;
  public a cke;
  private final long cxJ = 60000L;
  private Runnable cxK;

  public ag(float paramFloat1, float paramFloat2, long paramLong)
  {
    qg localqg = new qg();
    localqg.fNx = paramFloat1;
    localqg.fNy = paramFloat2;
    localqg.fNC = 1;
    localqg.fNz = 0;
    a(localqg, 1, -10000.0F, -10000.0F);
    this.bMS = paramLong;
  }

  public ag(qg paramqg, float paramFloat1, float paramFloat2)
  {
    a(paramqg, 0, paramFloat1, paramFloat2);
  }

  public ag(sf paramsf)
  {
    b localb = new b();
    localb.a(paramsf);
    localb.b(new sg());
    localb.es("/cgi-bin/micromsg-bin/scanstreetview");
    localb.cN(424);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
  }

  private void a(qg paramqg, int paramInt, float paramFloat1, float paramFloat2)
  {
    b localb = new b();
    localb.a(new sf());
    localb.b(new sg());
    localb.es("/cgi-bin/micromsg-bin/scanstreetview");
    localb.cN(424);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    sf localsf = (sf)this.cke.wr();
    localsf.fUj = paramqg;
    localsf.fyJ = paramInt;
    localsf.fUk = paramFloat1;
    localsf.fUl = paramFloat2;
  }

  public static String gs(String paramString)
  {
    Map localMap = u.aL(paramString, "streetview");
    if (localMap == null)
      return null;
    return (String)localMap.get(".streetview.link");
  }

  public final sg CA()
  {
    if ((this.cke != null) && (this.cke.ws() != null))
      return (sg)this.cke.ws();
    return null;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    if (((sf)((a)paramaj).wr()).fUj == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneScanStreetView", "req.rImpl.UserPos == null");
      return com.tencent.mm.n.aa.cmi;
    }
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneScanStreetView", "onGYNetEnd errtype:" + paramInt2 + " errcode:" + paramInt3 + " errMsg:" + paramString);
    this.bLI = paramInt2;
    this.bLJ = paramInt3;
    if (this.cjh != null)
      this.cjh.a(paramInt2, paramInt3, paramString, this);
    while (true)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = CA().fMA;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneScanStreetView", "xml is %s", arrayOfObject);
      if (this.cxK != null)
        this.cxK.run();
      return;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneScanStreetView", "callback null");
    }
  }

  protected final void a(z paramz)
  {
  }

  public final void d(Runnable paramRunnable)
  {
    this.cxK = paramRunnable;
  }

  public final int getType()
  {
    return 424;
  }

  protected final int we()
  {
    return 10;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.ag
 * JD-Core Version:    0.6.2
 */