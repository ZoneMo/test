package com.tencent.mm.ui.chatting;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.tencent.mm.ui.base.ce;

final class fi
  implements View.OnTouchListener
{
  fi(fg paramfg)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      fg.c(this.gOn);
      fg.a(this.gOn, paramView.getScrollY());
      fg.b(this.gOn, fg.a(this.gOn));
      fg.b(this.gOn).removeMessages(0);
      if (fg.d(this.gOn))
      {
        fg.a(this.gOn, false);
        fg.b(this.gOn, true);
      }
    }
    while ((paramMotionEvent.getAction() == 2) || ((paramMotionEvent.getAction() != 3) && (paramMotionEvent.getAction() != 1) && (paramMotionEvent.getAction() != 4)))
      return false;
    if (Math.abs(fg.e(this.gOn) - paramView.getScrollY()) > 3)
      fg.b(this.gOn).sendMessage(fg.b(this.gOn).obtainMessage(0, paramView));
    if ((fg.f(this.gOn) < 800L) && (Math.abs(fg.e(this.gOn) - paramView.getScrollY()) <= 3) && (!fg.g(this.gOn)) && (fg.h(this.gOn) != null) && (fg.h(this.gOn).isShowing()))
    {
      fg.b(this.gOn).removeMessages(0);
      fg.i(this.gOn);
      fg.h(this.gOn).dismiss();
    }
    fg.b(this.gOn, false);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.fi
 * JD-Core Version:    0.6.2
 */