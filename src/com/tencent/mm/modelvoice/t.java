package com.tencent.mm.modelvoice;

import com.tencent.mm.compatible.g.j;
import com.tencent.mm.n.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;

final class t
  implements az
{
  t(s params)
  {
  }

  public final boolean ok()
  {
    String str = s.a(this.cBQ);
    bh localbh = bc.Er().hB(str);
    if ((localbh == null) || (!localbh.Ey()))
    {
      aa.e("MicroMsg.NetSceneUploadVoice", "Get info Failed file:" + s.a(this.cBQ));
      s.a(this.cBQ, 10000 + j.qe());
      s.b(this.cBQ).a(3, -1, "doScene failed", this.cBQ);
    }
    do
    {
      return false;
      if ((3 != localbh.getStatus()) && (8 != localbh.getStatus()))
      {
        long l = System.currentTimeMillis();
        if (l / 1000L - localbh.DM() > 30L)
        {
          aa.e("MicroMsg.NetSceneUploadVoice", "Error ModifyTime in Read file:" + s.a(this.cBQ));
          s.a(this.cBQ, 10000 + j.qe());
          s.b(this.cBQ).a(3, -1, "doScene failed", this.cBQ);
          return false;
        }
        if (l - s.c(this.cBQ) < 2000L)
        {
          aa.d("MicroMsg.NetSceneUploadVoice", "TimerExpired :" + s.a(this.cBQ) + " but last send time:" + (l - s.c(this.cBQ)));
          return true;
        }
        u localu = bi.hq(s.a(this.cBQ)).O(localbh.DH(), 6000);
        aa.d("MicroMsg.NetSceneUploadVoice", "pusher doscene:" + s.a(this.cBQ) + " readByte:" + localu.ccL + " stat:" + localbh.getStatus());
        if (localu.ccL < 2000)
          return true;
      }
    }
    while (this.cBQ.a(s.d(this.cBQ), s.b(this.cBQ)) != -1);
    s.a(this.cBQ, 10000 + j.qe());
    s.b(this.cBQ).a(3, -1, "doScene failed", this.cBQ);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.t
 * JD-Core Version:    0.6.2
 */