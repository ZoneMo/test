package android.support.v4.view.a;

import android.os.Build.VERSION;
import java.util.List;

public final class g
{
  private static final h fo = new k();
  private final Object fp;

  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      fo = new i();
      return;
    }
  }

  public g()
  {
    this.fp = fo.a(this);
  }

  public g(Object paramObject)
  {
    this.fp = paramObject;
  }

  public static a au()
  {
    return null;
  }

  public static boolean av()
  {
    return false;
  }

  public static List aw()
  {
    return null;
  }

  public final Object at()
  {
    return this.fp;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.a.g
 * JD-Core Version:    0.6.2
 */