package com.tencent.mm.pluginsdk.module.media;

import com.tencent.mm.n;
import com.tencent.mm.protocal.a.or;
import com.tencent.mm.sdk.platformtools.aa;

final class o
  implements Runnable
{
  o(MusicPlayerUI paramMusicPlayerUI)
  {
  }

  public final void run()
  {
    aa.i("MicroMsg.MusicPlayerUI", "refresh ui");
    if ((this.fjQ.fjI.aqz() == null) && (this.fjQ.aqO() != null))
    {
      aa.i("MicroMsg.MusicPlayerUI", "refresh ui == lyricview");
      a locala = a.aG(this.fjQ.aqO().fQd, this.fjQ.getString(n.brR));
      this.fjQ.fjI.a(locala);
      aa.d("MicroMsg.MusicPlayerUI", "end refresh lyricView");
    }
    MusicPlayerUI.d(this.fjQ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.module.media.o
 * JD-Core Version:    0.6.2
 */