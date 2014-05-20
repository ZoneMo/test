package com.tencent.mm.pluginsdk.module.media;

import android.view.View;
import android.view.View.OnClickListener;

final class j
  implements View.OnClickListener
{
  j(MusicPlayerUI paramMusicPlayerUI)
  {
  }

  public final void onClick(View paramView)
  {
    if (p.fjT == this.fjQ.fjG)
    {
      this.fjQ.fjG = p.fjR;
      this.fjQ.aqJ();
      return;
    }
    this.fjQ.fjG = p.fjT;
    this.fjQ.aqH();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.module.media.j
 * JD-Core Version:    0.6.2
 */