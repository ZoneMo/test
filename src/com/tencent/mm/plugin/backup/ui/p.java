package com.tencent.mm.plugin.backup.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.backup.model.ar;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.plugin.backup.model.q;

final class p
  implements View.OnClickListener
{
  p(BakChatRecoveringUI paramBakChatRecoveringUI)
  {
  }

  public final void onClick(View paramView)
  {
    if (d.Gl().Gz())
    {
      d.Gl().Gx();
      if (au.hX(BakChatRecoveringUI.c(this.cMB)))
        BakChatRecoveringUI.a(this.cMB, this.cMB.getString(2131166061));
      BakChatRecoveringUI.d(this.cMB).setText(BakChatRecoveringUI.c(this.cMB));
      BakChatRecoveringUI.e(this.cMB).setVisibility(0);
    }
    while (true)
    {
      BakChatRecoveringUI.f(this.cMB);
      return;
      q.GN();
      d.Gl().Hv();
      BakChatRecoveringUI.a(this.cMB, BakChatRecoveringUI.d(this.cMB).getText().toString());
      BakChatRecoveringUI.d(this.cMB).setText(2131166058);
      BakChatRecoveringUI.e(this.cMB).setVisibility(4);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.p
 * JD-Core Version:    0.6.2
 */