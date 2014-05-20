package com.tencent.mm.plugin.whatsnew.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.TypedValue;

final class m
{
  private Context context;
  public final int ffT;
  public final int ffU;
  public final int ffV;
  public final int ffW;
  public final int ffX;
  public final int ffY;
  public final int ffZ;
  public final int fga;
  public final int fgb;
  public final int fgc;
  public final int fgd;
  public final int fge;
  public final int fgf;

  public m(Context paramContext)
  {
    this.context = paramContext;
    this.ffT = jV(40);
    this.ffU = jV(100);
    this.ffV = jV(15);
    this.ffW = jV(30);
    this.ffX = jV(30);
    this.ffY = jV(3);
    this.ffZ = (12 * this.ffV);
    this.fga = jV(45);
    this.fgc = jV(5);
    this.fgb = this.ffW;
    this.fgd = jV(15);
    this.fge = jV(92);
    int i = paramContext.getResources().getDisplayMetrics().densityDpi;
    paramContext.getResources().getDisplayMetrics();
    if (i <= 160)
    {
      this.fgf = jV(9);
      return;
    }
    this.fgf = jV(10);
  }

  private int jV(int paramInt)
  {
    return (int)Math.floor(0.5D + TypedValue.applyDimension(1, paramInt, this.context.getResources().getDisplayMetrics()));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.whatsnew.ui.m
 * JD-Core Version:    0.6.2
 */