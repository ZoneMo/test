package com.tencent.mm.ae;

import com.tencent.mm.a.c;
import com.tencent.mm.model.be;
import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.xq;
import com.tencent.mm.protocal.a.xr;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import java.io.File;

public final class b extends x
  implements ab
{
  private m cjh;
  private int ckU;
  private int ckV;
  private a cke;
  private String clm;
  private String cwF;
  public String cwG;
  private String username;

  private b(String paramString)
  {
    this.username = paramString;
    this.ckU = 0;
    this.ckV = 0;
    this.cwF = (be.uz().sd() + System.currentTimeMillis());
  }

  public b(String paramString1, String paramString2)
  {
    this(paramString1);
    this.clm = paramString2;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    if ((this.clm == null) || (this.clm.length() == 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadCardImg", "imgPath is null or length = 0");
      return -1;
    }
    if (!c.as(this.clm))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadCardImg", "The img does not exist, imgPath = " + this.clm);
      return -1;
    }
    if (this.ckU == 0)
      this.ckU = ((int)new File(this.clm).length());
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new xq());
    localb.b(new xr());
    localb.es("/cgi-bin/micromsg-bin/uploadcardimg");
    localb.cN(575);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    int i = Math.min(this.ckU - this.ckV, 32768);
    byte[] arrayOfByte = c.g(this.clm, this.ckV, i);
    if (arrayOfByte == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadCardImg", "readFromFile error");
      return -1;
    }
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(arrayOfByte.length);
    arrayOfObject[1] = Integer.valueOf(this.ckU);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadCardImg", "doScene uploadLen:%d, total: %d", arrayOfObject);
    xq localxq = (xq)this.cke.wr();
    localxq.fEQ = this.username;
    localxq.fAL = this.ckU;
    localxq.fEd = this.ckV;
    localxq.fAJ = new rv().bM(arrayOfByte);
    localxq.fAU = localxq.fAJ.ayg();
    localxq.fzj = this.cwF;
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    if ((this.clm == null) || (this.clm.length() == 0))
      return com.tencent.mm.n.aa.cmi;
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt2);
    arrayOfObject[1] = Integer.valueOf(paramInt3);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadCardImg", "onGYNetEnd:%s, %s", arrayOfObject);
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadCardImg", "upload card img error");
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    xr localxr = (xr)((a)paramaj).ws();
    this.cwG = localxr.fPo;
    this.ckV = localxr.fEd;
    if (this.ckV < this.ckU)
    {
      if (a(wM(), this.cjh) < 0)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadCardImg", "doScene again failed");
        this.cjh.a(3, -1, "", this);
      }
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadCardImg", "doScene again");
      return;
    }
    if (!cj.hX(this.cwG))
    {
      i locali = be.uz().su().tO(this.username);
      if ((locali != null) && (locali.rj() > 0) && (locali.rb()))
      {
        locali.bUk = this.cwG;
        be.uz().su().a(this.username, locali);
      }
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 575;
  }

  protected final int we()
  {
    return 100;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ae.b
 * JD-Core Version:    0.6.2
 */