package android.support.v4.view;

import android.graphics.Paint;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewParent;

public final class ba
{
  static final bi dZ = new bb();

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 17)
    {
      dZ = new bh();
      return;
    }
    if (i >= 16)
    {
      dZ = new bg();
      return;
    }
    if (i >= 14)
    {
      dZ = new bf();
      return;
    }
    if (i >= 11)
    {
      dZ = new be();
      return;
    }
    if (i >= 9)
    {
      dZ = new bd();
      return;
    }
  }

  public static void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    dZ.a(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public static void a(View paramView, int paramInt, Paint paramPaint)
  {
    dZ.a(paramView, paramInt, paramPaint);
  }

  public static void a(View paramView, Paint paramPaint)
  {
    dZ.a(paramView, paramPaint);
  }

  public static void a(View paramView, a parama)
  {
    dZ.a(paramView, parama);
  }

  public static void a(View paramView, Runnable paramRunnable)
  {
    dZ.a(paramView, paramRunnable);
  }

  public static boolean a(View paramView, int paramInt)
  {
    return dZ.a(paramView, paramInt);
  }

  public static int e(View paramView)
  {
    return dZ.e(paramView);
  }

  public static void f(View paramView)
  {
    dZ.f(paramView);
  }

  public static int g(View paramView)
  {
    return dZ.g(paramView);
  }

  public static void h(View paramView)
  {
    dZ.h(paramView);
  }

  public static int i(View paramView)
  {
    return dZ.i(paramView);
  }

  public static int j(View paramView)
  {
    return dZ.j(paramView);
  }

  public static ViewParent k(View paramView)
  {
    return dZ.k(paramView);
  }

  public static boolean l(View paramView)
  {
    return dZ.l(paramView);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ba
 * JD-Core Version:    0.6.2
 */