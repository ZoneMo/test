package com.tencent.mm.pluginsdk.ui.chat;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.c.a.gm;
import com.tencent.mm.pluginsdk.ag;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pluginsdk.model.app.u;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.x.b;

public final class az
  implements View.OnClickListener
{
  private Context context;

  public az(Context paramContext)
  {
    this.context = paramContext;
  }

  public final void onClick(View paramView)
  {
    int i = 1;
    Object localObject = paramView.getTag();
    bc localbc;
    if ((localObject instanceof bc))
    {
      localbc = (bc)localObject;
      if ((localbc == null) || (paramView == null))
      {
        aa.w("MicroMsg.SourceClickListener", "localAppRedirectHandle: but info or v is null");
        i = 0;
        label38: if (i == 0)
        {
          String str2 = u.b(this.context, localbc.appId, localbc.chI);
          gm localgm2 = new gm();
          localgm2.bQH.bQI = str2;
          localgm2.bQH.context = this.context;
          com.tencent.mm.sdk.b.a.ayH().f(localgm2);
        }
      }
    }
    bb localbb;
    ag localag;
    do
    {
      do
      {
        return;
        if ("wx485a97c844086dc9".equals(localbc.appId))
        {
          Intent localIntent1 = new Intent();
          localIntent1.putExtra("shake_music", i);
          com.tencent.mm.ak.a.b(this.context, "shake", ".ui.ShakeReportUI", localIntent1);
          break label38;
        }
        if ("wxfbc915ff7c30e335".equals(localbc.appId))
        {
          if (b.Bh())
            break label38;
          Intent localIntent5 = new Intent();
          localIntent5.putExtra("BaseScanUI_select_scan_mode", i);
          com.tencent.mm.ak.a.b(this.context, "scanner", ".ui.BaseScanUI", localIntent5);
          break label38;
        }
        if ("wx482a4001c37e2b74".equals(localbc.appId))
        {
          if (b.Bh())
            break label38;
          Intent localIntent4 = new Intent();
          localIntent4.putExtra("BaseScanUI_select_scan_mode", 2);
          com.tencent.mm.ak.a.b(this.context, "scanner", ".ui.BaseScanUI", localIntent4);
          break label38;
        }
        if ("wx751a1acca5688ba3".equals(localbc.appId))
        {
          if (b.Bh())
            break label38;
          Intent localIntent3 = new Intent();
          localIntent3.putExtra("BaseScanUI_select_scan_mode", 5);
          com.tencent.mm.ak.a.b(this.context, "scanner", ".ui.BaseScanUI", localIntent3);
          break label38;
        }
        if (!"wxaf060266bfa9a35c".equals(localbc.appId))
          break;
        if (b.Bi())
          break label38;
        Intent localIntent2 = new Intent();
        localIntent2.putExtra("shake_tv", i);
        com.tencent.mm.ak.a.b(this.context, "shake", ".ui.ShakeReportUI", localIntent2);
        break label38;
      }
      while (!(localObject instanceof bb));
      localbb = (bb)localObject;
      String str1 = u.b(this.context, localbb.appId, localbb.chI);
      gm localgm1 = new gm();
      localgm1.bQH.bQI = str1;
      localgm1.bQH.context = this.context;
      com.tencent.mm.sdk.b.a.ayH().f(localgm1);
      localag = h.apq();
    }
    while (localag == null);
    localag.a(this.context, localbb.appId, localbb.pkgName, localbb.bPT, localbb.fra, localbb.bLN, 5, localbb.frb);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.az
 * JD-Core Version:    0.6.2
 */