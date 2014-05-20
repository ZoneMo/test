package com.tencent.mm.ui.base;

import android.content.Context;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ListAdapter;
import android.widget.Scroller;
import java.util.LinkedList;
import java.util.Queue;

public class MMHorList extends AdapterView
{
  private boolean gAa = false;
  protected Scroller gAb;
  private GestureDetector gAc;
  private AdapterView.OnItemSelectedListener gAd;
  private AdapterView.OnItemClickListener gAe;
  private ListAdapter gAf;
  private Runnable gAg = new bi(this);
  private boolean gAh = false;
  private boolean gAi = false;
  private int gAj = 0;
  private int gAk = 0;
  private boolean gAl = false;
  private boolean gAm = false;
  private DataSetObserver gAn = new bj(this);
  private GestureDetector.OnGestureListener gAo = new bk(this);
  private bl gzS;
  private int gzT;
  private int gzU;
  private int gzV;
  private int gzW;
  private int gzX = 536870912;
  private Queue gzY = new LinkedList();
  private boolean gzZ = false;
  private int offset;

  public MMHorList(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public MMHorList(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public MMHorList(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private int aGZ()
  {
    return this.gAf.getCount() * this.gAj;
  }

  private void init()
  {
    this.gAb = new Scroller(getContext());
    this.gzT = -1;
    this.gzU = 0;
    this.offset = 0;
    this.gzV = 0;
    this.gzW = 0;
    this.gzZ = false;
    this.gzX = 536870912;
    this.gAc = new GestureDetector(getContext(), this.gAo);
  }

  private void p(View paramView, int paramInt)
  {
    this.gAa = true;
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (localLayoutParams == null)
      localLayoutParams = new ViewGroup.LayoutParams(-1, -1);
    addViewInLayout(paramView, paramInt, localLayoutParams, true);
    paramView.measure(View.MeasureSpec.makeMeasureSpec(getWidth(), -2147483648), View.MeasureSpec.makeMeasureSpec(getHeight(), -2147483648));
  }

  private void reset()
  {
    init();
    removeAllViewsInLayout();
    requestLayout();
  }

  public final void a(bl parambl)
  {
    this.gzS = parambl;
  }

  protected final boolean aFI()
  {
    this.gAb.forceFinished(true);
    return true;
  }

  public final void aGX()
  {
    this.gAh = true;
  }

  public final void aGY()
  {
    this.gAi = true;
  }

  public final boolean aHa()
  {
    return this.gAl;
  }

  protected final boolean ad(float paramFloat)
  {
    this.gAb.fling(this.gzW, 0, (int)-paramFloat, 0, 0, this.gzX, 0, 0);
    requestLayout();
    return true;
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = this.gAc.onTouchEvent(paramMotionEvent);
    if (paramMotionEvent.getAction() == 0)
    {
      this.gAl = true;
      if (this.gzS != null)
        this.gzS.akI();
    }
    while ((paramMotionEvent.getAction() != 3) && (paramMotionEvent.getAction() != 1))
      return bool;
    if (this.gAi)
    {
      if (aGZ() <= getWidth())
        break label182;
      if (this.gzV >= 0)
        break label134;
      this.gAb.forceFinished(true);
      this.gAb.startScroll(this.gzV, 0, 0 - this.gzV, 0);
      requestLayout();
    }
    while (true)
    {
      this.gAl = false;
      if (this.gzS == null)
        break;
      this.gzS.akJ();
      return bool;
      label134: if (this.gzV > this.gzX)
      {
        this.gAb.forceFinished(true);
        this.gAb.startScroll(this.gzV, 0, this.gzX - this.gzV, 0);
        requestLayout();
        continue;
        label182: if (this.gzV != -1 * this.gAk)
        {
          this.gAb.forceFinished(true);
          this.gAb.startScroll(this.gzV, 0, 0 - this.gzV, 0);
          requestLayout();
        }
      }
    }
  }

  public final int getCurrentPosition()
  {
    return this.gzV;
  }

  public View getSelectedView()
  {
    return null;
  }

  public final void nd(int paramInt)
  {
    this.gAj = paramInt;
  }

  public final void ne(int paramInt)
  {
    this.gAb.forceFinished(true);
    this.gAb.startScroll(this.gzV, 0, paramInt - this.gzV, 0);
    this.gAm = true;
    requestLayout();
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.gAf == null)
      return;
    this.gAa = true;
    if (this.gzZ)
    {
      int i6 = this.gzV;
      init();
      removeAllViewsInLayout();
      this.gzW = i6;
      if (this.gAh)
      {
        this.gAk = Math.max(0, (getWidth() - aGZ()) / 2);
        this.offset = this.gAk;
      }
      this.gzZ = false;
    }
    if (this.gAb.computeScrollOffset())
      this.gzW = this.gAb.getCurrX();
    if (this.gAi)
      if (aGZ() > getWidth())
      {
        if (this.gzW < -1 * getWidth())
        {
          this.gzW = (1 + -1 * getWidth());
          this.gAb.forceFinished(true);
        }
        if (this.gzW > this.gzX + getWidth())
        {
          this.gzW = (-1 + (this.gzX + getWidth()));
          this.gAb.forceFinished(true);
        }
      }
    int i;
    while (true)
    {
      i = this.gzV - this.gzW;
      View localView1 = getChildAt(0);
      while ((localView1 != null) && (i + localView1.getRight() <= 0))
      {
        this.offset += localView1.getMeasuredWidth();
        this.gzY.offer(localView1);
        removeViewInLayout(localView1);
        this.gzT = (1 + this.gzT);
        localView1 = getChildAt(0);
        this.gAa = true;
      }
      if (this.gzW < -1 * getWidth() + this.gAk)
      {
        this.gzW = (1 + (-1 * getWidth() + this.gAk));
        this.gAb.forceFinished(true);
      }
      if (this.gzW > getWidth() - this.gAk)
      {
        this.gzW = (-1 + (getWidth() - this.gAk));
        this.gAb.forceFinished(true);
        continue;
        if (this.gzW < 0)
        {
          this.gzW = 0;
          this.gAb.forceFinished(true);
        }
        if (this.gzW > this.gzX)
        {
          this.gzW = this.gzX;
          this.gAb.forceFinished(true);
        }
      }
    }
    View localView2 = getChildAt(-1 + getChildCount());
    while ((localView2 != null) && (i + localView2.getLeft() >= getWidth()))
    {
      this.gzY.offer(localView2);
      removeViewInLayout(localView2);
      this.gzU = (-1 + this.gzU);
      localView2 = getChildAt(-1 + getChildCount());
      this.gAa = true;
    }
    View localView3 = getChildAt(-1 + getChildCount());
    if (localView3 != null);
    for (int j = localView3.getRight(); ; j = 0)
    {
      int i5;
      for (int k = j; (k + i < getWidth()) && (this.gzU < this.gAf.getCount()); k = i5)
      {
        View localView7 = this.gAf.getView(this.gzU, (View)this.gzY.poll(), this);
        p(localView7, -1);
        i5 = k + localView7.getMeasuredWidth();
        if (this.gzU == -1 + this.gAf.getCount())
          this.gzX = (i5 + this.gzV - getWidth());
        this.gzU = (1 + this.gzU);
      }
      View localView4 = getChildAt(0);
      if (localView4 != null);
      for (int m = localView4.getLeft(); ; m = 0)
      {
        int i4;
        for (int n = m; (n + i > 0) && (this.gzT >= 0); n = i4)
        {
          View localView6 = this.gAf.getView(this.gzT, (View)this.gzY.poll(), this);
          p(localView6, 0);
          i4 = n - localView6.getMeasuredWidth();
          this.gzT = (-1 + this.gzT);
          this.offset -= localView6.getMeasuredWidth();
        }
        if ((getChildCount() > 0) && (this.gAa))
        {
          this.offset = (i + this.offset);
          int i1 = this.offset;
          for (int i2 = 0; i2 < getChildCount(); i2++)
          {
            View localView5 = getChildAt(i2);
            int i3 = localView5.getMeasuredWidth();
            localView5.layout(i1, 0, i1 + i3, localView5.getMeasuredHeight());
            i1 += i3;
          }
        }
        this.gzV = this.gzW;
        if (!this.gAb.isFinished())
        {
          post(this.gAg);
          return;
        }
        if ((this.gzS == null) || (!this.gAm))
          break;
        this.gzS.akK();
        this.gAm = false;
        return;
      }
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if ((this.gAf != null) && (this.gAf.getCount() > 0))
    {
      View localView = getChildAt(0);
      if (localView != null)
      {
        super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(localView.getMeasuredHeight(), -2147483648));
        return;
      }
    }
    super.onMeasure(paramInt1, paramInt2);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return false;
  }

  public final void setAdapter(ListAdapter paramListAdapter)
  {
    if (this.gAf == null)
      paramListAdapter.registerDataSetObserver(this.gAn);
    this.gAf = paramListAdapter;
    reset();
  }

  public void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.gAe = paramOnItemClickListener;
  }

  public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener paramOnItemSelectedListener)
  {
    this.gAd = paramOnItemSelectedListener;
  }

  public void setSelection(int paramInt)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMHorList
 * JD-Core Version:    0.6.2
 */