package android.support.v4.view;

import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewParent;

class bb
  implements bi
{
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.postInvalidateDelayed(ag(), paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void a(View paramView, int paramInt, Paint paramPaint)
  {
  }

  public void a(View paramView, Paint paramPaint)
  {
  }

  public void a(View paramView, a parama)
  {
  }

  public void a(View paramView, Runnable paramRunnable)
  {
    paramView.postDelayed(paramRunnable, ag());
  }

  public boolean a(View paramView, int paramInt)
  {
    return false;
  }

  long ag()
  {
    return 10L;
  }

  public int e(View paramView)
  {
    return 2;
  }

  public void f(View paramView)
  {
    paramView.postInvalidateDelayed(ag());
  }

  public int g(View paramView)
  {
    return 0;
  }

  public void h(View paramView)
  {
  }

  public int i(View paramView)
  {
    return 0;
  }

  public int j(View paramView)
  {
    return 0;
  }

  public ViewParent k(View paramView)
  {
    return paramView.getParent();
  }

  public boolean l(View paramView)
  {
    Drawable localDrawable = paramView.getBackground();
    boolean bool = false;
    if (localDrawable != null)
    {
      int i = localDrawable.getOpacity();
      bool = false;
      if (i == -1)
        bool = true;
    }
    return bool;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.bb
 * JD-Core Version:    0.6.2
 */