package com.tencent.mm.sandbox.updater;

import com.tencent.mm.compatible.c.s;
import com.tencent.mm.compatible.g.i;
import com.tencent.mm.protocal.a;
import com.tencent.mm.protocal.a.au;
import com.tencent.mm.protocal.a.ky;
import com.tencent.mm.sandbox.monitor.j;
import com.tencent.mm.sdk.platformtools.aa;

public final class t extends j
{
  private String cDM;
  private byte[] cmW;
  private int gbj = 0;
  private final int gbk = 5;
  private int gbl = 0;
  private String[] gbm;
  private com.tencent.mm.sandbox.b gbn;
  private v gbo = null;
  private com.tencent.mm.sandbox.b gbp = new u(this);
  private int uin;

  public t(int paramInt1, String paramString1, int paramInt2, int paramInt3, String paramString2, byte[] paramArrayOfByte, String[] paramArrayOfString)
  {
    super(paramInt1, paramString1, paramInt2);
    this.gbm = paramArrayOfString;
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0))
      this.gbm = new String[] { "short.weixin.qq.com" };
    this.uin = paramInt3;
    this.cDM = paramString2;
    this.cmW = paramArrayOfByte;
  }

  public final void a(com.tencent.mm.sandbox.b paramb)
  {
    this.gbn = paramb;
    int i = 1 + this.gbj;
    this.gbj = i;
    if (i > 1000)
    {
      aa.d("MicroMsg.NetSceneGetUpdatePack", "doSceneCnt > DOSCENE_LIMIT, return");
      this.gbn.a(-1, -1, null);
      return;
    }
    if (!i.m(this.gaP))
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.gaP);
      aa.b("MicroMsg.NetSceneGetUpdatePack", "SDCard full, packSize=[%s]", arrayOfObject);
      paramb.a(-1, -1, null);
      return;
    }
    ky localky = new ky();
    au localau = new au();
    localau.fAm = a.fxr;
    localau.fAl = com.tencent.mm.am.b.au(s.pV().getBytes()).lf(16);
    localau.fAn = com.tencent.mm.am.b.au(a.fxk.getBytes()).lf(132);
    localau.fyJ = 0;
    localau.fAW = com.tencent.mm.am.b.au(this.cDM.getBytes()).lf(36);
    localau.fAX = this.uin;
    localky.a(localau);
    localky.fMB = this.gaO;
    localky.fEd = this.gaQ;
    localky.fAL = this.gaP;
    v localv = new v(this, this.gbm[(this.gbl / 5)], this.gbp);
    this.gbo = localv;
    localv.execute(new ky[] { localky });
  }

  public final void cancel()
  {
    aa.i("MicroMsg.NetSceneGetUpdatePack", "do cancel, updateType = " + this.gaO);
    if ((this.gbo != null) && (!this.gbo.isCancelled()))
      this.gbo.cancel(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.t
 * JD-Core Version:    0.6.2
 */