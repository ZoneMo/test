package com.tencent.mm.ui.account;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.sdk.platformtools.an;

final class ls
  implements Animation.AnimationListener
{
  ls(WelcomeSelectView paramWelcomeSelectView, View paramView, float paramFloat)
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
    this.guK.a(WelcomeSelectView.a(this.guK), 800L);
    this.guK.a(WelcomeSelectView.b(this.guK), 300L);
    this.guK.a(WelcomeSelectView.c(this.guK), 300L);
    this.guK.ah(WelcomeSelectView.d(this.guK));
    WelcomeSelectView.a(this.guK).setVisibility(0);
    WelcomeSelectView.b(this.guK).setVisibility(0);
    WelcomeSelectView.c(this.guK).setVisibility(0);
    WelcomeSelectView.d(this.guK).setVisibility(8);
    an.i(new lt(this));
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ls
 * JD-Core Version:    0.6.2
 */