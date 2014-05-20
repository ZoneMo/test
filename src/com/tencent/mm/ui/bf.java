package com.tencent.mm.ui;

import android.support.v7.app.ActionBar;
import android.view.Window;

final class bf
  implements Runnable
{
  bf(MMActivity paramMMActivity)
  {
  }

  public final void run()
  {
    this.gnB.getWindow().setFlags(1024, 1024);
    if (MMActivity.j(this.gnB) != null)
      MMActivity.j(this.gnB).hide();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bf
 * JD-Core Version:    0.6.2
 */