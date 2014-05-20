package com.tencent.mm.ui.transmit;

import android.content.Intent;
import com.tencent.mm.pluginsdk.model.app.ReportUtil;
import com.tencent.mm.pluginsdk.model.app.ReportUtil.ReportArgs;
import com.tencent.mm.pluginsdk.ui.applet.r;

final class ah
  implements r
{
  ah(SendAppMessageWrapperUI paramSendAppMessageWrapperUI)
  {
  }

  public final void a(boolean paramBoolean, String paramString, int paramInt)
  {
    this.hrX.setResult(-1);
    this.hrX.finish();
    ReportUtil.ReportArgs localReportArgs = ReportUtil.a(this.hrX.getIntent().getExtras(), 0);
    ReportUtil.a(this.hrX, localReportArgs);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.ah
 * JD-Core Version:    0.6.2
 */