package com.tencent.mm.pluginsdk.ui;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public final class e
  implements AbsListView.OnScrollListener
{
  private AbsListView.OnScrollListener fjY;
  private ArrayList fjZ = new ArrayList();

  public e()
  {
    this(null);
  }

  public e(AbsListView.OnScrollListener paramOnScrollListener)
  {
    this.fjY = paramOnScrollListener;
  }

  private void cg(boolean paramBoolean)
  {
    int i = 0;
    if (i < this.fjZ.size())
    {
      WeakReference localWeakReference = (WeakReference)this.fjZ.get(i);
      if (localWeakReference != null)
      {
        f localf = (f)localWeakReference.get();
        if (localf != null)
          localf.onScrollStateChanged(paramBoolean);
      }
      while (true)
      {
        i++;
        break;
        this.fjZ.remove(i);
        continue;
        this.fjZ.remove(i);
      }
    }
  }

  public final void a(f paramf)
  {
    this.fjZ.add(new WeakReference(paramf));
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.fjY != null)
      this.fjY.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (paramInt == 2)
      cg(true);
    while (true)
    {
      if (this.fjY != null)
        this.fjY.onScrollStateChanged(paramAbsListView, paramInt);
      return;
      cg(false);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.e
 * JD-Core Version:    0.6.2
 */