package com.tencent.mm.ui;

import android.os.SystemClock;
import android.view.View;
import android.view.View.OnClickListener;

final class bh
  implements View.OnClickListener
{
  bh(MMActivity paramMMActivity, Runnable paramRunnable)
  {
  }

  public final void onClick(View paramView)
  {
    if (SystemClock.elapsedRealtime() - MMActivity.k(this.gnB) < 300L)
      this.gnC.run();
    MMActivity.a(this.gnB, SystemClock.elapsedRealtime());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bh
 * JD-Core Version:    0.6.2
 */