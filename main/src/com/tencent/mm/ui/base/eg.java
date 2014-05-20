package com.tencent.mm.ui.base;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;

final class eg
  implements Animation.AnimationListener
{
  eg(TalkRoomPopupNav paramTalkRoomPopupNav)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (TalkRoomPopupNav.f(this.gET) != null)
      TalkRoomPopupNav.g(this.gET).startAnimation(TalkRoomPopupNav.f(this.gET));
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.eg
 * JD-Core Version:    0.6.2
 */