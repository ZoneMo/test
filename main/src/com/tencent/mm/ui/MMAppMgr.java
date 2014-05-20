package com.tencent.mm.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.location.LocationManager;
import android.os.Looper;
import android.os.Process;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.tencent.mm.booter.CoreService;
import com.tencent.mm.booter.NotifyReceiver.NotifyService;
import com.tencent.mm.booter.cache.CacheService;
import com.tencent.mm.c.a.c;
import com.tencent.mm.c.a.dg;
import com.tencent.mm.c.a.fc;
import com.tencent.mm.c.a.fo;
import com.tencent.mm.m.ac;
import com.tencent.mm.model.ap;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.platformtools.av;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.am;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.sdk.platformtools.j;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.x;

public final class MMAppMgr
{
  private static StringBuffer gnR;
  private static long gnS;
  private long cxQ;
  private String gnT;
  private MMAppMgr.Receiver gnU;
  private boolean gnV = false;
  private boolean gnW = false;
  private final ay gnX = new ay(new bu(this), true);
  private final ay gnY = new ay(Looper.getMainLooper(), new cb(this), false);

  public static void a(Context paramContext, Intent paramIntent)
  {
    com.tencent.mm.sdk.platformtools.aa.appenderFlush();
    com.tencent.mm.booter.al.oR();
    Intent localIntent = new Intent().setClass(paramContext, LauncherUI.class);
    localIntent.addFlags(67108864);
    localIntent.putExtra("absolutely_exit", true);
    localIntent.putExtra("exit_and_view", paramIntent);
    if (!(paramContext instanceof Activity))
      localIntent.addFlags(268435456);
    paramContext.startActivity(localIntent);
  }

  public static void aFj()
  {
    di(true);
    com.tencent.mm.sdk.platformtools.aa.appenderClose();
  }

  public static void aFk()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Thread.currentThread().getName();
    arrayOfObject[1] = Integer.valueOf(Process.myPid());
    arrayOfObject[2] = au.FJ();
    com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.MMAppMgr", "killProcess thread:%s proc:%d stack:%s", arrayOfObject);
    Context localContext = com.tencent.mm.sdk.platformtools.al.getContext();
    if (localContext != null)
    {
      localContext.stopService(new Intent(localContext, CoreService.class));
      localContext.stopService(new Intent(localContext, NotifyReceiver.NotifyService.class));
      localContext.stopService(new Intent(localContext, CacheService.class));
    }
    d.reset();
    dg localdg = new dg();
    localdg.bOn.status = 0;
    localdg.bOn.bOo = 2;
    com.tencent.mm.sdk.b.a.ayH().f(localdg);
    di(true);
    be.dr(au.FJ().toString());
    be.release();
    com.tencent.mm.sdk.platformtools.aa.appenderClose();
    Process.killProcess(Process.myPid());
  }

  public static void aT(String paramString)
  {
    be.nQ().aT(paramString);
  }

  public static boolean b(Context paramContext, int paramInt, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    View localView = View.inflate(paramContext, 2130903574, null);
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131363343);
    localCheckBox.setText(paramContext.getString(2131167106));
    localCheckBox.setOnCheckedChangeListener(new by());
    localView.findViewById(2131363342).setVisibility(8);
    TextView localTextView = (TextView)localView.findViewById(2131363341);
    int i;
    switch (paramInt)
    {
    case 2:
    default:
      localTextView.setText(2131167104);
      i = 1;
    case 3:
    case 1:
    }
    while (i != 0)
    {
      com.tencent.mm.ui.base.aa localaa = new com.tencent.mm.ui.base.aa(paramContext);
      localaa.mR(2131167675);
      localaa.dp(false);
      localaa.ai(localView);
      localaa.b(2131167107, paramOnClickListener1);
      localaa.c(2131167106, paramOnClickListener2);
      localaa.aGI().show();
      return true;
      localTextView.setText(2131167104);
      i = 0;
      continue;
      localTextView.setText(2131167103);
      i = 1;
    }
    return false;
  }

  private static void di(boolean paramBoolean)
  {
    StringBuffer localStringBuffer = new StringBuffer(800);
    if (gnR == null)
    {
      gnR = localStringBuffer;
      gnS = au.FC();
      return;
    }
    String str = gnR.toString();
    localStringBuffer.append(vV(str));
    gnR = localStringBuffer;
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MMAppMgr", "oreh report clickstream %s", new Object[] { str });
    m.dZN.a(paramBoolean, 10508, "1," + gnS + "," + str);
    gnS = au.FC();
  }

  public static void f(Activity paramActivity)
  {
    SharedPreferences localSharedPreferences = paramActivity.getSharedPreferences(com.tencent.mm.sdk.platformtools.al.azs(), 0);
    boolean bool = localSharedPreferences.getBoolean("gprs_alert", true);
    j.gcp = bool & j.gcp;
    x localx;
    if (bool)
    {
      View localView = View.inflate(paramActivity, 2130903354, null);
      CheckBox localCheckBox = (CheckBox)localView.findViewById(2131362838);
      localx = h.a(paramActivity, false, null, localView, paramActivity.getString(2131167830), paramActivity.getString(2131165592), new bv(localCheckBox, localSharedPreferences), new bw(paramActivity));
      if (localx != null);
    }
    else
    {
      return;
    }
    localx.setOnCancelListener(new bx(paramActivity));
  }

  public static void i(Activity paramActivity, int paramInt)
  {
    if ((com.tencent.mm.protocal.a.fxu) || (com.tencent.mm.protocal.a.fxv));
    while (!am.sE("show_whatsnew"))
      return;
    try
    {
      if (!be.se())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MMAppMgr", "showWhatsNewForResult, hasSetUin fail");
        return;
      }
    }
    catch (Exception localException)
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.MMAppMgr", localException.toString());
      return;
    }
    Intent localIntent = new Intent();
    if (paramInt != 57005)
    {
      com.tencent.mm.ak.a.a(paramActivity, "whatsnew", ".ui.ThirdAnniversaryUI", localIntent, paramInt);
      return;
    }
    com.tencent.mm.ak.a.b(paramActivity, "whatsnew", ".ui.ThirdAnniversaryUI", localIntent);
  }

  public static void nJ()
  {
    be.nQ().nJ();
  }

  public static void u(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences(com.tencent.mm.sdk.platformtools.al.azs(), 0);
    if (!localSharedPreferences.getBoolean("Main_ShortCut", false))
    {
      h.a(paramContext, 2131165601, 2131167675, new cj(paramContext), null);
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.putBoolean("Main_ShortCut", true);
      localEditor.commit();
    }
  }

  public static x v(Context paramContext)
  {
    if ((((LocationManager)paramContext.getSystemService("location")).isProviderEnabled("gps")) && (ba.bt(paramContext)))
      return null;
    Boolean localBoolean = (Boolean)be.uz().sr().get(4105, Boolean.valueOf(false));
    if ((localBoolean != null) && (localBoolean.booleanValue()))
      return null;
    View localView = View.inflate(paramContext, 2130903385, null);
    ((CheckBox)localView.findViewById(2131362896)).setOnCheckedChangeListener(new bz());
    ca localca = new ca(paramContext);
    com.tencent.mm.ui.base.aa localaa = new com.tencent.mm.ui.base.aa(paramContext);
    localaa.mR(2131168158);
    localaa.ai(localView);
    localaa.b(2131167679, localca);
    localaa.c(2131167764, null);
    x localx = localaa.aGI();
    localx.show();
    return localx;
  }

  private static String vV(String paramString)
  {
    int i = 0;
    for (int j = -1 + paramString.length(); j >= 0; j--)
    {
      if (paramString.charAt(j) == '|')
        i++;
      if (i == 3)
        break;
    }
    return paramString.substring(j + 1);
  }

  public final void V(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      ac.wg();
      fc localfc = new fc();
      localfc.bPR.state = 1;
      com.tencent.mm.sdk.b.a.ayH().f(localfc);
      c localc = new c();
      localc.bLK.bLL = true;
      com.tencent.mm.sdk.b.a.ayH().f(localc);
      fo localfo = new fo();
      localfo.bQj.CZ = true;
      com.tencent.mm.sdk.b.a.ayH().f(localfo);
    }
    this.gnV = paramBoolean;
    this.gnY.bO(800L);
  }

  public final void bP(Context paramContext)
  {
    if (this.gnU == null)
      this.gnU = new MMAppMgr.Receiver(this);
    MMActivity.aEX();
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.tencent.mm.ui.ACTION_ACTIVE");
    localIntentFilter.addAction("com.tencent.mm.ui.ACTION_DEACTIVE");
    localIntentFilter.addAction("com.tencent.mm.sandbox.updater.intent.ACTION_EXIT_APP");
    localIntentFilter.addAction("com.tencent.mm.sandbox.updater.intent.ACTION_UPDATE");
    paramContext.registerReceiver(this.gnU, localIntentFilter, "com.tencent.mm.permission.MM_MESSAGE", null);
  }

  public final void bQ(Context paramContext)
  {
    if (this.gnU != null)
      paramContext.unregisterReceiver(this.gnU);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.MMAppMgr
 * JD-Core Version:    0.6.2
 */