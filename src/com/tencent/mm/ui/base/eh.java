package com.tencent.mm.ui.base;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;

final class eh
  implements Animation.AnimationListener
{
  eh(TalkRoomPopupNav paramTalkRoomPopupNav)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (TalkRoomPopupNav.h(this.gET) != null)
      TalkRoomPopupNav.g(this.gET).startAnimation(TalkRoomPopupNav.h(this.gET));
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.eh
 * JD-Core Version:    0.6.2
 */