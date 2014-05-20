package com.tencent.mm.plugin.whatsnew.ui;

import android.os.Handler;
import android.os.Looper;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class d
  implements Animation.AnimationListener
{
  d(ThirdAnniversaryUI paramThirdAnniversaryUI, Animation paramAnimation)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    new Handler(Looper.getMainLooper()).post(new e(this));
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.whatsnew.ui.d
 * JD-Core Version:    0.6.2
 */