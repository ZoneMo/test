package com.tencent.mm.ui.tools.gridviewheaders;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.GridView;
import android.widget.ListAdapter;
import java.util.ArrayList;
import java.util.List;

public class GridHeadersGridView extends GridView
  implements AbsListView.OnScrollListener, AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener, AdapterView.OnItemSelectedListener
{
  private int cUD;
  private int cUE;
  private int cUu;
  private int dC;
  private int dV = 0;
  protected int fmD;
  private Runnable gBL;
  public k hob;
  public l hoc;
  private boolean hod = true;
  private final Rect hoe = new Rect();
  private boolean hof;
  private boolean hog;
  private int hoh;
  private long hoi = -1L;
  private int hoj;
  private float hok;
  private boolean hol;
  private int hom = 1;
  private m hon;
  private n hoo;
  private AdapterView.OnItemLongClickListener hop;
  private o hoq;
  private AbsListView.OnScrollListener hor;
  private View hos;
  protected c hot;
  protected int hou;
  private boolean hov = true;
  private DataSetObserver mDataSetObserver = new i(this);
  protected boolean nP;
  private AdapterView.OnItemClickListener qv;
  private AdapterView.OnItemSelectedListener qw;

  public GridHeadersGridView(Context paramContext)
  {
    this(paramContext, null);
  }

  public GridHeadersGridView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842865);
  }

  public GridHeadersGridView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    super.setOnScrollListener(this);
    setVerticalFadingEdgeEnabled(false);
    if (!this.hol)
      this.cUu = -1;
    this.dC = ViewConfiguration.get(paramContext).getScaledTouchSlop();
  }

  private int aOn()
  {
    if (this.hos != null)
      return this.hos.getMeasuredHeight();
    return 0;
  }

  private void aOo()
  {
    if (this.hos == null)
      return;
    int i = View.MeasureSpec.makeMeasureSpec(getWidth() - getPaddingLeft() - getPaddingRight(), 1073741824);
    ViewGroup.LayoutParams localLayoutParams = this.hos.getLayoutParams();
    if ((localLayoutParams != null) && (localLayoutParams.height > 0));
    for (int j = View.MeasureSpec.makeMeasureSpec(localLayoutParams.height, 1073741824); ; j = View.MeasureSpec.makeMeasureSpec(0, 0))
    {
      this.hos.measure(i, j);
      this.hos.layout(getLeft() + getPaddingLeft(), 0, getRight() - getPaddingRight(), this.hos.getMeasuredHeight());
      return;
    }
  }

  private void oy(int paramInt)
  {
    if ((this.hot == null) || (this.hot.getCount() == 0) || (!this.hod));
    int i;
    int k;
    long l1;
    label123: int m;
    do
    {
      do
        return;
      while ((h)getChildAt(0) == null);
      i = paramInt - this.hom;
      if (i < 0)
        i = paramInt;
      int j = paramInt + this.hom;
      if (j >= this.hot.getCount())
        j = paramInt;
      if (this.cUE == 0)
        break label334;
      if (this.cUE >= 0)
        break label290;
      this.hot.or(paramInt);
      if (getChildAt(this.hom).getTop() > 0)
        break;
      long l3 = this.hot.or(j);
      k = j;
      l1 = l3;
      if (this.hoi != l1)
      {
        this.hos = this.hot.a(k, this.hos, this);
        aOo();
        this.hoi = l1;
      }
      m = getChildCount();
    }
    while (m == 0);
    Object localObject1 = null;
    int n = 99999;
    int i1 = 0;
    label182: h localh;
    int i4;
    label219: Object localObject2;
    int i5;
    if (i1 < m)
    {
      localh = (h)super.getChildAt(i1);
      if (this.hof)
      {
        i4 = localh.getTop() - getPaddingTop();
        if ((i4 < 0) || (!(localh.getView() instanceof f)) || (i4 >= n))
          break label525;
        int i6 = i4;
        localObject2 = localh;
        i5 = i6;
      }
    }
    while (true)
    {
      i1 += this.hom;
      localObject1 = localObject2;
      n = i5;
      break label182;
      l1 = this.hot.or(paramInt);
      k = paramInt;
      break label123;
      label290: int i7 = getChildAt(0).getTop();
      if ((i7 > 0) && (i7 < this.cUE))
      {
        long l2 = this.hot.or(i);
        k = i;
        l1 = l2;
        break label123;
      }
      label334: l1 = this.hot.or(paramInt);
      k = paramInt;
      break label123;
      i4 = localh.getTop();
      break label219;
      int i2 = aOn();
      if (localObject1 != null)
      {
        if ((paramInt == 0) && (super.getChildAt(0).getTop() > 0) && (!this.hof))
        {
          this.hoj = 0;
          return;
        }
        if (this.hof)
        {
          this.hoj = Math.min(localObject1.getTop(), i2 + getPaddingTop());
          if (this.hoj < getPaddingTop());
          for (int i3 = i2 + getPaddingTop(); ; i3 = this.hoj)
          {
            this.hoj = i3;
            return;
          }
        }
        this.hoj = Math.min(localObject1.getTop(), i2);
        if (this.hoj < 0);
        while (true)
        {
          this.hoj = i2;
          return;
          i2 = this.hoj;
        }
      }
      this.hoj = i2;
      if (!this.hof)
        break;
      this.hoj += getPaddingTop();
      return;
      label525: i5 = n;
      localObject2 = localObject1;
    }
  }

  private void reset()
  {
    this.hoj = 0;
    this.hos = null;
    this.hoi = -9223372036854775808L;
  }

  public final boolean ax(View paramView)
  {
    if (this.hon != null)
    {
      playSoundEffect(0);
      if (paramView != null)
        paramView.sendAccessibilityEvent(1);
      return true;
    }
    return false;
  }

  public final boolean ay(View paramView)
  {
    if (this.hoo != null);
    for (boolean bool = this.hoo.aOp(); ; bool = false)
    {
      if (bool)
      {
        if (paramView != null)
          paramView.sendAccessibilityEvent(2);
        performHapticFeedback(0);
      }
      return bool;
    }
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    if (Build.VERSION.SDK_INT < 8)
      oy(getFirstVisiblePosition());
    if ((this.hos != null) && (this.hod) && (this.hos.getVisibility() == 0));
    int j;
    int k;
    ArrayList localArrayList;
    for (int i = 1; ; i = 0)
    {
      j = aOn();
      k = this.hoj - j;
      if ((i != 0) && (this.hov))
      {
        this.hoe.left = getPaddingLeft();
        this.hoe.right = (getWidth() - getPaddingRight());
        this.hoe.top = this.hoj;
        this.hoe.bottom = getHeight();
        paramCanvas.save();
        paramCanvas.clipRect(this.hoe);
      }
      super.dispatchDraw(paramCanvas);
      localArrayList = new ArrayList();
      int m = 0;
      int n = getFirstVisiblePosition();
      while (n <= getLastVisiblePosition())
      {
        if (getItemIdAtPosition(n) == -1L)
          localArrayList.add(Integer.valueOf(m));
        n += this.hom;
        m += this.hom;
      }
    }
    int i1 = 0;
    while (true)
    {
      h localh;
      if (i1 < localArrayList.size())
        localh = (h)getChildAt(((Integer)localArrayList.get(i1)).intValue());
      try
      {
        View localView = (View)localh.getTag();
        if ((((f)localh.getChildAt(0)).aOm() == this.hoi) && (localh.getTop() < 0) && (this.hod));
        for (int i4 = 1; ; i4 = 0)
        {
          if ((localView.getVisibility() == 0) && (i4 == 0))
          {
            localView.measure(View.MeasureSpec.makeMeasureSpec(getWidth(), 1073741824 - getPaddingLeft() - getPaddingRight()), View.MeasureSpec.makeMeasureSpec(0, 0));
            localView.layout(getLeft() + getPaddingLeft(), 0, getRight() - getPaddingRight(), localh.getHeight());
            this.hoe.left = getPaddingLeft();
            this.hoe.right = (getWidth() - getPaddingRight());
            this.hoe.bottom = localh.getBottom();
            this.hoe.top = localh.getTop();
            paramCanvas.save();
            paramCanvas.clipRect(this.hoe);
            paramCanvas.translate(getPaddingLeft(), localh.getTop());
            localView.draw(paramCanvas);
            paramCanvas.restore();
          }
          i1++;
          break;
        }
        if ((i != 0) && (this.hov))
        {
          paramCanvas.restore();
          if (this.hos.getWidth() != getWidth() - getPaddingLeft() - getPaddingRight())
          {
            int i2 = View.MeasureSpec.makeMeasureSpec(getWidth(), 1073741824 - getPaddingLeft() - getPaddingRight());
            int i3 = View.MeasureSpec.makeMeasureSpec(0, 0);
            this.hos.measure(i2, i3);
            this.hos.layout(getLeft() + getPaddingLeft(), 0, getRight() - getPaddingRight(), this.hos.getHeight());
          }
          this.hoe.left = getPaddingLeft();
          this.hoe.right = (getWidth() - getPaddingRight());
          this.hoe.bottom = (k + j);
          if (!this.hof)
            break label720;
        }
        label720: for (this.hoe.top = getPaddingTop(); ; this.hoe.top = 0)
        {
          paramCanvas.save();
          paramCanvas.clipRect(this.hoe);
          paramCanvas.translate(getPaddingLeft(), k);
          paramCanvas.saveLayerAlpha(0.0F, 0.0F, paramCanvas.getWidth(), paramCanvas.getHeight(), (int)(255.0F * this.hoj / j), 4);
          this.hos.draw(paramCanvas);
          paramCanvas.restore();
          paramCanvas.restore();
          return;
          if (i != 0)
            break;
          return;
        }
      }
      catch (Exception localException)
      {
      }
    }
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.qv.onItemClick(paramAdapterView, paramView, this.hot.os(paramInt).hQ, paramLong);
  }

  public boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    return this.hop.onItemLongClick(paramAdapterView, paramView, this.hot.os(paramInt).hQ, paramLong);
  }

  public void onItemSelected(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.qw.onItemSelected(paramAdapterView, paramView, this.hot.os(paramInt).hQ, paramLong);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = 1;
    int k;
    if (this.cUu == -1)
      if (this.hoh > 0)
      {
        int j = Math.max(View.MeasureSpec.getSize(paramInt1) - getPaddingLeft() - getPaddingRight(), 0);
        k = j / this.hoh;
        if (k <= 0)
          break label87;
        while ((k != i) && (k * this.hoh + (k - 1) * this.cUD > j))
          k--;
      }
    for (i = 2; ; i = k)
      label87: for (this.hom = i; ; this.hom = this.cUu)
      {
        if (this.hot != null)
          this.hot.setNumColumns(this.hom);
        aOo();
        super.onMeasure(paramInt1, paramInt2);
        return;
      }
  }

  public void onNothingSelected(AdapterView paramAdapterView)
  {
    this.qw.onNothingSelected(paramAdapterView);
  }

  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    GridHeadersGridView.SavedState localSavedState = (GridHeadersGridView.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    this.hod = localSavedState.hoz;
    requestLayout();
  }

  public Parcelable onSaveInstanceState()
  {
    GridHeadersGridView.SavedState localSavedState = new GridHeadersGridView.SavedState(super.onSaveInstanceState());
    localSavedState.hoz = this.hod;
    return localSavedState;
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.hor != null)
      this.hor.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    if (Build.VERSION.SDK_INT >= 8)
      oy(paramInt1);
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (this.hor != null)
      this.hor.onScrollStateChanged(paramAbsListView, paramInt);
    this.dV = paramInt;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = -2;
    switch (0xFF & paramMotionEvent.getAction())
    {
    default:
    case 0:
    case 2:
    case 1:
    }
    label230: 
    do
    {
      while (true)
      {
        return super.onTouchEvent(paramMotionEvent);
        if (this.hoc == null)
          this.hoc = new l(this);
        postDelayed(this.hoc, ViewConfiguration.getTapTimeout());
        int j = (int)paramMotionEvent.getY();
        this.hok = j;
        float f = j;
        if ((this.hos != null) && (f <= this.hos.getBottom()));
        while (true)
        {
          this.hou = i;
          if ((this.hou == -1) || (this.dV == 2))
            break;
          this.fmD = 0;
          return true;
          int k = getFirstVisiblePosition();
          i = 0;
          while (true)
          {
            if (k > getLastVisiblePosition())
              break label230;
            if (getItemIdAtPosition(k) == -1L)
            {
              View localView3 = getChildAt(i);
              int m = localView3.getBottom();
              int n = localView3.getTop();
              if ((f <= m) && (f >= n))
                break;
            }
            k += this.hom;
            i += this.hom;
          }
          i = -1;
        }
        if ((this.hou != -1) && (Math.abs(paramMotionEvent.getY() - this.hok) > this.dC))
        {
          this.fmD = -1;
          View localView2 = ow(this.hou);
          if (localView2 != null)
            localView2.setPressed(false);
          Handler localHandler2 = getHandler();
          if (localHandler2 != null)
            localHandler2.removeCallbacks(this.hob);
          this.hou = -1;
        }
      }
      if (this.fmD == i)
        return true;
    }
    while ((this.fmD == -1) || (this.hou == -1));
    View localView1 = ow(this.hou);
    o localo;
    Object localObject;
    if ((localView1 != null) && (!localView1.hasFocusable()))
    {
      if (this.fmD != 0)
        localView1.setPressed(false);
      if (this.hoq == null)
        this.hoq = new o(this, (byte)0);
      localo = this.hoq;
      localo.fnd = this.hou;
      localo.arI();
      if ((this.fmD == 0) && (this.fmD == 1))
        break label552;
      Handler localHandler1 = getHandler();
      if (localHandler1 != null)
      {
        if (this.fmD != 0)
          break label535;
        localObject = this.hoc;
        localHandler1.removeCallbacks((Runnable)localObject);
      }
      if (this.nP)
        break label544;
      this.fmD = 1;
      localView1.setPressed(true);
      setPressed(true);
      if (this.gBL != null)
        removeCallbacks(this.gBL);
      this.gBL = new j(this, localView1, localo);
      postDelayed(this.gBL, ViewConfiguration.getPressedStateDuration());
    }
    while (true)
    {
      this.fmD = -1;
      return true;
      label535: localObject = this.hob;
      break;
      label544: this.fmD = -1;
      continue;
      label552: if (!this.nP)
        localo.run();
    }
  }

  public final View ow(int paramInt)
  {
    if (paramInt == -2)
      return this.hos;
    try
    {
      View localView = (View)getChildAt(paramInt).getTag();
      return localView;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final int ox(int paramInt)
  {
    return this.hot.ot(paramInt).hQ;
  }

  public void setAdapter(ListAdapter paramListAdapter)
  {
    if ((this.hot != null) && (this.mDataSetObserver != null))
      this.hot.unregisterDataSetObserver(this.mDataSetObserver);
    if (!this.hog)
      this.hof = true;
    Object localObject;
    if ((paramListAdapter instanceof b))
      localObject = (b)paramListAdapter;
    while (true)
    {
      this.hot = new c(getContext(), this, (b)localObject);
      this.hot.registerDataSetObserver(this.mDataSetObserver);
      reset();
      super.setAdapter(this.hot);
      return;
      if ((paramListAdapter instanceof t))
        localObject = new u((t)paramListAdapter);
      else
        localObject = new r(paramListAdapter);
    }
  }

  public void setClipToPadding(boolean paramBoolean)
  {
    super.setClipToPadding(paramBoolean);
    this.hof = paramBoolean;
    this.hog = true;
  }

  public void setColumnWidth(int paramInt)
  {
    super.setColumnWidth(paramInt);
    this.hoh = paramInt;
  }

  public void setHorizontalSpacing(int paramInt)
  {
    super.setHorizontalSpacing(paramInt);
    this.cUD = paramInt;
  }

  public void setNumColumns(int paramInt)
  {
    super.setNumColumns(paramInt);
    this.hol = true;
    this.cUu = paramInt;
    if ((paramInt != -1) && (this.hot != null))
      this.hot.setNumColumns(paramInt);
  }

  public void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.qv = paramOnItemClickListener;
    super.setOnItemClickListener(this);
  }

  public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener paramOnItemLongClickListener)
  {
    this.hop = paramOnItemLongClickListener;
    super.setOnItemLongClickListener(this);
  }

  public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener paramOnItemSelectedListener)
  {
    this.qw = paramOnItemSelectedListener;
    super.setOnItemSelectedListener(this);
  }

  public void setOnScrollListener(AbsListView.OnScrollListener paramOnScrollListener)
  {
    this.hor = paramOnScrollListener;
  }

  public void setVerticalSpacing(int paramInt)
  {
    super.setVerticalSpacing(paramInt);
    this.cUE = paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gridviewheaders.GridHeadersGridView
 * JD-Core Version:    0.6.2
 */