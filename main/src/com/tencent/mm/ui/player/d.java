package com.tencent.mm.ui.player;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.al;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.d.c.m;

final class d
  implements View.OnClickListener
{
  d(MusicDetailUI paramMusicDetailUI)
  {
  }

  public final void onClick(View paramView)
  {
    m.dZN.j(10231, "1");
    if (be.nS() != null)
      be.nS().release();
    this.hdb.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.player.d
 * JD-Core Version:    0.6.2
 */