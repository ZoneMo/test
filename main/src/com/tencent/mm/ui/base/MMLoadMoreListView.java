package com.tencent.mm.ui.base;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ListView;

public class MMLoadMoreListView extends ListView
{
  private boolean gAA = false;
  private bw gAz = null;

  public MMLoadMoreListView(Context paramContext)
  {
    super(paramContext);
  }

  public MMLoadMoreListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public MMLoadMoreListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public static void aHe()
  {
  }

  public final void a(bw parambw)
  {
    this.gAz = parambw;
  }

  public final boolean aHc()
  {
    return this.gAA;
  }

  public final void aHd()
  {
    this.gAA = true;
    setOnScrollListener(new bv(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMLoadMoreListView
 * JD-Core Version:    0.6.2
 */