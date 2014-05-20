package com.tencent.mm.ui.voicetranstext;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class h
  implements View.OnTouchListener
{
  h(VoiceTransTextUI paramVoiceTransTextUI)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    case 2:
    default:
    case 0:
      do
      {
        return false;
        VoiceTransTextUI.c(this.huE);
        VoiceTransTextUI.a(this.huE, paramView.getScrollY());
        VoiceTransTextUI.b(this.huE, VoiceTransTextUI.d(this.huE));
        VoiceTransTextUI.e(this.huE).removeMessages(0);
      }
      while (!VoiceTransTextUI.f(this.huE));
      VoiceTransTextUI.g(this.huE);
      VoiceTransTextUI.a(this.huE, true);
      return false;
    case 1:
    case 3:
    case 4:
    }
    if (Math.abs(VoiceTransTextUI.h(this.huE) - paramView.getScrollY()) > VoiceTransTextUI.i(this.huE))
      VoiceTransTextUI.e(this.huE).sendMessage(VoiceTransTextUI.e(this.huE).obtainMessage(0, paramView));
    if ((VoiceTransTextUI.j(this.huE) < 800L) && (Math.abs(VoiceTransTextUI.h(this.huE) - paramView.getScrollY()) <= VoiceTransTextUI.i(this.huE)) && (!VoiceTransTextUI.k(this.huE)))
    {
      VoiceTransTextUI.e(this.huE).removeMessages(0);
      VoiceTransTextUI.l(this.huE);
      this.huE.finish();
    }
    VoiceTransTextUI.a(this.huE, false);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicetranstext.h
 * JD-Core Version:    0.6.2
 */