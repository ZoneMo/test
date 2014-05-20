package com.tencent.mm.ui.account;

import android.widget.ImageView;

final class ly
  implements Runnable
{
  ly(WelcomeSelectView_5_2 paramWelcomeSelectView_5_2)
  {
  }

  public final void run()
  {
    int[] arrayOfInt1 = new int[2];
    WelcomeSelectView_5_2.a(this.guY).getLocationOnScreen(arrayOfInt1);
    int[] arrayOfInt2 = new int[2];
    WelcomeSelectView_5_2.b(this.guY).getLocationOnScreen(arrayOfInt2);
    this.guY.d(WelcomeSelectView_5_2.a(this.guY), arrayOfInt2[1] - arrayOfInt1[1]);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ly
 * JD-Core Version:    0.6.2
 */