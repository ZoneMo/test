package com.tencent.mm.ui.account;

import android.graphics.Rect;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ListAdapter;

final class ba extends GestureDetector.SimpleOnGestureListener
{
  ba(HorizontalListView paramHorizontalListView)
  {
  }

  public final boolean onDown(MotionEvent paramMotionEvent)
  {
    return this.gqu.aFI();
  }

  public final boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    return this.gqu.ad(paramFloat1);
  }

  public final boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    synchronized (this.gqu)
    {
      HorizontalListView localHorizontalListView2 = this.gqu;
      localHorizontalListView2.gql += (int)paramFloat1;
      this.gqu.requestLayout();
      return true;
    }
  }

  public final boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    Rect localRect = new Rect();
    for (int i = 0; ; i++)
    {
      if (i < this.gqu.getChildCount())
      {
        View localView = this.gqu.getChildAt(i);
        int j = localView.getLeft();
        int k = localView.getRight();
        localRect.set(j, localView.getTop(), k, localView.getBottom());
        if (!localRect.contains((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))
          continue;
        if (HorizontalListView.c(this.gqu) != null)
          HorizontalListView.c(this.gqu).onItemClick(this.gqu, localView, i + (1 + HorizontalListView.d(this.gqu)), this.gqu.ol.getItemId(i + (1 + HorizontalListView.d(this.gqu))));
        if (HorizontalListView.e(this.gqu) != null)
          HorizontalListView.e(this.gqu).onItemSelected(this.gqu, localView, i + (1 + HorizontalListView.d(this.gqu)), this.gqu.ol.getItemId(i + (1 + HorizontalListView.d(this.gqu))));
      }
      return true;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ba
 * JD-Core Version:    0.6.2
 */