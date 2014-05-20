package com.tencent.mm.plugin.scanner.ui;

import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.network.ah;

final class a extends ah
{
  a(BaseScanUI paramBaseScanUI)
  {
  }

  public final void ct(int paramInt)
  {
    new Handler(Looper.getMainLooper()).post(new b(this, paramInt));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.a
 * JD-Core Version:    0.6.2
 */