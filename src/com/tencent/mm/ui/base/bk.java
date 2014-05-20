package com.tencent.mm.ui.base;

import android.graphics.Rect;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ListAdapter;

final class bk extends GestureDetector.SimpleOnGestureListener
{
  bk(MMHorList paramMMHorList)
  {
  }

  public final boolean onDown(MotionEvent paramMotionEvent)
  {
    return this.gAp.aFI();
  }

  public final boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    return this.gAp.ad(paramFloat1);
  }

  public final boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    MMHorList.a(this.gAp, (int)paramFloat1);
    this.gAp.requestLayout();
    return true;
  }

  public final boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    Rect localRect = new Rect();
    for (int i = 0; ; i++)
    {
      if (i < this.gAp.getChildCount())
      {
        View localView = this.gAp.getChildAt(i);
        int j = localView.getLeft();
        int k = localView.getRight();
        localRect.set(j, localView.getTop(), k, localView.getBottom());
        if (!localRect.contains((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))
          continue;
        if (MMHorList.c(this.gAp) != null)
          MMHorList.c(this.gAp).onItemClick(this.gAp, localView, i + (1 + MMHorList.d(this.gAp)), MMHorList.e(this.gAp).getItemId(i + (1 + MMHorList.d(this.gAp))));
        if (MMHorList.f(this.gAp) != null)
          MMHorList.f(this.gAp).onItemSelected(this.gAp, localView, i + (1 + MMHorList.d(this.gAp)), MMHorList.e(this.gAp).getItemId(i + (1 + MMHorList.d(this.gAp))));
      }
      return true;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.bk
 * JD-Core Version:    0.6.2
 */