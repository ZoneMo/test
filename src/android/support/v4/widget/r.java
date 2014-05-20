package android.support.v4.widget;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.OverScroller;

class r
  implements p
{
  public final int A(Object paramObject)
  {
    return ((OverScroller)paramObject).getCurrX();
  }

  public final int B(Object paramObject)
  {
    return ((OverScroller)paramObject).getCurrY();
  }

  public final boolean C(Object paramObject)
  {
    return ((OverScroller)paramObject).computeScrollOffset();
  }

  public final void D(Object paramObject)
  {
    ((OverScroller)paramObject).abortAnimation();
  }

  public final int E(Object paramObject)
  {
    return ((OverScroller)paramObject).getFinalX();
  }

  public final int F(Object paramObject)
  {
    return ((OverScroller)paramObject).getFinalY();
  }

  public final void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    ((OverScroller)paramObject).startScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }

  public final Object b(Context paramContext, Interpolator paramInterpolator)
  {
    if (paramInterpolator != null)
      return new OverScroller(paramContext, paramInterpolator);
    return new OverScroller(paramContext);
  }

  public final boolean x(Object paramObject)
  {
    return ((OverScroller)paramObject).isFinished();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.r
 * JD-Core Version:    0.6.2
 */