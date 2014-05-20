package com.tencent.mm.ui.base;

import android.view.View;
import android.widget.PopupWindow;
import com.tencent.mm.sdk.platformtools.aa;

public final class ce extends PopupWindow
{
  public ce(View paramView)
  {
    super(paramView);
  }

  public ce(View paramView, int paramInt1, int paramInt2)
  {
    super(paramView, paramInt1, paramInt2);
  }

  public ce(View paramView, int paramInt1, int paramInt2, byte paramByte)
  {
    super(paramView, paramInt1, paramInt2, true);
  }

  public final void dismiss()
  {
    try
    {
      super.dismiss();
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.MMPopupWindow", "dismiss exception, e = " + localException.getMessage());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.ce
 * JD-Core Version:    0.6.2
 */