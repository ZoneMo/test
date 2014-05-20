package com.tencent.mm.plugin.wallet.ui;

import android.text.method.NumberKeyListener;

final class f extends NumberKeyListener
{
  f(EditHintView paramEditHintView)
  {
  }

  protected final char[] getAcceptedChars()
  {
    return new char[] { 49, 50, 51, 52, 53, 54, 55, 56, 57, 48, 45 };
  }

  public final int getInputType()
  {
    return 3;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.f
 * JD-Core Version:    0.6.2
 */