package com.tencent.mm.ui.base;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

final class dl extends GestureDetector.SimpleOnGestureListener
{
  dl(MMTextView paramMMTextView)
  {
  }

  public final boolean onDoubleTap(MotionEvent paramMotionEvent)
  {
    if (MMTextView.a(this.gCH) == null)
      return false;
    return MMTextView.a(this.gCH).aj(this.gCH);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.dl
 * JD-Core Version:    0.6.2
 */