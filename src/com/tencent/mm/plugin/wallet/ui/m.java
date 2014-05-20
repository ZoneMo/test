package com.tencent.mm.plugin.wallet.ui;

import android.view.View;
import com.tencent.mm.an.a;

final class m
  implements Runnable
{
  m(MMScrollView paramMMScrollView, View paramView)
  {
  }

  public final void run()
  {
    this.fdZ.scrollTo(0, this.dXr.getTop() - a.fromDPToPix(this.fdZ.getContext(), 10));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.m
 * JD-Core Version:    0.6.2
 */