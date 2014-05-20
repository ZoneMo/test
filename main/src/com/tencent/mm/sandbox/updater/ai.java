package com.tencent.mm.sandbox.updater;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.i.i;
import com.tencent.mm.model.cd;
import com.tencent.mm.network.n;
import com.tencent.mm.network.r;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.j;
import junit.framework.Assert;

final class ai
  implements cd
{
  ai(Updater paramUpdater, com.tencent.mm.sandbox.a.a parama)
  {
  }

  public final void a(r paramr)
  {
    if (paramr == null)
      Assert.assertTrue("updater invalid assert", false);
    ((NotificationManager)this.gbP.getContext().getSystemService("notification")).cancel(34);
    aa.d("MicroMsg.Updater", "go to  AppUpdaterUI");
    Intent localIntent = new Intent(this.gbP.getContext(), AppUpdaterUI.class);
    localIntent.putExtra("intent_short_ips", Updater.ayG());
    localIntent.putExtra("intent_client_version", com.tencent.mm.protocal.a.fxr);
    localIntent.putExtra("intent_extra_session", paramr.wZ().uo());
    localIntent.putExtra("intent_extra_cookie", paramr.wZ().wY());
    localIntent.putExtra("intent_extra_uin", paramr.wZ().sd());
    localIntent.putExtra("intent_update_type", Updater.b(this.gbP));
    localIntent.putExtra("intent_extra_desc", this.gbO.ayu());
    localIntent.putExtra("intent_extra_md5", this.gbO.ays());
    localIntent.putExtra("intent_extra_size", this.gbO.ayr());
    localIntent.putExtra("intent_extra_download_url", this.gbO.ayv());
    localIntent.putExtra("intent_extra_patchInfo", this.gbO.ayw());
    localIntent.putExtra("intent_extra_updateMode", j.bKs);
    localIntent.putExtra("intent_extra_marketUrl", j.gcn);
    this.gbP.getContext().startActivity(localIntent);
    i.rX().e(262145, true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.ai
 * JD-Core Version:    0.6.2
 */