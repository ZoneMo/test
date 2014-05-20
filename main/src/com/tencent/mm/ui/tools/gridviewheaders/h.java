package com.tencent.mm.ui.tools.gridviewheaders;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

public final class h extends FrameLayout
{
  private int cUu;
  private int hQ;
  private View[] hnV;
  private boolean hoa;

  public h(c paramc, Context paramContext)
  {
    super(paramContext);
  }

  @SuppressLint({"NewApi"})
  public final void a(View[] paramArrayOfView)
  {
    this.hnV = paramArrayOfView;
  }

  protected final FrameLayout.LayoutParams generateDefaultLayoutParams()
  {
    return new FrameLayout.LayoutParams(-1, -1);
  }

  public final Object getTag()
  {
    return getChildAt(0).getTag();
  }

  public final Object getTag(int paramInt)
  {
    return getChildAt(0).getTag(paramInt);
  }

  public final View getView()
  {
    return getChildAt(0);
  }

  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((this.cUu == 1) || (c.b(this.hnW) == null));
    int i;
    int m;
    do
    {
      return;
      if ((this.hQ % this.cUu == 0) && (!this.hoa))
      {
        this.hoa = true;
        View[] arrayOfView2 = this.hnV;
        int n = arrayOfView2.length;
        for (int i1 = 0; i1 < n; i1++)
          arrayOfView2[i1].measure(paramInt1, paramInt2);
        this.hoa = false;
      }
      i = getMeasuredHeight();
      View[] arrayOfView1 = this.hnV;
      int j = arrayOfView1.length;
      int k = 0;
      m = i;
      while (k < j)
      {
        View localView = arrayOfView1[k];
        if (localView != null)
          m = Math.max(m, localView.getMeasuredHeight());
        k++;
      }
    }
    while (m == i);
    super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(m, 1073741824));
  }

  public final void setNumColumns(int paramInt)
  {
    this.cUu = paramInt;
  }

  public final void setTag(int paramInt, Object paramObject)
  {
    getChildAt(0).setTag(paramInt, paramObject);
  }

  public final void setTag(Object paramObject)
  {
    getChildAt(0).setTag(paramObject);
  }

  public final void x(int paramInt)
  {
    this.hQ = paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gridviewheaders.h
 * JD-Core Version:    0.6.2
 */