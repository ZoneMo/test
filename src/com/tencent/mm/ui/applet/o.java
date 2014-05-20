package com.tencent.mm.ui.applet;

import android.content.Context;
import android.view.LayoutInflater;

public final class o
{
  private static int gxx = 0;

  public static void bT(Context paramContext)
  {
    if (gxx > 0)
      return;
    new p(paramContext, LayoutInflater.from(paramContext).inflate(2130903798, null)).show();
    gxx = 1 + gxx;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.applet.o
 * JD-Core Version:    0.6.2
 */