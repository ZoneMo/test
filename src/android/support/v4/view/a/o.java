package android.support.v4.view.a;

import android.os.Build.VERSION;

public final class o
{
  private static final r ft = new t();
  private final Object fu;

  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      ft = new s();
      return;
    }
    if (Build.VERSION.SDK_INT >= 15)
    {
      ft = new q();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      ft = new p();
      return;
    }
  }

  private o(Object paramObject)
  {
    this.fu = paramObject;
  }

  public static o ay()
  {
    return new o(ft.obtain());
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    o localo;
    do
    {
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        localo = (o)paramObject;
        if (this.fu != null)
          break;
      }
      while (localo.fu == null);
      return false;
    }
    while (this.fu.equals(localo.fu));
    return false;
  }

  public final int hashCode()
  {
    if (this.fu == null)
      return 0;
    return this.fu.hashCode();
  }

  public final void setFromIndex(int paramInt)
  {
    ft.c(this.fu, paramInt);
  }

  public final void setItemCount(int paramInt)
  {
    ft.d(this.fu, paramInt);
  }

  public final void setScrollable(boolean paramBoolean)
  {
    ft.f(this.fu, paramBoolean);
  }

  public final void setToIndex(int paramInt)
  {
    ft.e(this.fu, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.a.o
 * JD-Core Version:    0.6.2
 */