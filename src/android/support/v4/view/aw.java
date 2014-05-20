package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.VelocityTracker;

public final class aw
{
  static final az dY = new ax();

  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      dY = new ay();
      return;
    }
  }

  public static float a(VelocityTracker paramVelocityTracker, int paramInt)
  {
    return dY.a(paramVelocityTracker, paramInt);
  }

  public static float b(VelocityTracker paramVelocityTracker, int paramInt)
  {
    return dY.b(paramVelocityTracker, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.aw
 * JD-Core Version:    0.6.2
 */