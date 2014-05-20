package com.tencent.mm.ui.account;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.sdk.platformtools.an;

final class lz
  implements Animation.AnimationListener
{
  lz(WelcomeSelectView_5_2 paramWelcomeSelectView_5_2, View paramView, float paramFloat)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    int i = this.dXr.getLeft();
    int j = this.dXr.getTop() - (int)(this.guL - this.guM);
    int k = this.dXr.getWidth();
    int m = this.dXr.getHeight();
    this.dXr.clearAnimation();
    this.dXr.layout(i, j, k + i, m + j);
    WelcomeSelectView_5_2.a(WelcomeSelectView_5_2.c(this.guY), new ma(this));
    this.guY.a(WelcomeSelectView_5_2.d(this.guY), 300L);
    this.guY.a(WelcomeSelectView_5_2.e(this.guY), 300L);
    WelcomeSelectView_5_2.d(this.guY).setVisibility(0);
    WelcomeSelectView_5_2.c(this.guY).setVisibility(0);
    WelcomeSelectView_5_2.e(this.guY).setVisibility(0);
    an.i(new mb(this));
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.lz
 * JD-Core Version:    0.6.2
 */