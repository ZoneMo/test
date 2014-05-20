package com.tencent.mm.plugin.search.model;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import com.tencent.mm.i.i;
import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.model.dv;
import com.tencent.mm.model.dw;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import java.util.HashMap;

public final class at
  implements bb
{
  private ap egM = null;
  private y ein = new y();
  private ag eio = null;
  private b eip = null;
  private boolean eiq = false;
  private boolean eir = false;
  private g eis = new av(this);
  private BroadcastReceiver eit = new aw(this);
  private Runnable eiu = new ax(this);
  private dw eiv = new ay(this);

  public static af a(String paramString, ad paramad, Handler paramHandler)
  {
    return aaX().eio.a(paramString, paramad, paramHandler);
  }

  public static af a(String paramString, aq paramaq)
  {
    return aaX().eip.a(paramString, paramaq);
  }

  public static af a(String paramString, boolean paramBoolean, ad paramad, Handler paramHandler)
  {
    return aaX().eip.a(paramString, paramBoolean, paramad, paramHandler);
  }

  private static at aaX()
  {
    at localat = (at)be.uh().dN("plugin.search");
    if (localat == null)
    {
      localat = new at();
      be.uh().a(i.class.getName(), localat);
    }
    return localat;
  }

  public static boolean aaY()
  {
    return aaX().eiq;
  }

  public static boolean aaZ()
  {
    return aaX().eir;
  }

  private void aba()
  {
    this.eio = new ag(this.ein, this.egM);
    this.eip = new b(this.ein, this.egM);
    this.ein.a(196607, new ac(this.egM));
    this.ein.start();
  }

  public static void c(af paramaf)
  {
    aaX().ein.a(paramaf);
  }

  public final void N(boolean paramBoolean)
  {
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
    this.egM = new ap(paramString2);
    this.ein.init();
    this.ein.j(this.eiu);
    a.ayH().a("Activate", this.eis);
    IntentFilter localIntentFilter1 = new IntentFilter("android.intent.action.BATTERY_CHANGED");
    int i = al.getContext().registerReceiver(null, localIntentFilter1).getIntExtra("status", -1);
    boolean bool;
    if ((i == 2) || (i == 5))
    {
      bool = true;
      this.eiq = bool;
      IntentFilter localIntentFilter2 = new IntentFilter();
      localIntentFilter2.addAction("android.intent.action.ACTION_POWER_CONNECTED");
      localIntentFilter2.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
      al.getContext().registerReceiver(this.eit, localIntentFilter2);
      if (cj.c((Integer)be.uz().sr().get(15)) != 0)
        break label184;
      be.uA().a(38, new au(this));
    }
    while (true)
    {
      be.ui().a(this.eiv);
      return;
      bool = false;
      break;
      label184: aba();
    }
  }

  public final void qy()
  {
    be.ui().b(this.eiv);
    al.getContext().unregisterReceiver(this.eit);
    a.ayH().b("Activate", this.eis);
    this.ein.quit();
    if (this.eio != null)
      this.eio.close();
    this.eio = null;
    if (this.eip != null)
      this.eip.close();
    this.eip = null;
    if (this.egM != null)
      this.egM.close();
    this.egM = null;
  }

  public final HashMap qz()
  {
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.at
 * JD-Core Version:    0.6.2
 */