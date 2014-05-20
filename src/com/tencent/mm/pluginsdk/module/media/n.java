package com.tencent.mm.pluginsdk.module.media;

import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.h;
import com.tencent.mm.model.al;
import com.tencent.mm.model.am;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;

final class n
  implements am
{
  n(MusicPlayerUI paramMusicPlayerUI)
  {
  }

  public final void B(int paramInt1, int paramInt2)
  {
    if ((MusicPlayerUI.c(this.fjQ)) || (this.fjQ.fjI.aqz() == null))
      return;
    this.fjQ.fjI.f(paramInt1, paramInt2);
  }

  public final void onFinish()
  {
    aa.d("MicroMsg.MusicPlayerUI", "player callback finish");
    this.fjQ.aqK();
  }

  public final void onPause()
  {
    aa.d("MicroMsg.MusicPlayerUI", "player callback pause");
    if (q.fjV == this.fjQ.acp())
    {
      ((ImageView)MusicPlayerUI.b(this.fjQ)).setImageResource(h.ahf);
      this.fjQ.fjG = p.fjR;
    }
    while (true)
    {
      this.fjQ.aqK();
      return;
      ((TextView)MusicPlayerUI.b(this.fjQ)).setText(com.tencent.mm.n.brO);
    }
  }

  public final void onResume()
  {
    aa.d("MicroMsg.MusicPlayerUI", "player callback resume");
    ((ImageView)MusicPlayerUI.b(this.fjQ)).setImageResource(h.aiZ);
    this.fjQ.fjG = p.fjT;
  }

  public final void onStart()
  {
    aa.d("MicroMsg.MusicPlayerUI", "player callback start");
    ((ImageView)MusicPlayerUI.b(this.fjQ)).setImageResource(h.aiZ);
    this.fjQ.fjG = p.fjT;
    this.fjQ.c(be.nS().oA());
    MusicPlayerUI.d(this.fjQ);
    MusicPlayerUI.e(this.fjQ);
  }

  public final void onStop()
  {
    aa.d("MicroMsg.MusicPlayerUI", "player callback stop");
    this.fjQ.aqK();
  }

  public final void pB()
  {
    aa.d("MicroMsg.MusicPlayerUI", "player callback error");
    this.fjQ.aqK();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.module.media.n
 * JD-Core Version:    0.6.2
 */