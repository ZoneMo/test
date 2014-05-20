package com.tencent.mm.pluginsdk.ui;

import android.view.WindowManager;

final class az
  implements Runnable
{
  private az(SmileySubGrid paramSmileySubGrid)
  {
  }

  public final void run()
  {
    if (!SmileySubGrid.b(this.fnb))
    {
      SmileySubGrid.g(this.fnb).addView(SmileySubGrid.e(this.fnb), SmileySubGrid.f(this.fnb));
      SmileySubGrid.h(this.fnb);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.az
 * JD-Core Version:    0.6.2
 */