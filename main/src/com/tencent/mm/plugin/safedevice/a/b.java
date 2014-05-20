package com.tencent.mm.plugin.safedevice.a;

import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.xj;
import com.tencent.mm.protocal.a.xk;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class b extends x
  implements ab
{
  private m cjh;
  private a cke;
  private String dZU;
  private String dZV;
  private String deviceName;

  public b(String paramString1, String paramString2, String paramString3)
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new xj());
    localb.b(new xk());
    localb.es("/cgi-bin/micromsg-bin/updatesafedevice");
    localb.cN(361);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    this.dZU = paramString1;
    this.deviceName = paramString2;
    this.dZV = paramString3;
    xj localxj = (xj)this.cke.wr();
    localxj.fEM = paramString1;
    localxj.Th = paramString2;
    localxj.fQw = paramString3;
  }

  public final int a(r paramr, m paramm)
  {
    if ((cj.hX(this.dZU)) || (cj.hX(this.deviceName)) || (cj.hX(this.dZV)))
    {
      aa.e("MicroMsg.NetscenUpdateSafeDevice", "null device is or device name or device type");
      return -1;
    }
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.i("MicroMsg.NetscenUpdateSafeDevice", "errType = " + paramInt2 + ", errCode = " + paramInt3);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 361;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.a.b
 * JD-Core Version:    0.6.2
 */