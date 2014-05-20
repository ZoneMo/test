package com.tencent.mm.pluginsdk.model.app;

import android.graphics.BitmapFactory.Options;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.modelcdntran.keep_SceneResult;
import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.sn;
import com.tencent.mm.protocal.a.so;
import com.tencent.mm.protocal.a.u;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.h;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.g;

public final class an extends x
  implements ab
{
  private long bMS = 0L;
  private ak cad = null;
  private m cjh;
  private a cke;
  private keep_SceneResult fhL = null;
  private boolean fhM = false;
  private ao fhN = null;

  public an(long paramLong, boolean paramBoolean, keep_SceneResult paramkeep_SceneResult, ao paramao)
  {
    this.bMS = paramLong;
    this.fhL = paramkeep_SceneResult;
    this.fhN = paramao;
    this.fhM = paramBoolean;
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new sn());
    localb.b(new so());
    localb.es("/cgi-bin/micromsg-bin/sendappmsg");
    localb.cN(222);
    localb.cO(107);
    localb.cP(1000000107);
    this.cke = localb.wx();
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    this.cad = be.uz().sw().bU(this.bMS);
    if ((this.cad == null) || (this.cad.Bo() != this.bMS))
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Long.valueOf(this.bMS);
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.NetSceneSendAppMsgForCdn", "cdntra doscene msginfo null id:%d", arrayOfObject1);
      this.fhN.N(3, -1);
      return -1;
    }
    com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(this.cad.getContent());
    if (localb == null)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Long.valueOf(this.bMS);
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.NetSceneSendAppMsgForCdn", "cdntra doscene AppMessage.Content.parse null id:%d", arrayOfObject2);
      this.fhN.N(3, -1);
    }
    sn localsn = (sn)this.cke.wr();
    u localu = new u();
    localu.fyE = localb.appId;
    localu.fzT = (this.cad.aCl() + this.cad.Bo() + "T" + this.cad.DL());
    localu.fzy = ((int)cj.FC());
    localu.fzq = this.cad.aCl();
    localu.fzp = v.th();
    localu.dGR = localb.type;
    localu.fzS = localb.sdkVer;
    localu.fzV = localb.cgG;
    int j;
    int i;
    if (!cj.hX(this.cad.ot()))
    {
      BitmapFactory.Options localOptions = h.ss(ag.Ba().fW(this.cad.ot()));
      if (localOptions != null)
      {
        j = localOptions.outWidth;
        i = localOptions.outHeight;
      }
    }
    while (true)
    {
      boolean bool = this.fhM;
      String str = null;
      if (bool)
        str = "@cdn_" + this.fhL.field_fileId + "_" + this.fhL.field_aesKey + "_1";
      localu.dGS = com.tencent.mm.j.b.a(localb, str, this.fhL, j, i);
      localsn.fUr = localu;
      return a(paramr, this.cke, this);
      i = 0;
      j = 0;
    }
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt2);
    arrayOfObject[1] = Integer.valueOf(paramInt3);
    arrayOfObject[2] = Long.valueOf(this.bMS);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSendAppMsgForCdn", "cdntra onGYNetEnd [%d,%d] msgId:%d", arrayOfObject);
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      this.cad.cL(8);
      this.cad.setStatus(5);
      be.uz().sw().a(this.cad.Bo(), this.cad);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSendAppMsgForCdn", "send app msg failed, err=" + paramInt2 + "," + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      this.fhN.N(paramInt2, paramInt3);
      return;
    }
    so localso = (so)((a)paramaj).ws();
    this.cad.setStatus(2);
    this.cad.dA(localso.fzo);
    be.uz().sw().a(this.cad.Bo(), this.cad);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
    this.fhN.N(paramInt2, paramInt3);
  }

  public final int getType()
  {
    return 222;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.an
 * JD-Core Version:    0.6.2
 */