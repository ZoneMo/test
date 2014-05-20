package com.tencent.mm.s;

import android.os.Handler;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.w;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.pointers.PInt;
import com.tencent.mm.pointers.PString;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.e;
import com.tencent.mm.w.g;
import junit.framework.Assert;

public final class c extends x
  implements ab
{
  private ak bLP = null;
  private m cjh;
  private long cpL;
  private long cpM;
  private Handler handler = new d(this);

  public c(int paramInt1, String paramString1, String paramString2, String paramString3, int paramInt2)
  {
    PString localPString = new PString();
    PInt localPInt1 = new PInt();
    PInt localPInt2 = new PInt();
    this.cpL = ag.Ba().a(paramString3, paramInt1, paramInt2, localPString, localPInt1, localPInt2);
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneUploadMsgImgFake", "send local msgImg, imgLocalId = " + this.cpL + ", fromUserName = " + paramString1 + ", toUserName = " + paramString2 + ", origImgPath = " + paramString3);
    this.bLP = new ak();
    this.bLP.setType(w.de(paramString2));
    this.bLP.uK(paramString2);
    this.bLP.bZ(1);
    this.bLP.uN(localPString.value);
    this.bLP.bXI = localPInt1.value;
    this.bLP.bXJ = localPInt2.value;
    this.bLP.G(bv.dA(this.bLP.aCl()));
    this.cpM = be.uz().sw().v(this.bLP);
    if (this.cpM >= 0L);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneUploadMsgImgFake", "NetSceneUploadMsgImgFake: local msgId = " + this.cpM);
      e locale = ag.Ba().E(this.cpL);
      locale.dy((int)this.cpM);
      ag.Ba().a(this.cpL, locale);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadMsgImgFake", "NetSceneUploadMsgImg: local imgId = " + this.cpL + " img len = " + locale.vR());
      return;
    }
  }

  public final int a(r paramr, m paramm)
  {
    if (this.cpL < 0L);
    e locale;
    do
    {
      return -1;
      this.cjh = paramm;
      locale = ag.Ba().E(this.cpL);
    }
    while ((locale == null) || (locale.getStatus() == -1));
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneUploadMsgImgFake", "send local msgimg, imgLocalId = " + this.cpL);
    this.handler.sendEmptyMessageDelayed(0, 500L);
    return 999;
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneUploadMsgImgFake", "recv local msgimg, imgLocalId = " + this.cpL);
    this.bLP.cL(74);
    this.bLP.setStatus(2);
    this.bLP.G(bv.b(this.bLP.aCl(), System.currentTimeMillis() / 1000L));
    be.uz().sw().a(this.cpM, this.bLP);
    this.cjh.a(0, 0, "", this);
  }

  public final int getType()
  {
    return 110;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.s.c
 * JD-Core Version:    0.6.2
 */