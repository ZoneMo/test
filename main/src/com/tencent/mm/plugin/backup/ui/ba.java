package com.tencent.mm.plugin.backup.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.plugin.backup.model.l;
import com.tencent.mm.plugin.backup.model.q;

final class ba
  implements View.OnClickListener
{
  ba(BakChatUploadingUI paramBakChatUploadingUI)
  {
  }

  public final void onClick(View paramView)
  {
    if (d.Gk().Gz())
    {
      d.Gk().Gx();
      BakChatUploadingUI.b(this.cNF).setText(2131166057);
      BakChatUploadingUI.c(this.cNF).setVisibility(0);
    }
    while (true)
    {
      BakChatUploadingUI.d(this.cNF);
      return;
      q.GK();
      d.Gk().pause();
      BakChatUploadingUI.b(this.cNF).setText(2131166058);
      BakChatUploadingUI.c(this.cNF).setVisibility(4);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.ba
 * JD-Core Version:    0.6.2
 */