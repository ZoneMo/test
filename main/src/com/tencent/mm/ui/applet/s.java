package com.tencent.mm.ui.applet;

import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;

final class s
  implements View.OnTouchListener
{
  int gxF;
  int gxG;
  int gxH = -1 + (this.gxK.widthPixels - p.d(this.gxE).width);
  int gxI = -1 + (this.gxK.heightPixels - p.d(this.gxE).height);
  long gxJ;

  s(p paramp, DisplayMetrics paramDisplayMetrics)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default:
    case 0:
    case 2:
    case 1:
    }
    label233: label369: 
    do
    {
      return false;
      this.gxF = ((int)paramMotionEvent.getRawX() - p.d(this.gxE).x);
      this.gxG = ((int)paramMotionEvent.getRawY() - p.d(this.gxE).y);
      this.gxJ = System.currentTimeMillis();
      return false;
      this.gxH = (-1 + (this.gxK.widthPixels - p.d(this.gxE).width));
      this.gxI = (-1 + (this.gxK.heightPixels - p.d(this.gxE).height));
      p.d(this.gxE).x = ((int)paramMotionEvent.getRawX() - this.gxF);
      p.d(this.gxE).y = ((int)paramMotionEvent.getRawY() - this.gxG);
      WindowManager.LayoutParams localLayoutParams1 = p.d(this.gxE);
      int i;
      int j;
      int k;
      WindowManager.LayoutParams localLayoutParams4;
      if (p.d(this.gxE).x < 0)
      {
        i = 0;
        localLayoutParams1.x = i;
        WindowManager.LayoutParams localLayoutParams2 = p.d(this.gxE);
        if (p.d(this.gxE).x <= this.gxH)
          break label354;
        j = this.gxH;
        localLayoutParams2.x = j;
        WindowManager.LayoutParams localLayoutParams3 = p.d(this.gxE);
        if (p.d(this.gxE).y >= 0)
          break label369;
        k = 0;
        localLayoutParams3.y = k;
        localLayoutParams4 = p.d(this.gxE);
        if (p.d(this.gxE).y <= this.gxI)
          break label384;
      }
      for (int m = this.gxI; ; m = p.d(this.gxE).y)
      {
        localLayoutParams4.y = m;
        p.f(this.gxE).updateViewLayout(p.e(this.gxE), p.d(this.gxE));
        return false;
        i = p.d(this.gxE).x;
        break;
        j = p.d(this.gxE).x;
        break label233;
        k = p.d(this.gxE).y;
        break label265;
      }
    }
    while (System.currentTimeMillis() - this.gxJ >= 300L);
    label265: label354: p.g(this.gxE);
    label384: return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.applet.s
 * JD-Core Version:    0.6.2
 */