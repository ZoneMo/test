package com.tencent.mm.ui.qrcode;

import android.os.Bundle;
import com.tencent.mm.k.a;

final class o extends a
{
  o(ShareToQQUI paramShareToQQUI)
  {
  }

  public final void e(Bundle paramBundle)
  {
    super.e(paramBundle);
  }

  public final void onError(int paramInt, String paramString)
  {
    super.onError(paramInt, paramString);
    if (paramInt == 3)
      ShareToQQUI.d(this.hdz);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.qrcode.o
 * JD-Core Version:    0.6.2
 */