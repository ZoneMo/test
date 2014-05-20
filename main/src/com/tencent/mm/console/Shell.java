package com.tencent.mm.console;

import android.content.IntentFilter;
import java.util.HashMap;

public final class Shell
{
  private static HashMap cfU = new HashMap();
  private static IntentFilter cfV = new IntentFilter();
  private static Runnable cfW = new n();
  private Shell.Receiver cfT = null;

  static
  {
    a("wechat.shell.SET_NEXTRET", new g());
    a("wechat.shell.SET_LOGLEVEL", new h());
    a("wechat.shell.SET_CDNTRANS", new i());
    a("wechat.shell.SET_DKTEST", new j());
    a("wechat.shell.NET_DNS_TEST", new k());
    a("wechat.shell.IDC_ERROR", new l());
    a("wechat.shell.SET_DK_WT_TEST", new m());
  }

  private static void a(String paramString, o paramo)
  {
    cfV.addAction(paramString);
    cfU.put(paramString, paramo);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.console.Shell
 * JD-Core Version:    0.6.2
 */