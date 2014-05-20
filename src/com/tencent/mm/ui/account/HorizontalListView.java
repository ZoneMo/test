package com.tencent.mm.ui.account;

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

public class HorizontalListView extends AdapterView
{
  protected Scroller en;
  public boolean gqh = true;
  private int gqi = -1;
  private int gqj = 0;
  protected int gqk;
  protected int gql;
  private int gqm = 2147483647;
  private int gqn = 0;
  private GestureDetector gqo;
  private Queue gqp = new LinkedList();
  private AdapterView.OnItemSelectedListener gqq;
  private AdapterView.OnItemClickListener gqr;
  private DataSetObserver gqs = new ay(this);
  private GestureDetector.OnGestureListener gqt = new ba(this);
  private boolean nP = false;
  protected ListAdapter ol;

  public HorizontalListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    FR();
  }

  private void FR()
  {
    try
    {
      this.gqi = -1;
      this.gqj = 0;
      this.gqn = 0;
      this.gqk = 0;
      this.gql = 0;
      this.gqm = 2147483647;
      this.en = new Scroller(getContext());
      this.gqo = new GestureDetector(getContext(), this.gqt);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void p(View paramView, int paramInt)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (localLayoutParams == null)
      localLayoutParams = new ViewGroup.LayoutParams(-1, -1);
    addViewInLayout(paramView, paramInt, localLayoutParams, true);
    paramView.measure(View.MeasureSpec.makeMeasureSpec(getWidth(), -2147483648), View.MeasureSpec.makeMeasureSpec(getHeight(), -2147483648));
  }

  private void reset()
  {
    try
    {
      FR();
      removeAllViewsInLayout();
      requestLayout();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected final boolean aFI()
  {
    this.en.forceFinished(true);
    return true;
  }

  protected final boolean ad(float paramFloat)
  {
    try
    {
      this.en.fling(this.gql, 0, (int)-paramFloat, 0, 0, this.gqm, 0, 0);
      requestLayout();
      return true;
    }
    finally
    {
    }
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    return this.gqo.onTouchEvent(paramMotionEvent);
  }

  public View getSelectedView()
  {
    return null;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 0;
    int j;
    try
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      ListAdapter localListAdapter = this.ol;
      if (localListAdapter == null)
        return;
      if (this.nP)
      {
        int i6 = this.gqk;
        FR();
        removeAllViewsInLayout();
        this.gql = i6;
        this.nP = false;
      }
      if (this.en.computeScrollOffset())
        this.gql = this.en.getCurrX();
      if (this.gql <= 0)
      {
        this.gql = 0;
        this.en.forceFinished(true);
      }
      if (this.gql >= this.gqm)
      {
        this.gql = this.gqm;
        this.en.forceFinished(true);
      }
      j = this.gqk - this.gql;
      for (View localView1 = getChildAt(0); (localView1 != null) && (j + localView1.getRight() <= 0); localView1 = getChildAt(0))
      {
        this.gqn += localView1.getMeasuredWidth();
        this.gqp.offer(localView1);
        removeViewInLayout(localView1);
        this.gqi = (1 + this.gqi);
      }
      while (true)
      {
        View localView2 = getChildAt(-1 + getChildCount());
        if ((localView2 == null) || (j + localView2.getLeft() < getWidth()))
          break;
        this.gqp.offer(localView2);
        removeViewInLayout(localView2);
        this.gqj = (-1 + this.gqj);
      }
    }
    finally
    {
    }
    View localView3 = getChildAt(-1 + getChildCount());
    int k;
    label313: int m;
    int n;
    if (localView3 != null)
    {
      k = localView3.getRight();
      break label684;
      while ((m + j < getWidth()) && (this.gqj < this.ol.getCount()))
      {
        View localView7 = this.ol.getView(this.gqj, (View)this.gqp.poll(), this);
        p(localView7, -1);
        int i5 = m + localView7.getMeasuredWidth();
        if (this.gqj == -1 + this.ol.getCount())
          this.gqm = (i5 + this.gqk - getWidth());
        if (this.gqm < 0)
          this.gqm = 0;
        this.gqj = (1 + this.gqj);
        m = i5;
      }
      View localView4 = getChildAt(0);
      if (localView4 != null)
      {
        n = localView4.getLeft();
        break label691;
      }
    }
    while (true)
    {
      int i1;
      if ((i1 + j > 0) && (this.gqi >= 0))
      {
        View localView6 = this.ol.getView(this.gqi, (View)this.gqp.poll(), this);
        p(localView6, 0);
        int i4 = i1 - localView6.getMeasuredWidth();
        this.gqi = (-1 + this.gqi);
        this.gqn -= localView6.getMeasuredWidth();
        i1 = i4;
      }
      else
      {
        if (getChildCount() > 0)
        {
          this.gqn = (j + this.gqn);
          int i2 = this.gqn;
          while (i < getChildCount())
          {
            View localView5 = getChildAt(i);
            int i3 = localView5.getMeasuredWidth();
            localView5.layout(i2, 0, i2 + i3, localView5.getMeasuredHeight());
            i2 += i3;
            i++;
          }
        }
        this.gqk = this.gql;
        if (this.en.isFinished())
          break;
        post(new az(this));
        break;
        n = 0;
        break label691;
        k = 0;
        label684: m = k;
        break label313;
        label691: i1 = n;
      }
    }
  }

  public final void setAdapter(ListAdapter paramListAdapter)
  {
    if (this.ol != null)
      this.ol.unregisterDataSetObserver(this.gqs);
    this.ol = paramListAdapter;
    this.ol.registerDataSetObserver(this.gqs);
    reset();
  }

  public void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.gqr = paramOnItemClickListener;
  }

  public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener paramOnItemSelectedListener)
  {
    this.gqq = paramOnItemSelectedListener;
  }

  public void setSelection(int paramInt)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.HorizontalListView
 * JD-Core Version:    0.6.2
 */