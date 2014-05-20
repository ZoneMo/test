package com.tencent.mm.plugin.voicereminder.a;

import com.tencent.mm.compatible.g.j;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;

final class c
  implements az
{
  c(b paramb)
  {
  }

  public final boolean ok()
  {
    String str = b.a(this.eOW);
    m localm = f.ali().pp(str);
    if ((localm == null) || (!localm.Ey()))
    {
      aa.e("MicroMsg.NetSceneUploadVoiceRemind", "Get info Failed file:" + b.a(this.eOW));
      b.a(this.eOW, 10000 + j.qe());
      b.b(this.eOW).a(3, -1, "doScene failed", this.eOW);
    }
    do
    {
      return false;
      if ((3 != localm.getStatus()) && (8 != localm.getStatus()))
      {
        long l = System.currentTimeMillis();
        if (l / 1000L - localm.DM() > 30L)
        {
          aa.e("MicroMsg.NetSceneUploadVoiceRemind", "Error ModifyTime in Read file:" + b.a(this.eOW));
          b.a(this.eOW, 10000 + j.qe());
          b.b(this.eOW).a(3, -1, "doScene failed", this.eOW);
          return false;
        }
        if (l - b.c(this.eOW) < 2000L)
        {
          aa.d("MicroMsg.NetSceneUploadVoiceRemind", "TimerExpired :" + b.a(this.eOW) + " but last send time:" + (l - b.c(this.eOW)));
          return true;
        }
        e locale = n.pm(b.a(this.eOW)).jo(localm.DH());
        aa.d("MicroMsg.NetSceneUploadVoiceRemind", "pusher doscene:" + b.a(this.eOW) + " readByte:" + locale.ccL + " stat:" + localm.getStatus());
        if (locale.ccL < 2000)
          return true;
      }
    }
    while (this.eOW.a(b.d(this.eOW), b.b(this.eOW)) != -1);
    b.a(this.eOW, 10000 + j.qe());
    b.b(this.eOW).a(3, -1, "doScene failed", this.eOW);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.a.c
 * JD-Core Version:    0.6.2
 */