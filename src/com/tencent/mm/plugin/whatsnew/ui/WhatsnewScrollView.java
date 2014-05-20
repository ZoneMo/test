package com.tencent.mm.plugin.whatsnew.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.ScrollView;

public class WhatsnewScrollView extends ScrollView
{
  private n fgg = null;
  private int fgh = 100;
  private int fgi;
  private Context mContext;

  public WhatsnewScrollView(Context paramContext)
  {
    this(paramContext, null);
    this.mContext = paramContext;
    apg();
  }

  public WhatsnewScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    apg();
  }

  private void apg()
  {
    this.fgi = ((int)(this.mContext.getResources().getDisplayMetrics().density * this.fgh));
  }

  public final void a(n paramn)
  {
    this.fgg = paramn;
  }

  public final void jW(int paramInt)
  {
    this.fgi = paramInt;
  }

  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.fgg != null)
      this.fgg.aM(paramInt2, paramInt4);
  }

  @TargetApi(9)
  protected boolean overScrollBy(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, boolean paramBoolean)
  {
    int i = paramInt4 + paramInt2;
    int j = -paramInt8;
    int k;
    if (i > paramInt8 + paramInt6)
      k = 1;
    while (k != 0)
    {
      return super.overScrollBy(paramInt1, paramInt2 / 2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, this.fgi, paramBoolean);
      k = 0;
      if (i < j)
        k = 1;
    }
    return super.overScrollBy(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, this.fgi, paramBoolean);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.whatsnew.ui.WhatsnewScrollView
 * JD-Core Version:    0.6.2
 */