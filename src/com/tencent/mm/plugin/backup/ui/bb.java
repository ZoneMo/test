package com.tencent.mm.plugin.backup.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.plugin.backup.model.l;

final class bb
  implements View.OnClickListener
{
  bb(BakChatUploadingUI paramBakChatUploadingUI)
  {
  }

  public final void onClick(View paramView)
  {
    d.Gk().pause();
    a.a(this.cNF, 2131166049, new bc(this), new bd(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.bb
 * JD-Core Version:    0.6.2
 */