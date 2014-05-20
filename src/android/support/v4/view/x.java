package android.support.v4.view;

import android.view.KeyEvent;

final class x extends w
{
  public final boolean h(int paramInt)
  {
    return KeyEvent.metaStateHasModifiers(paramInt, 1);
  }

  public final boolean metaStateHasNoModifiers(int paramInt)
  {
    return KeyEvent.metaStateHasNoModifiers(paramInt);
  }

  public final int normalizeMetaState(int paramInt)
  {
    return KeyEvent.normalizeMetaState(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.x
 * JD-Core Version:    0.6.2
 */