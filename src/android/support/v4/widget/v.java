package android.support.v4.widget;

import android.view.View;

final class v extends af
{
  private v(SlidingPaneLayout paramSlidingPaneLayout)
  {
  }

  public final void b(View paramView, float paramFloat)
  {
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)paramView.getLayoutParams();
    int i = this.gw.getPaddingLeft() + localLayoutParams.leftMargin;
    if ((paramFloat > 0.0F) || ((paramFloat == 0.0F) && (SlidingPaneLayout.c(this.gw) > 0.5F)))
      i += SlidingPaneLayout.e(this.gw);
    SlidingPaneLayout.b(this.gw).e(i, paramView.getTop());
    this.gw.invalidate();
  }

  public final void c(View paramView, int paramInt)
  {
    SlidingPaneLayout.a(this.gw, paramInt);
    this.gw.invalidate();
  }

  public final int d(View paramView, int paramInt)
  {
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)SlidingPaneLayout.d(this.gw).getLayoutParams();
    int i = this.gw.getPaddingLeft() + localLayoutParams.leftMargin;
    int j = i + SlidingPaneLayout.e(this.gw);
    return Math.min(Math.max(paramInt, i), j);
  }

  public final void d(int paramInt1, int paramInt2)
  {
    SlidingPaneLayout.b(this.gw).e(SlidingPaneLayout.d(this.gw), paramInt2);
  }

  public final void s(int paramInt)
  {
    if (SlidingPaneLayout.b(this.gw).aL() == 0)
    {
      if (SlidingPaneLayout.c(this.gw) == 0.0F)
      {
        this.gw.A(SlidingPaneLayout.d(this.gw));
        SlidingPaneLayout localSlidingPaneLayout2 = this.gw;
        SlidingPaneLayout.d(this.gw);
        localSlidingPaneLayout2.aI();
        SlidingPaneLayout.a(this.gw, false);
      }
    }
    else
      return;
    SlidingPaneLayout localSlidingPaneLayout1 = this.gw;
    SlidingPaneLayout.d(this.gw);
    localSlidingPaneLayout1.aH();
    SlidingPaneLayout.a(this.gw, true);
  }

  public final boolean w(View paramView)
  {
    if (SlidingPaneLayout.a(this.gw))
      return false;
    return ((SlidingPaneLayout.LayoutParams)paramView.getLayoutParams()).gy;
  }

  public final void x(View paramView)
  {
    this.gw.aJ();
  }

  public final int y(View paramView)
  {
    return SlidingPaneLayout.e(this.gw);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.v
 * JD-Core Version:    0.6.2
 */