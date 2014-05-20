package com.tencent.mm.ui.voicetranstext;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.cp;
import com.tencent.mm.protocal.a.cq;
import com.tencent.mm.protocal.a.qu;
import com.tencent.mm.protocal.a.yi;
import com.tencent.mm.protocal.a.zi;
import com.tencent.mm.protocal.a.zk;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class a extends x
  implements ab
{
  public static int htY = 1;
  public static int htZ = 2;
  public static int hua = 3;
  private com.tencent.mm.n.a htS;
  private m htT;
  private String htU;
  private int htV;
  private zi htW;
  private int htX;
  private zk hub;
  private yi huc;
  private qu hud;
  private int hue;
  private int mState = -1;

  public a(String paramString, int paramInt)
  {
    b(paramString, paramInt, -1, -1);
  }

  public a(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    b(paramString, paramInt1, paramInt2, paramInt3);
  }

  private void b(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    b localb = new b();
    localb.a(new cp());
    localb.b(new cq());
    localb.es("/cgi-bin/micromsg-bin/checkvoicetrans");
    localb.cN(546);
    localb.cO(0);
    localb.cP(0);
    this.htS = localb.wx();
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = Integer.valueOf(paramInt2);
    arrayOfObject[3] = Integer.valueOf(paramInt3);
    aa.d("MicroMsg.NetSceneCheckVoiceTrans", "voiceId:%s, totalLen:%d, encodeType: %d, svrMsgId: %s", arrayOfObject);
    if (paramInt2 >= 0)
      this.htW = d.oF(paramInt2);
    if (paramInt3 > 0)
      this.htX = paramInt3;
    this.htU = paramString;
    this.htV = paramInt1;
  }

  public final int a(r paramr, m paramm)
  {
    this.htT = paramm;
    cp localcp = (cp)this.htS.wr();
    localcp.fDC = this.htU;
    localcp.fAL = this.htV;
    localcp.fDD = this.htW;
    localcp.fzo = this.htX;
    return a(paramr, this.htS, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0))
    {
      cq localcq = (cq)this.htS.ws();
      if (localcq == null)
        return;
      this.hub = localcq.fDE;
      this.mState = localcq.fzr;
      this.huc = localcq.fDF;
      this.hud = localcq.fDG;
      this.hue = localcq.fDH;
    }
    while (true)
    {
      this.htT.a(paramInt2, paramInt3, paramString, this);
      return;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(paramInt2);
      arrayOfObject[1] = Integer.valueOf(paramInt3);
      arrayOfObject[2] = this.htU;
      aa.d("MicroMsg.NetSceneCheckVoiceTrans", "end checkVoiceTrans, & errType:%d, errCode:%d, voiceId: %s ", arrayOfObject);
    }
  }

  public final zk aPn()
  {
    return this.hub;
  }

  public final yi aPo()
  {
    return this.huc;
  }

  public final qu aPp()
  {
    return this.hud;
  }

  public final int aPq()
  {
    return this.hue;
  }

  public final boolean aPr()
  {
    return (this.hub != null) && (!cj.hX(this.hub.fZG));
  }

  public final int getState()
  {
    return this.mState;
  }

  public final int getType()
  {
    return 546;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicetranstext.a
 * JD-Core Version:    0.6.2
 */