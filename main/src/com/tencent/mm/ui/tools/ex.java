package com.tencent.mm.ui.tools;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.tencent.mm.i;

final class ex
  implements Runnable
{
  ex(ew paramew, View paramView)
  {
  }

  public final void run()
  {
    ((InputMethodManager)this.hma.hlY.getSystemService("input_method")).showSoftInput(this.dXr.findViewById(i.arK), 0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ex
 * JD-Core Version:    0.6.2
 */