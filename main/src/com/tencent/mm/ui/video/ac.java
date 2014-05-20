package com.tencent.mm.ui.video;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.ui.base.dn;

final class ac
  implements View.OnClickListener
{
  ac(VideoRecorderUI paramVideoRecorderUI)
  {
  }

  public final void onClick(View paramView)
  {
    if (!be.uz().isSDCardAvailable())
    {
      dn.bW(this.htr);
      return;
    }
    if (VideoRecorderUI.k(this.htr))
    {
      VideoRecorderUI.d(this.htr);
      return;
    }
    if (VideoRecorderUI.l(this.htr))
    {
      com.tencent.mm.ui.base.h.a(this.htr, this.htr.getString(n.bEt), this.htr.getString(n.ber), new ad(this), new ae(this));
      return;
    }
    VideoRecorderUI.m(this.htr).setImageResource(com.tencent.mm.h.ajL);
    VideoRecorderUI.n(this.htr);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.ac
 * JD-Core Version:    0.6.2
 */