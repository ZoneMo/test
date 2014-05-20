package com.tencent.mm.app;

import android.app.Application;
import com.tencent.mm.compatible.loader.g;
import com.tencent.mm.compatible.loader.h;
import com.tencent.mm.platformtools.u;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.b;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.at;
import com.tencent.mm.ui.MMActivity;
import java.util.Locale;

public final class ToolsProfile extends h
{
  public static final String bKY = al.getPackageName() + ":tools";
  private static Locale locale;

  public final void bc()
  {
    Locale localLocale = MMActivity.bO(this.cfq.getBaseContext());
    aa.d("MicroMsg.ToolsProfile", "onConfigurationChanged, locale = " + locale.toString() + ", n = " + localLocale.toString());
    if (!localLocale.equals(locale))
    {
      aa.w("MicroMsg.ToolsProfile", "language changed, restart process");
      System.exit(-1);
    }
  }

  public final void onCreate()
  {
    at.azE().a(new i(this), bKY);
    at.azE().a(new j(this), null);
    a.a(new b());
    g.m("mutidex", g.m(al.getContext(), "mutidex"));
    g.m("whatsnew", g.m(al.getContext(), "whatsnew"));
    g.m("shoot", g.m(al.getContext(), "shoot"));
    g.m("qqmail", g.m(al.getContext(), "qqmail"));
    u.load("ImgTools");
    locale = MMActivity.bO(this.cfq.getBaseContext());
    new com.tencent.mm.booter.i(this.cfq.getBaseContext()).on();
  }

  public final String toString()
  {
    return bKY;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.ToolsProfile
 * JD-Core Version:    0.6.2
 */