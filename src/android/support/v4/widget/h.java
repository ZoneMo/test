package android.support.v4.widget;

import android.view.View;

final class h extends af
{
  private final int dL;
  private ac fX;
  private final Runnable fY = new i(this);

  public h(DrawerLayout paramDrawerLayout, int paramInt)
  {
    this.dL = paramInt;
  }

  private void aE()
  {
    int i = 3;
    if (this.dL == i)
      i = 5;
    View localView = this.fQ.r(i);
    if (localView != null)
      this.fQ.u(localView);
  }

  public final void a(ac paramac)
  {
    this.fX = paramac;
  }

  public final void aD()
  {
    this.fQ.removeCallbacks(this.fY);
  }

  public final void aF()
  {
    this.fQ.postDelayed(this.fY, 160L);
  }

  public final void b(View paramView, float paramFloat)
  {
    float f = DrawerLayout.p(paramView);
    int i = paramView.getWidth();
    int j;
    if (DrawerLayout.b(paramView, 3))
      if ((paramFloat > 0.0F) || ((paramFloat == 0.0F) && (f > 0.5F)))
        j = 0;
    while (true)
    {
      this.fX.e(j, paramView.getTop());
      this.fQ.invalidate();
      return;
      j = -i;
      continue;
      j = this.fQ.getWidth();
      if ((paramFloat < 0.0F) || ((paramFloat == 0.0F) && (f < 0.5F)))
        j -= i;
    }
  }

  public final void c(View paramView, int paramInt)
  {
    int i = paramView.getWidth();
    float f;
    if (DrawerLayout.b(paramView, 3))
    {
      f = (i + paramInt) / i;
      this.fQ.a(paramView, f);
      if (f != 0.0F)
        break label79;
    }
    label79: for (int j = 4; ; j = 0)
    {
      paramView.setVisibility(j);
      this.fQ.invalidate();
      return;
      f = (this.fQ.getWidth() - paramInt) / i;
      break;
    }
  }

  public final int d(View paramView, int paramInt)
  {
    if (DrawerLayout.b(paramView, 3))
      return Math.max(-paramView.getWidth(), Math.min(paramInt, 0));
    int i = this.fQ.getWidth();
    return Math.max(i - paramView.getWidth(), Math.min(paramInt, i));
  }

  public final void d(int paramInt1, int paramInt2)
  {
    if ((paramInt1 & 0x1) == 1);
    for (View localView = this.fQ.r(3); ; localView = this.fQ.r(5))
    {
      if ((localView != null) && (this.fQ.o(localView) == 0))
        this.fX.e(localView, paramInt2);
      return;
    }
  }

  public final void s(int paramInt)
  {
    DrawerLayout localDrawerLayout = this.fQ;
    localDrawerLayout.a(paramInt, this.fX.aN());
  }

  public final boolean w(View paramView)
  {
    return (DrawerLayout.s(paramView)) && (DrawerLayout.b(paramView, this.dL)) && (this.fQ.o(paramView) == 0);
  }

  public final void x(View paramView)
  {
    ((DrawerLayout.LayoutParams)paramView.getLayoutParams()).fS = false;
    aE();
  }

  public final int y(View paramView)
  {
    return paramView.getWidth();
  }

  public final int z(View paramView)
  {
    return paramView.getTop();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.h
 * JD-Core Version:    0.6.2
 */