package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.MotionEvent;

public final class aj
{
  static final am dl = new ak();

  static
  {
    if (Build.VERSION.SDK_INT >= 5)
    {
      dl = new al();
      return;
    }
  }

  public static int a(MotionEvent paramMotionEvent)
  {
    return 0xFF & paramMotionEvent.getAction();
  }

  public static int a(MotionEvent paramMotionEvent, int paramInt)
  {
    return dl.a(paramMotionEvent, paramInt);
  }

  public static int b(MotionEvent paramMotionEvent)
  {
    return (0xFF00 & paramMotionEvent.getAction()) >> 8;
  }

  public static int b(MotionEvent paramMotionEvent, int paramInt)
  {
    return dl.b(paramMotionEvent, paramInt);
  }

  public static float c(MotionEvent paramMotionEvent, int paramInt)
  {
    return dl.c(paramMotionEvent, paramInt);
  }

  public static int c(MotionEvent paramMotionEvent)
  {
    return dl.c(paramMotionEvent);
  }

  public static float d(MotionEvent paramMotionEvent, int paramInt)
  {
    return dl.d(paramMotionEvent, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.aj
 * JD-Core Version:    0.6.2
 */