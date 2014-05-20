package android.support.v7.internal.widget;

import android.util.SparseArray;
import android.view.View;

final class c
{
  private final SparseArray lO = new SparseArray();

  c(AbsSpinnerICS paramAbsSpinnerICS)
  {
  }

  final View F(int paramInt)
  {
    View localView = (View)this.lO.get(paramInt);
    if (localView != null)
      this.lO.delete(paramInt);
    return localView;
  }

  public final void b(int paramInt, View paramView)
  {
    this.lO.put(paramInt, paramView);
  }

  final void clear()
  {
    SparseArray localSparseArray = this.lO;
    int i = localSparseArray.size();
    for (int j = 0; j < i; j++)
    {
      View localView = (View)localSparseArray.valueAt(j);
      if (localView != null)
        AbsSpinnerICS.a(this.lP, localView);
    }
    localSparseArray.clear();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.c
 * JD-Core Version:    0.6.2
 */