package com.tencent.mm.ui.tools;

final class eb
  implements Runnable
{
  eb(MaskImageButton paramMaskImageButton)
  {
  }

  public final void run()
  {
    this.hlE.setPressed(false);
    this.hlE.invalidate();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.eb
 * JD-Core Version:    0.6.2
 */