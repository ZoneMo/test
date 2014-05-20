package com.tencent.mm.pluginsdk.module.media;

import com.tencent.mm.model.al;
import com.tencent.mm.model.be;

final class l
  implements Runnable
{
  l(MusicPlayerUI paramMusicPlayerUI)
  {
  }

  public final void run()
  {
    this.fjQ.aqI();
    be.nS().a(MusicPlayerUI.a(this.fjQ));
    if (this.fjQ.acr())
    {
      be.nS().a(this.fjQ.acl(), this.fjQ.getAppId(), this.fjQ.aqO());
      return;
    }
    be.nS().oF();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.module.media.l
 * JD-Core Version:    0.6.2
 */