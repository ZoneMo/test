package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.support.v7.app.c;
import android.support.v7.internal.view.a;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.mm.d;
import com.tencent.mm.k;

public final class ScrollingTabContainerView extends HorizontalScrollView
  implements w
{
  private final LayoutInflater ge;
  private int lC;
  Runnable mD;
  private ao pn;
  private LinearLayout po;
  private ap pp;
  private boolean pq;
  int pr;
  int ps;
  private int pt;

  public ScrollingTabContainerView(Context paramContext)
  {
    super(paramContext);
    this.ge = LayoutInflater.from(paramContext);
    setHorizontalScrollBarEnabled(false);
    a locala = a.d(paramContext);
    E(locala.bs());
    this.ps = locala.bu();
    this.po = ((LinearLayout)this.ge.inflate(k.aRP, this, false));
    addView(this.po, new ViewGroup.LayoutParams(-2, -1));
  }

  private void E(int paramInt)
  {
    this.lC = paramInt;
    requestLayout();
  }

  private ScrollingTabContainerView.TabView a(c paramc, boolean paramBoolean)
  {
    ScrollingTabContainerView.TabView localTabView = (ScrollingTabContainerView.TabView)this.ge.inflate(k.aRO, this.po, false);
    localTabView.a(this, paramc, paramBoolean);
    if (paramBoolean)
    {
      localTabView.setBackgroundDrawable(null);
      localTabView.setLayoutParams(new AbsListView.LayoutParams(-1, this.lC));
      return localTabView;
    }
    localTabView.setFocusable(true);
    if (this.pn == null)
      this.pn = new ao(this, (byte)0);
    localTabView.setOnClickListener(this.pn);
    return localTabView;
  }

  private boolean cO()
  {
    return (this.pp != null) && (this.pp.getParent() == this);
  }

  private boolean dp()
  {
    if (!cO())
      return false;
    removeView(this.pp);
    addView(this.po, new ViewGroup.LayoutParams(-2, -1));
    N(this.pp.nQ);
    return false;
  }

  public final void N(int paramInt)
  {
    this.pt = paramInt;
    int i = this.po.getChildCount();
    int j = 0;
    if (j < i)
    {
      View localView = this.po.getChildAt(j);
      if (j == paramInt);
      for (boolean bool = true; ; bool = false)
      {
        localView.setSelected(bool);
        if (bool)
          O(paramInt);
        j++;
        break;
      }
    }
  }

  public final void O(int paramInt)
  {
    View localView = this.po.getChildAt(paramInt);
    if (this.mD != null)
      removeCallbacks(this.mD);
    this.mD = new am(this, localView);
    post(this.mD);
  }

  public final void P(int paramInt)
  {
    ((ScrollingTabContainerView.TabView)this.po.getChildAt(paramInt)).update();
    if (this.pp != null)
      ((an)this.pp.lE).notifyDataSetChanged();
    if (this.pq)
      requestLayout();
  }

  public final void b(c paramc, boolean paramBoolean)
  {
    ScrollingTabContainerView.TabView localTabView = a(paramc, false);
    this.po.addView(localTabView, new LinearLayout.LayoutParams(0, -1, 1.0F));
    if (this.pp != null)
      ((an)this.pp.lE).notifyDataSetChanged();
    if (paramBoolean)
      localTabView.setSelected(true);
    if (this.pq)
      requestLayout();
  }

  public final void h(View paramView, int paramInt)
  {
    ((ScrollingTabContainerView.TabView)paramView).dq().select();
  }

  public final void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.mD != null)
      post(this.mD);
  }

  protected final void onConfigurationChanged(Configuration paramConfiguration)
  {
    a locala = a.d(getContext());
    E(locala.bs());
    this.ps = locala.bu();
  }

  public final void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.mD != null)
      removeCallbacks(this.mD);
  }

  public final void onMeasure(int paramInt1, int paramInt2)
  {
    int i = 1;
    int j = View.MeasureSpec.getMode(paramInt1);
    boolean bool;
    label72: label87: int m;
    if (j == 1073741824)
    {
      bool = i;
      setFillViewport(bool);
      int k = this.po.getChildCount();
      if ((k <= i) || ((j != 1073741824) && (j != -2147483648)))
        break label338;
      if (k <= 2)
        break label325;
      this.pr = ((int)(0.4F * View.MeasureSpec.getSize(paramInt1)));
      this.pr = Math.min(this.pr, this.ps);
      m = View.MeasureSpec.makeMeasureSpec(this.lC, 1073741824);
      if ((bool) || (!this.pq))
        break label346;
      label110: if (i == 0)
        break label359;
      this.po.measure(0, m);
      if (this.po.getMeasuredWidth() <= View.MeasureSpec.getSize(paramInt1))
        break label351;
      if (!cO())
      {
        if (this.pp == null)
        {
          ap localap = new ap(getContext(), d.actionDropDownStyle);
          localap.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
          localap.b(this);
          this.pp = localap;
        }
        removeView(this.po);
        addView(this.pp, new ViewGroup.LayoutParams(-2, -1));
        if (this.pp.lE == null)
          this.pp.setAdapter(new an(this, (byte)0));
        if (this.mD != null)
        {
          removeCallbacks(this.mD);
          this.mD = null;
        }
        this.pp.setSelection(this.pt);
      }
    }
    while (true)
    {
      int n = getMeasuredWidth();
      super.onMeasure(paramInt1, m);
      int i1 = getMeasuredWidth();
      if ((bool) && (n != i1))
        N(this.pt);
      return;
      bool = false;
      break;
      label325: this.pr = (View.MeasureSpec.getSize(paramInt1) / 2);
      break label72;
      label338: this.pr = -1;
      break label87;
      label346: i = 0;
      break label110;
      label351: dp();
      continue;
      label359: dp();
    }
  }

  public final void x(boolean paramBoolean)
  {
    this.pq = paramBoolean;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ScrollingTabContainerView
 * JD-Core Version:    0.6.2
 */