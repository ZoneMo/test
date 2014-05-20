package com.tencent.mm.ui.tools;

import com.tencent.mm.ui.base.v;
import java.util.concurrent.Callable;

final class cm
  implements v
{
  cm(ch paramch, Callable[] paramArrayOfCallable)
  {
  }

  public final void bo(int paramInt)
  {
    if (ImageGalleryUI.b(this.hks.hkn) == null)
      return;
    try
    {
      this.hkt[paramInt].call();
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.cm
 * JD-Core Version:    0.6.2
 */