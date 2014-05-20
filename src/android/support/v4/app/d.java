package android.support.v4.app;

import android.view.View;

final class d
  implements k
{
  d(Fragment paramFragment)
  {
  }

  public final View findViewById(int paramInt)
  {
    if (this.aO.aH == null)
      throw new IllegalStateException("Fragment does not have a view");
    return this.aO.aH.findViewById(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.d
 * JD-Core Version:    0.6.2
 */