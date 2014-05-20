package com.tencent.mm.ui;

import android.support.v7.app.ActionBar;

final class bg
  implements Runnable
{
  bg(MMActivity paramMMActivity)
  {
  }

  public final void run()
  {
    if (MMActivity.j(this.gnB) != null)
      MMActivity.j(this.gnB).show();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bg
 * JD-Core Version:    0.6.2
 */