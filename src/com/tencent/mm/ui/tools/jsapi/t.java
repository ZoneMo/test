package com.tencent.mm.ui.tools.jsapi;

import android.content.Intent;
import com.tencent.mm.ak.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;
import java.util.Map;

final class t
  implements h
{
  t(p paramp, ao paramao)
  {
  }

  public final void a(i parami)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(parami.Hr());
    aa.e("MicroMsg.MsgHandler", "doEditAddress, onJSOAuthEnd, retCode = %d", arrayOfObject);
    switch (ag.hpJ[parami.ordinal()])
    {
    default:
      p.a(this.hpx, this.hpy, "edit_address:fail", null);
    case 1:
    }
    Intent localIntent;
    do
    {
      return;
      localIntent = new Intent();
      localIntent.putExtra("req_url", (String)this.hpy.dOk.get("url"));
      localIntent.putExtra("req_app_id", (String)this.hpy.dOk.get("appId"));
      localIntent.putExtra("launch_from_webview", true);
    }
    while (!(p.a(this.hpx) instanceof MMActivity));
    ((MMActivity)p.a(this.hpx)).a(this.hpx);
    a.a(p.a(this.hpx), "wallet", ".address.ui.WalletSelectAddrUI", localIntent, 3, false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.t
 * JD-Core Version:    0.6.2
 */