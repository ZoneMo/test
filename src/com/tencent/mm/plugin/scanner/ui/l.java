package com.tencent.mm.plugin.scanner.ui;

import android.os.Handler;
import android.os.Message;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import com.tencent.mm.sdk.platformtools.aa;

final class l extends Handler
{
  l(BaseScanUI paramBaseScanUI)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if ((paramMessage == null) || (paramMessage.what != 1) || (BaseScanUI.g(this.ecu) == null) || (BaseScanUI.h(this.ecu) == null) || (!BaseScanUI.b(this.ecu)))
      return;
    if ((BaseScanUI.f(this.ecu) == null) || (BaseScanUI.f(this.ecu).aay() <= 0))
    {
      aa.w("MicroMsg.scanner.ScanBaseUI", "startAnimHandler scanMode == null");
      this.ecu.aad();
      return;
    }
    BaseScanUI.g(this.ecu).setVisibility(0);
    BaseScanUI.h(this.ecu).setRepeatCount(-1);
    BaseScanUI.h(this.ecu).setDuration(2600L);
    BaseScanUI.g(this.ecu).startAnimation(BaseScanUI.h(this.ecu));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.l
 * JD-Core Version:    0.6.2
 */