package com.tencent.mm.plugin.wallet.ui;

import android.text.method.NumberKeyListener;

final class e extends NumberKeyListener
{
  e(EditHintView paramEditHintView)
  {
  }

  protected final char[] getAcceptedChars()
  {
    return new char[] { 49, 50, 51, 52, 53, 54, 55, 56, 57, 48 };
  }

  public final int getInputType()
  {
    return 18;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.e
 * JD-Core Version:    0.6.2
 */