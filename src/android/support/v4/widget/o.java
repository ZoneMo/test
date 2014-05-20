package android.support.v4.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.animation.Interpolator;

public final class o
{
  static final p gg = new q();
  Object gf;

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 14)
    {
      gg = new s();
      return;
    }
    if (i >= 9)
    {
      gg = new r();
      return;
    }
  }

  private o(Context paramContext, Interpolator paramInterpolator)
  {
    this.gf = gg.b(paramContext, paramInterpolator);
  }

  public static o a(Context paramContext, Interpolator paramInterpolator)
  {
    return new o(paramContext, paramInterpolator);
  }

  public final void abortAnimation()
  {
    gg.D(this.gf);
  }

  public final boolean computeScrollOffset()
  {
    return gg.C(this.gf);
  }

  public final int getCurrX()
  {
    return gg.A(this.gf);
  }

  public final int getCurrY()
  {
    return gg.B(this.gf);
  }

  public final int getFinalX()
  {
    return gg.E(this.gf);
  }

  public final int getFinalY()
  {
    return gg.F(this.gf);
  }

  public final boolean isFinished()
  {
    return gg.x(this.gf);
  }

  public final void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    gg.a(this.gf, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.o
 * JD-Core Version:    0.6.2
 */