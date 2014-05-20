package com.tencent.mm.ui.b;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

public final class a
{
  private static b hcB;
  private static b hcC;

  public static void c(Activity paramActivity, View paramView)
  {
    View localView = paramActivity.getWindow().getDecorView();
    hcB = b.cb(paramActivity);
    hcC = b.cb(paramActivity);
    int[] arrayOfInt1 = new int[2];
    paramView.getLocationOnScreen(arrayOfInt1);
    Rect localRect = new Rect();
    paramActivity.getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect);
    int i = localRect.top;
    TypedValue localTypedValue = new TypedValue();
    int j;
    if (Build.VERSION.SDK_INT >= 11)
      j = paramActivity.getActionBar().getHeight();
    while (true)
    {
      int k = arrayOfInt1[1] - i - j;
      hcB.setHeight(k);
      int[] arrayOfInt2 = new int[2];
      if ((paramActivity instanceof Activity))
      {
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        ((Activity)paramActivity).getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
        arrayOfInt2[0] = localDisplayMetrics.widthPixels;
        arrayOfInt2[1] = localDisplayMetrics.heightPixels;
      }
      while (true)
      {
        int m = arrayOfInt2[1] - arrayOfInt1[1] - paramView.getHeight();
        hcC.setHeight(m);
        hcB.showAtLocation(localView, 48, 0, j + i);
        hcC.showAtLocation(localView, 80, 0, 0);
        return;
        if (!paramActivity.getTheme().resolveAttribute(16843499, localTypedValue, true))
          break label282;
        j = TypedValue.complexToDimensionPixelSize(localTypedValue.data, paramActivity.getResources().getDisplayMetrics());
        break;
        Display localDisplay = ((WindowManager)paramActivity.getSystemService("window")).getDefaultDisplay();
        arrayOfInt2[0] = localDisplay.getWidth();
        arrayOfInt2[1] = localDisplay.getHeight();
      }
      label282: j = 0;
    }
  }

  public static void dismiss()
  {
    if (hcB != null)
    {
      hcB.setAnimationStyle(-1);
      hcB.dismiss();
      hcB = null;
    }
    if (hcC != null)
    {
      hcC.setAnimationStyle(-1);
      hcC.dismiss();
      hcC = null;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.b.a
 * JD-Core Version:    0.6.2
 */