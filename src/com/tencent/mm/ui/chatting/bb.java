package com.tencent.mm.ui.chatting;

import android.view.View;
import android.view.animation.Animation;

abstract class bb extends Animation
{
  View targetView;

  bb(ChattingAnimFrame paramChattingAnimFrame)
  {
  }

  public final void ar(View paramView)
  {
    this.targetView = paramView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.bb
 * JD-Core Version:    0.6.2
 */