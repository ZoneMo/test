package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build.VERSION;

public final class j
{
  private static final m gb = new k();
  private Object ga;

  static
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      gb = new l();
      return;
    }
  }

  public j(Context paramContext)
  {
    this.ga = gb.c(paramContext);
  }

  public final boolean aG()
  {
    return gb.z(this.ga);
  }

  public final boolean b(float paramFloat)
  {
    return gb.a(this.ga, paramFloat);
  }

  public final boolean draw(Canvas paramCanvas)
  {
    return gb.a(this.ga, paramCanvas);
  }

  public final void finish()
  {
    gb.y(this.ga);
  }

  public final boolean isFinished()
  {
    return gb.x(this.ga);
  }

  public final void setSize(int paramInt1, int paramInt2)
  {
    gb.a(this.ga, paramInt1, paramInt2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.j
 * JD-Core Version:    0.6.2
 */