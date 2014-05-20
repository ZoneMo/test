package com.tencent.mm.s;

import android.os.Handler;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.w;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import junit.framework.Assert;

public final class a extends x
  implements ab
{
  private ak bLP = new ak();
  private m cjh;
  private Handler handler = new b(this);

  public a(String paramString1, String paramString2)
  {
    this.bLP.setStatus(i);
    this.bLP.uK(paramString1);
    this.bLP.G(bv.dA(paramString1));
    this.bLP.bZ(i);
    this.bLP.setContent(paramString2);
    this.bLP.setType(w.dd(paramString1));
    long l = be.uz().sw().v(this.bLP);
    if (l != -1L);
    while (true)
    {
      Assert.assertTrue(i);
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneSendMsgFake", "new msg inserted to db , local id = " + l);
      return;
      int j = 0;
    }
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneSendMsgFake", "send local msg, msgId = " + this.bLP.Bo());
    this.handler.sendEmptyMessageDelayed(0, 500L);
    return 999;
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneSendMsgFake", "recv local msg, msgId = " + this.bLP.Bo());
    this.bLP.cL(74);
    this.bLP.setStatus(2);
    this.bLP.G(bv.b(this.bLP.aCl(), System.currentTimeMillis() / 1000L));
    be.uz().sw().a(this.bLP.Bo(), this.bLP);
    this.cjh.a(0, 0, paramString, this);
  }

  public final int getType()
  {
    return 522;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.s.a
 * JD-Core Version:    0.6.2
 */