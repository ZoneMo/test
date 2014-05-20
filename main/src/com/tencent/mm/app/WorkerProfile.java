package com.tencent.mm.app;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import com.tencent.mm.booter.w;
import com.tencent.mm.c.a.dg;
import com.tencent.mm.compatible.loader.h;
import com.tencent.mm.console.Shell;
import com.tencent.mm.m.af;
import com.tencent.mm.model.ah;
import com.tencent.mm.model.ak;
import com.tencent.mm.model.an;
import com.tencent.mm.model.ao;
import com.tencent.mm.model.ap;
import com.tencent.mm.model.bd;
import com.tencent.mm.model.be;
import com.tencent.mm.modelcdntran.j;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.n.x;
import com.tencent.mm.p.ab;
import com.tencent.mm.plugin.d.c.p;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.r.c;
import com.tencent.mm.r.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cg;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.t.l;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAppMgr;
import com.tencent.mm.ui.tools.AccountDeletedAlphaAlertUI;
import com.tencent.mm.ui.tools.NewTaskUI;
import com.tencent.mm.w.ag;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public final class WorkerProfile extends h
  implements ak, an, com.tencent.mm.model.bc, com.tencent.mm.n.m
{
  public static final String bKY = com.tencent.mm.sdk.platformtools.al.getPackageName();
  private static com.tencent.mm.booter.i bLe;
  private static WorkerProfile bLg;
  private final Shell bKZ = new Shell();
  private final com.tencent.mm.console.a bLf = new com.tencent.mm.console.a();
  private boolean bLh;
  private ap bLi;
  private com.tencent.mm.storage.s bLj;
  private com.tencent.mm.model.al bLk;
  private ah bLl;
  private boolean bLm;
  private boolean bLn;
  private final MMAppMgr bLo = new MMAppMgr();
  private final HashSet bLp = new HashSet();
  private com.tencent.mm.d.b bLq;
  private final b bLr = new b();
  private final ad bLs = new ad();
  private final k bLt = new k();
  protected Locale locale;

  public static WorkerProfile nM()
  {
    return bLg;
  }

  private void nP()
  {
    String str = cg.getProperty("system_property_key_locale");
    if ((str != null) && (str.length() > 0))
    {
      if (!"language_default".equalsIgnoreCase(str))
        break label101;
      this.locale = Locale.getDefault();
    }
    while (true)
    {
      Locale localLocale = MMActivity.bO(this.cfq.getBaseContext());
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = this.locale.toString();
      arrayOfObject1[1] = localLocale.toString();
      arrayOfObject1[2] = str;
      aa.e("MicroMsg.WorkerProfile", "onConfigurationChanged, locale = %s, n = %s, lang = %s", arrayOfObject1);
      if (!localLocale.equals(this.locale))
      {
        aa.w("MicroMsg.WorkerProfile", "language changed, restart process");
        System.exit(-1);
      }
      return;
      label101: String[] arrayOfString = str.split("_");
      if ((arrayOfString != null) && (arrayOfString.length >= 2))
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(arrayOfString.length);
        aa.e("MicroMsg.WorkerProfile", "initLanguage arr.length = %s", arrayOfObject2);
        this.locale = new Locale(arrayOfString[0], arrayOfString[1]);
      }
      else
      {
        this.locale = new Locale(str);
      }
    }
  }

  public final ao a(String paramString, Context paramContext)
  {
    if ((paramString == null) || (paramString.equals("")))
      return null;
    ao localao = new ao();
    if (paramString.equals("qqsync"))
    {
      localao.cie = paramContext.getString(2131165209);
      localao.cid = paramContext.getString(2131165210);
      localao.cif = paramContext.getString(2131165211);
      return localao;
    }
    if (paramString.equals("floatbottle"))
    {
      localao.cie = paramContext.getString(2131165212);
      localao.cid = paramContext.getString(2131165213);
      localao.cif = paramContext.getString(2131165214);
      return localao;
    }
    if (paramString.equals("shakeapp"))
    {
      localao.cie = paramContext.getString(2131165218);
      localao.cid = paramContext.getString(2131165219);
      localao.cif = paramContext.getString(2131165220);
      return localao;
    }
    if (paramString.equals("lbsapp"))
    {
      localao.cie = paramContext.getString(2131165215);
      localao.cid = paramContext.getString(2131165216);
      localao.cif = paramContext.getString(2131165217);
      return localao;
    }
    if (paramString.equals("medianote"))
    {
      localao.cie = paramContext.getString(2131165221);
      localao.cid = paramContext.getString(2131165222);
      localao.cif = paramContext.getString(2131165223);
      return localao;
    }
    if (paramString.equals("newsapp"))
    {
      localao.cie = paramContext.getString(2131165247);
      localao.cid = paramContext.getString(2131165248);
      localao.cif = paramContext.getString(2131165249);
      return localao;
    }
    if (paramString.equals("blogapp"))
    {
      localao.cie = paramContext.getString(2131165259);
      localao.cid = paramContext.getString(2131165260);
      localao.cif = paramContext.getString(2131165261);
      return localao;
    }
    if (paramString.equals("facebookapp"))
    {
      localao.cie = paramContext.getString(2131165224);
      localao.cid = paramContext.getString(2131165225);
      localao.cif = paramContext.getString(2131165226);
      return localao;
    }
    if (paramString.equals("qqfriend"))
    {
      localao.cie = paramContext.getString(2131165227);
      localao.cid = paramContext.getString(2131165228);
      localao.cif = paramContext.getString(2131165229);
      return localao;
    }
    if (paramString.equals("googlecontact"))
    {
      localao.cie = paramContext.getString(2131165230);
      localao.cid = paramContext.getString(2131165231);
      localao.cif = paramContext.getString(2131165232);
      return localao;
    }
    if (paramString.equals("masssendapp"))
    {
      localao.cie = paramContext.getString(2131165239);
      localao.cid = paramContext.getString(2131165240);
      localao.cif = paramContext.getString(2131165241);
      return localao;
    }
    if (paramString.equals("feedsapp"))
    {
      localao.cie = paramContext.getString(2131168623);
      localao.cid = paramContext.getString(2131165245);
      localao.cif = paramContext.getString(2131165246);
      return localao;
    }
    if (paramString.equals("tmessage"))
    {
      localao.cie = paramContext.getString(2131165203);
      localao.cid = paramContext.getString(2131165204);
      localao.cif = paramContext.getString(2131165205);
      return localao;
    }
    if (paramString.equals("qmessage"))
    {
      localao.cie = paramContext.getString(2131165206);
      localao.cid = paramContext.getString(2131165207);
      localao.cif = paramContext.getString(2131165208);
      return localao;
    }
    if (paramString.equals("fmessage"))
    {
      localao.cie = paramContext.getString(2131165200);
      localao.cid = paramContext.getString(2131165201);
      localao.cif = paramContext.getString(2131165202);
      return localao;
    }
    if (paramString.equals("voipapp"))
    {
      localao.cie = paramContext.getString(2131165250);
      localao.cid = paramContext.getString(2131165251);
      localao.cif = paramContext.getString(2131165252);
      return localao;
    }
    if (paramString.equals("officialaccounts"))
    {
      localao.cie = paramContext.getString(2131165233);
      localao.cid = paramContext.getString(2131165234);
      localao.cif = paramContext.getString(2131165235);
      return localao;
    }
    if (paramString.equals("helper_entry"))
    {
      localao.cie = paramContext.getString(2131165236);
      localao.cid = paramContext.getString(2131165237);
      localao.cif = paramContext.getString(2131165238);
      return localao;
    }
    if (paramString.equals("cardpackage"))
    {
      localao.cie = paramContext.getString(2131165253);
      localao.cid = paramContext.getString(2131165254);
      localao.cif = paramContext.getString(2131165255);
      return localao;
    }
    if (paramString.equals("voicevoipapp"))
    {
      localao.cie = paramContext.getString(2131165262);
      localao.cid = paramContext.getString(2131165263);
      localao.cif = paramContext.getString(2131165264);
      return localao;
    }
    if (paramString.equals("voiceinputapp"))
    {
      localao.cie = paramContext.getString(2131165265);
      localao.cid = paramContext.getString(2131165266);
      localao.cif = paramContext.getString(2131165267);
      return localao;
    }
    if (paramString.equals("qqmail"))
    {
      localao.cie = paramContext.getString(2131165197);
      localao.cid = paramContext.getString(2131165198);
      localao.cif = paramContext.getString(2131165199);
      return localao;
    }
    if (paramString.equals("linkedinplugin"))
    {
      localao.cie = paramContext.getString(2131165268);
      localao.cid = paramContext.getString(2131165269);
      localao.cif = paramContext.getString(2131165270);
      return localao;
    }
    return null;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.d("MicroMsg.WorkerProfile", "broadcast " + paramString);
    if (!cj.hX(paramString))
    {
      com.tencent.mm.c.a.m localm = new com.tencent.mm.c.a.m();
      localm.bLU.type = 3;
      localm.bLU.bLW = paramString;
      com.tencent.mm.sdk.b.a.ayH().f(localm);
    }
    if ((be.se()) && (paramInt1 == 4) && (paramInt2 == -6))
      if (NewTaskUI.aNC() == null);
    do
    {
      do
      {
        return;
        Intent localIntent2 = new Intent();
        localIntent2.setClass(com.tencent.mm.sdk.platformtools.al.getContext(), NewTaskUI.class).addFlags(268435456);
        com.tencent.mm.sdk.platformtools.al.getContext().startActivity(localIntent2);
        return;
      }
      while ((paramInt1 != 4) || (paramInt2 != -213));
      dg localdg = new dg();
      localdg.bOn.status = 0;
      localdg.bOn.bOo = 3;
      com.tencent.mm.sdk.b.a.ayH().f(localdg);
    }
    while (AccountDeletedAlphaAlertUI.aMG() != null);
    Intent localIntent1 = new Intent();
    localIntent1.setClass(com.tencent.mm.sdk.platformtools.al.getContext(), AccountDeletedAlphaAlertUI.class).addFlags(268435456);
    localIntent1.putExtra("errmsg", paramString);
    com.tencent.mm.sdk.platformtools.al.getContext().startActivity(localIntent1);
  }

  public final void a(ac paramac)
  {
    this.bLp.add(paramac);
  }

  public final void b(ac paramac)
  {
    this.bLp.remove(paramac);
  }

  public final void bc()
  {
    String str = cg.getProperty("system_property_key_locale");
    if ((str != null) && (str.length() > 0))
      this.locale = new Locale(str);
    try
    {
      if (!this.bLh)
      {
        this.bLm = true;
        return;
      }
      nP();
      return;
    }
    finally
    {
    }
  }

  public final void nL()
  {
    Iterator localIterator = this.bLp.iterator();
    while (localIterator.hasNext())
      ((ac)localIterator.next()).nZ();
  }

  public final boolean nN()
  {
    try
    {
      boolean bool = this.bLh;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  public final boolean nO()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 483	com/tencent/mm/app/WorkerProfile:bLh	Z
    //   6: ifne +1304 -> 1310
    //   9: aload_0
    //   10: iconst_1
    //   11: putfield 483	com/tencent/mm/app/WorkerProfile:bLh	Z
    //   14: aload_0
    //   15: monitorexit
    //   16: invokestatic 516	com/tencent/mm/sdk/platformtools/at:azE	()Lcom/tencent/mm/sdk/platformtools/at;
    //   19: new 518	com/tencent/mm/app/m
    //   22: dup
    //   23: aload_0
    //   24: invokespecial 521	com/tencent/mm/app/m:<init>	(Lcom/tencent/mm/app/WorkerProfile;)V
    //   27: getstatic 70	com/tencent/mm/app/WorkerProfile:bKY	Ljava/lang/String;
    //   30: invokevirtual 524	com/tencent/mm/sdk/platformtools/at:a	(Lcom/tencent/mm/sdk/platformtools/ax;Ljava/lang/String;)V
    //   33: new 526	com/tencent/mm/sdk/b/b
    //   36: dup
    //   37: invokespecial 527	com/tencent/mm/sdk/b/b:<init>	()V
    //   40: invokestatic 530	com/tencent/mm/sdk/b/a:a	(Lcom/tencent/mm/sdk/b/f;)V
    //   43: invokestatic 535	com/tencent/mm/platformtools/as:FB	()V
    //   46: ldc_w 537
    //   49: invokestatic 542	com/tencent/mm/platformtools/u:load	(Ljava/lang/String;)V
    //   52: ldc_w 544
    //   55: invokestatic 542	com/tencent/mm/platformtools/u:load	(Ljava/lang/String;)V
    //   58: ldc_w 546
    //   61: invokestatic 542	com/tencent/mm/platformtools/u:load	(Ljava/lang/String;)V
    //   64: ldc_w 548
    //   67: invokestatic 542	com/tencent/mm/platformtools/u:load	(Ljava/lang/String;)V
    //   70: ldc_w 550
    //   73: invokestatic 542	com/tencent/mm/platformtools/u:load	(Ljava/lang/String;)V
    //   76: ldc_w 552
    //   79: invokestatic 542	com/tencent/mm/platformtools/u:load	(Ljava/lang/String;)V
    //   82: getstatic 557	com/tencent/mm/protocal/a:fxr	I
    //   85: invokestatic 563	com/tencent/mm/protocal/MMProtocalJni:setClientPackVersion	(I)Z
    //   88: pop
    //   89: new 565	com/tencent/mm/xlog/Xlog
    //   92: dup
    //   93: invokespecial 566	com/tencent/mm/xlog/Xlog:<init>	()V
    //   96: invokevirtual 569	com/tencent/mm/xlog/Xlog:getLogLevel	()I
    //   99: invokestatic 572	com/tencent/mm/protocal/MMProtocalJni:setProtocalJniLogLevel	(I)Z
    //   102: pop
    //   103: invokestatic 577	com/tencent/mm/ak/a:avr	()Z
    //   106: invokestatic 581	com/tencent/mm/protocal/MMProtocalJni:setIsLite	(Z)V
    //   109: aload_0
    //   110: new 583	com/tencent/mm/app/t
    //   113: dup
    //   114: aload_0
    //   115: invokespecial 584	com/tencent/mm/app/t:<init>	(Lcom/tencent/mm/app/WorkerProfile;)V
    //   118: invokestatic 587	com/tencent/mm/model/be:a	(Lcom/tencent/mm/model/an;Lcom/tencent/mm/n/ak;)V
    //   121: invokestatic 591	com/tencent/mm/model/be:uA	()Lcom/tencent/mm/n/ac;
    //   124: iconst_m1
    //   125: aload_0
    //   126: invokevirtual 596	com/tencent/mm/n/ac:a	(ILcom/tencent/mm/n/m;)V
    //   129: invokestatic 601	com/tencent/mm/booter/NotifyReceiver:oN	()V
    //   132: invokestatic 605	com/tencent/mm/model/be:uh	()Lcom/tencent/mm/model/dr;
    //   135: pop
    //   136: aload_0
    //   137: invokestatic 610	com/tencent/mm/model/dr:a	(Lcom/tencent/mm/model/bc;)V
    //   140: aload_0
    //   141: invokestatic 613	com/tencent/mm/model/be:a	(Lcom/tencent/mm/model/ak;)V
    //   144: aload_0
    //   145: getfield 112	com/tencent/mm/app/WorkerProfile:cfq	Landroid/app/Application;
    //   148: astore 5
    //   150: aload 5
    //   152: invokestatic 619	com/tencent/mm/sdk/platformtools/j:bi	(Landroid/content/Context;)V
    //   155: aload 5
    //   157: invokestatic 622	com/tencent/mm/sdk/platformtools/j:bj	(Landroid/content/Context;)V
    //   160: aload 5
    //   162: invokevirtual 626	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   165: astore 6
    //   167: aload 6
    //   169: aload 5
    //   171: invokevirtual 627	android/content/Context:getPackageName	()Ljava/lang/String;
    //   174: iconst_0
    //   175: invokevirtual 633	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   178: getfield 639	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   181: getfield 644	android/content/pm/ApplicationInfo:sourceDir	Ljava/lang/String;
    //   184: astore 8
    //   186: aload 8
    //   188: invokestatic 650	com/tencent/mm/b/a:ax	(Ljava/lang/String;)Lcom/tencent/mm/b/a;
    //   191: astore 9
    //   193: aload 9
    //   195: ifnull +140 -> 335
    //   198: aload 9
    //   200: invokevirtual 654	com/tencent/mm/b/a:nd	()Lcom/tencent/mm/b/c;
    //   203: ifnull +132 -> 335
    //   206: ldc 164
    //   208: ldc_w 656
    //   211: invokestatic 659	com/tencent/mm/sdk/platformtools/aa:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   214: aload 9
    //   216: invokevirtual 654	com/tencent/mm/b/a:nd	()Lcom/tencent/mm/b/c;
    //   219: invokevirtual 664	com/tencent/mm/b/c:ni	()Z
    //   222: ifeq +22 -> 244
    //   225: aload 9
    //   227: invokevirtual 654	com/tencent/mm/b/a:nd	()Lcom/tencent/mm/b/c;
    //   230: invokevirtual 667	com/tencent/mm/b/c:nh	()I
    //   233: putstatic 670	com/tencent/mm/sdk/platformtools/j:bKo	I
    //   236: ldc 164
    //   238: ldc_w 672
    //   241: invokestatic 659	com/tencent/mm/sdk/platformtools/aa:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   244: aload 9
    //   246: invokevirtual 654	com/tencent/mm/b/a:nd	()Lcom/tencent/mm/b/c;
    //   249: invokevirtual 675	com/tencent/mm/b/c:nm	()Z
    //   252: ifeq +14 -> 266
    //   255: aload 9
    //   257: invokevirtual 654	com/tencent/mm/b/a:nd	()Lcom/tencent/mm/b/c;
    //   260: invokevirtual 678	com/tencent/mm/b/c:nl	()I
    //   263: putstatic 681	com/tencent/mm/sdk/platformtools/j:bKs	I
    //   266: aload 9
    //   268: invokevirtual 654	com/tencent/mm/b/a:nd	()Lcom/tencent/mm/b/c;
    //   271: invokevirtual 684	com/tencent/mm/b/c:no	()Z
    //   274: ifeq +17 -> 291
    //   277: aload 9
    //   279: invokevirtual 654	com/tencent/mm/b/a:nd	()Lcom/tencent/mm/b/c;
    //   282: invokevirtual 687	com/tencent/mm/b/c:nn	()Ljava/lang/String;
    //   285: invokestatic 691	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   288: putstatic 694	com/tencent/mm/sdk/platformtools/j:gcm	I
    //   291: aload 9
    //   293: invokevirtual 654	com/tencent/mm/b/a:nd	()Lcom/tencent/mm/b/c;
    //   296: invokevirtual 697	com/tencent/mm/b/c:nq	()Z
    //   299: ifeq +14 -> 313
    //   302: aload 9
    //   304: invokevirtual 654	com/tencent/mm/b/a:nd	()Lcom/tencent/mm/b/c;
    //   307: invokevirtual 700	com/tencent/mm/b/c:np	()Ljava/lang/String;
    //   310: putstatic 703	com/tencent/mm/sdk/platformtools/j:gcn	Ljava/lang/String;
    //   313: aload 9
    //   315: invokevirtual 654	com/tencent/mm/b/a:nd	()Lcom/tencent/mm/b/c;
    //   318: invokevirtual 706	com/tencent/mm/b/c:nk	()Z
    //   321: ifeq +14 -> 335
    //   324: aload 9
    //   326: invokevirtual 654	com/tencent/mm/b/a:nd	()Lcom/tencent/mm/b/c;
    //   329: invokevirtual 709	com/tencent/mm/b/c:nj	()Ljava/lang/String;
    //   332: putstatic 712	com/tencent/mm/sdk/platformtools/j:bKq	Ljava/lang/String;
    //   335: getstatic 694	com/tencent/mm/sdk/platformtools/j:gcm	I
    //   338: ifle +7 -> 345
    //   341: iconst_1
    //   342: putstatic 715	com/tencent/mm/sdk/platformtools/j:gco	Z
    //   345: iconst_2
    //   346: getstatic 681	com/tencent/mm/sdk/platformtools/j:bKs	I
    //   349: iand
    //   350: ifeq +35 -> 385
    //   353: invokestatic 433	com/tencent/mm/sdk/platformtools/al:getContext	()Landroid/content/Context;
    //   356: ldc_w 717
    //   359: iconst_0
    //   360: invokevirtual 721	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   363: invokeinterface 727 1 0
    //   368: ldc_w 729
    //   371: invokestatic 733	com/tencent/mm/sdk/platformtools/cj:FC	()J
    //   374: invokeinterface 739 4 0
    //   379: invokeinterface 742 1 0
    //   384: pop
    //   385: invokestatic 577	com/tencent/mm/ak/a:avr	()Z
    //   388: pop
    //   389: new 52	java/lang/StringBuilder
    //   392: dup
    //   393: ldc_w 744
    //   396: invokespecial 399	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   399: astore 11
    //   401: getstatic 712	com/tencent/mm/sdk/platformtools/j:bKq	Ljava/lang/String;
    //   404: invokestatic 258	com/tencent/mm/sdk/platformtools/cj:hX	(Ljava/lang/String;)Z
    //   407: ifeq +928 -> 1335
    //   410: getstatic 749	android/os/Build$VERSION:SDK_INT	I
    //   413: invokestatic 200	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   416: astore 12
    //   418: aload 11
    //   420: aload 12
    //   422: invokevirtual 752	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   425: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   428: putstatic 755	com/tencent/mm/protocal/a:fxk	Ljava/lang/String;
    //   431: aload_0
    //   432: aload_0
    //   433: getfield 112	com/tencent/mm/app/WorkerProfile:cfq	Landroid/app/Application;
    //   436: invokevirtual 153	android/app/Application:getBaseContext	()Landroid/content/Context;
    //   439: invokestatic 159	com/tencent/mm/ui/MMActivity:bO	(Landroid/content/Context;)Ljava/util/Locale;
    //   442: putfield 147	com/tencent/mm/app/WorkerProfile:locale	Ljava/util/Locale;
    //   445: aload_0
    //   446: getfield 81	com/tencent/mm/app/WorkerProfile:bLf	Lcom/tencent/mm/console/a;
    //   449: astore 13
    //   451: invokestatic 238	com/tencent/mm/sdk/b/a:ayH	()Lcom/tencent/mm/sdk/b/f;
    //   454: ldc_w 757
    //   457: aload 13
    //   459: invokeinterface 760 3 0
    //   464: pop
    //   465: new 762	com/tencent/mm/app/a
    //   468: dup
    //   469: invokespecial 763	com/tencent/mm/app/a:<init>	()V
    //   472: invokestatic 768	com/tencent/mm/pluginsdk/ui/c:a	(Lcom/tencent/mm/pluginsdk/ui/ae;)V
    //   475: new 770	com/tencent/mm/app/p
    //   478: dup
    //   479: aload_0
    //   480: invokespecial 771	com/tencent/mm/app/p:<init>	(Lcom/tencent/mm/app/WorkerProfile;)V
    //   483: invokestatic 776	com/tencent/mm/pluginsdk/h:a	(Lcom/tencent/mm/pluginsdk/p;)V
    //   486: ldc_w 778
    //   489: invokestatic 433	com/tencent/mm/sdk/platformtools/al:getContext	()Landroid/content/Context;
    //   492: ldc_w 778
    //   495: invokestatic 784	com/tencent/mm/compatible/loader/g:m	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   498: invokestatic 786	com/tencent/mm/compatible/loader/g:m	(Ljava/lang/String;Ljava/lang/String;)V
    //   501: ldc_w 788
    //   504: aload_0
    //   505: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   508: aload_0
    //   509: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   512: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   515: ldc_w 267
    //   518: aload_0
    //   519: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   522: aload_0
    //   523: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   526: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   529: ldc_w 793
    //   532: aload_0
    //   533: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   536: aload_0
    //   537: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   540: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   543: ldc_w 795
    //   546: aload_0
    //   547: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   550: aload_0
    //   551: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   554: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   557: ldc_w 797
    //   560: aload_0
    //   561: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   564: aload_0
    //   565: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   568: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   571: ldc_w 799
    //   574: aload_0
    //   575: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   578: aload_0
    //   579: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   582: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   585: ldc_w 801
    //   588: aload_0
    //   589: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   592: aload_0
    //   593: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   596: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   599: ldc_w 803
    //   602: aload_0
    //   603: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   606: aload_0
    //   607: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   610: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   613: ldc_w 805
    //   616: aload_0
    //   617: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   620: aload_0
    //   621: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   624: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   627: ldc_w 807
    //   630: aload_0
    //   631: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   634: aload_0
    //   635: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   638: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   641: ldc_w 809
    //   644: aload_0
    //   645: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   648: aload_0
    //   649: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   652: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   655: ldc_w 811
    //   658: aload_0
    //   659: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   662: aload_0
    //   663: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   666: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   669: ldc_w 813
    //   672: aload_0
    //   673: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   676: aload_0
    //   677: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   680: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   683: ldc_w 815
    //   686: aload_0
    //   687: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   690: aload_0
    //   691: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   694: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   697: ldc_w 387
    //   700: aload_0
    //   701: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   704: aload_0
    //   705: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   708: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   711: ldc_w 817
    //   714: aload_0
    //   715: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   718: aload_0
    //   719: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   722: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   725: ldc_w 819
    //   728: aload_0
    //   729: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   732: aload_0
    //   733: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   736: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   739: ldc_w 821
    //   742: aload_0
    //   743: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   746: aload_0
    //   747: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   750: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   753: ldc_w 823
    //   756: aload_0
    //   757: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   760: aload_0
    //   761: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   764: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   767: ldc_w 825
    //   770: aload_0
    //   771: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   774: aload_0
    //   775: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   778: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   781: ldc_w 827
    //   784: aload_0
    //   785: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   788: aload_0
    //   789: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   792: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   795: ldc_w 829
    //   798: aload_0
    //   799: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   802: aload_0
    //   803: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   806: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   809: ldc_w 831
    //   812: aload_0
    //   813: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   816: aload_0
    //   817: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   820: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   823: ldc_w 833
    //   826: aload_0
    //   827: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   830: aload_0
    //   831: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   834: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   837: ldc_w 835
    //   840: aload_0
    //   841: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   844: aload_0
    //   845: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   848: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   851: ldc_w 347
    //   854: aload_0
    //   855: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   858: aload_0
    //   859: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   862: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   865: ldc_w 342
    //   868: aload_0
    //   869: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   872: aload_0
    //   873: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   876: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   879: ldc_w 837
    //   882: aload_0
    //   883: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   886: aload_0
    //   887: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   890: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   893: ldc_w 839
    //   896: aload_0
    //   897: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   900: aload_0
    //   901: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   904: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   907: ldc_w 841
    //   910: aload_0
    //   911: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   914: aload_0
    //   915: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   918: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   921: ldc_w 843
    //   924: aload_0
    //   925: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   928: aload_0
    //   929: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   932: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   935: ldc_w 845
    //   938: aload_0
    //   939: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   942: aload_0
    //   943: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   946: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   949: ldc_w 847
    //   952: aload_0
    //   953: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   956: aload_0
    //   957: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   960: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   963: ldc_w 849
    //   966: aload_0
    //   967: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   970: aload_0
    //   971: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   974: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   977: ldc_w 851
    //   980: aload_0
    //   981: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   984: aload_0
    //   985: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   988: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   991: ldc_w 853
    //   994: aload_0
    //   995: getfield 101	com/tencent/mm/app/WorkerProfile:bLs	Lcom/tencent/mm/app/ad;
    //   998: aload_0
    //   999: getfield 106	com/tencent/mm/app/WorkerProfile:bLt	Lcom/tencent/mm/app/k;
    //   1002: invokestatic 791	com/tencent/mm/ak/a:a	(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V
    //   1005: invokestatic 238	com/tencent/mm/sdk/b/a:ayH	()Lcom/tencent/mm/sdk/b/f;
    //   1008: ldc_w 855
    //   1011: new 857	com/tencent/mm/plugin/ext/e
    //   1014: dup
    //   1015: invokespecial 858	com/tencent/mm/plugin/ext/e:<init>	()V
    //   1018: invokeinterface 760 3 0
    //   1023: pop
    //   1024: aload_0
    //   1025: new 860	com/tencent/mm/booter/w
    //   1028: dup
    //   1029: aload_0
    //   1030: getfield 112	com/tencent/mm/app/WorkerProfile:cfq	Landroid/app/Application;
    //   1033: invokespecial 862	com/tencent/mm/booter/w:<init>	(Landroid/content/Context;)V
    //   1036: putfield 864	com/tencent/mm/app/WorkerProfile:bLi	Lcom/tencent/mm/model/ap;
    //   1039: aload_0
    //   1040: new 866	com/tencent/mm/d/b
    //   1043: dup
    //   1044: invokespecial 867	com/tencent/mm/d/b:<init>	()V
    //   1047: putfield 869	com/tencent/mm/app/WorkerProfile:bLq	Lcom/tencent/mm/d/b;
    //   1050: aload_0
    //   1051: getfield 869	com/tencent/mm/app/WorkerProfile:bLq	Lcom/tencent/mm/d/b;
    //   1054: invokevirtual 872	com/tencent/mm/d/b:init	()V
    //   1057: aload_0
    //   1058: getfield 485	com/tencent/mm/app/WorkerProfile:bLm	Z
    //   1061: ifeq +12 -> 1073
    //   1064: aload_0
    //   1065: invokespecial 487	com/tencent/mm/app/WorkerProfile:nP	()V
    //   1068: aload_0
    //   1069: iconst_0
    //   1070: putfield 485	com/tencent/mm/app/WorkerProfile:bLm	Z
    //   1073: invokestatic 238	com/tencent/mm/sdk/b/a:ayH	()Lcom/tencent/mm/sdk/b/f;
    //   1076: ldc_w 874
    //   1079: new 876	com/tencent/mm/ui/bindqq/f
    //   1082: dup
    //   1083: invokespecial 877	com/tencent/mm/ui/bindqq/f:<init>	()V
    //   1086: invokeinterface 760 3 0
    //   1091: pop
    //   1092: invokestatic 238	com/tencent/mm/sdk/b/a:ayH	()Lcom/tencent/mm/sdk/b/f;
    //   1095: ldc_w 879
    //   1098: new 881	com/tencent/mm/app/v
    //   1101: dup
    //   1102: aload_0
    //   1103: invokespecial 882	com/tencent/mm/app/v:<init>	(Lcom/tencent/mm/app/WorkerProfile;)V
    //   1106: invokeinterface 760 3 0
    //   1111: pop
    //   1112: invokestatic 238	com/tencent/mm/sdk/b/a:ayH	()Lcom/tencent/mm/sdk/b/f;
    //   1115: ldc_w 884
    //   1118: new 886	com/tencent/mm/app/w
    //   1121: dup
    //   1122: aload_0
    //   1123: invokespecial 887	com/tencent/mm/app/w:<init>	(Lcom/tencent/mm/app/WorkerProfile;)V
    //   1126: invokeinterface 760 3 0
    //   1131: pop
    //   1132: invokestatic 238	com/tencent/mm/sdk/b/a:ayH	()Lcom/tencent/mm/sdk/b/f;
    //   1135: ldc_w 889
    //   1138: new 891	com/tencent/mm/app/x
    //   1141: dup
    //   1142: aload_0
    //   1143: invokespecial 892	com/tencent/mm/app/x:<init>	(Lcom/tencent/mm/app/WorkerProfile;)V
    //   1146: invokeinterface 760 3 0
    //   1151: pop
    //   1152: invokestatic 238	com/tencent/mm/sdk/b/a:ayH	()Lcom/tencent/mm/sdk/b/f;
    //   1155: ldc_w 894
    //   1158: new 896	com/tencent/mm/app/y
    //   1161: dup
    //   1162: aload_0
    //   1163: invokespecial 897	com/tencent/mm/app/y:<init>	(Lcom/tencent/mm/app/WorkerProfile;)V
    //   1166: invokeinterface 760 3 0
    //   1171: pop
    //   1172: invokestatic 238	com/tencent/mm/sdk/b/a:ayH	()Lcom/tencent/mm/sdk/b/f;
    //   1175: ldc_w 899
    //   1178: new 901	com/tencent/mm/app/z
    //   1181: dup
    //   1182: aload_0
    //   1183: invokespecial 902	com/tencent/mm/app/z:<init>	(Lcom/tencent/mm/app/WorkerProfile;)V
    //   1186: invokeinterface 760 3 0
    //   1191: pop
    //   1192: invokestatic 238	com/tencent/mm/sdk/b/a:ayH	()Lcom/tencent/mm/sdk/b/f;
    //   1195: ldc_w 904
    //   1198: new 906	com/tencent/mm/app/aa
    //   1201: dup
    //   1202: aload_0
    //   1203: invokespecial 907	com/tencent/mm/app/aa:<init>	(Lcom/tencent/mm/app/WorkerProfile;)V
    //   1206: invokeinterface 760 3 0
    //   1211: pop
    //   1212: invokestatic 238	com/tencent/mm/sdk/b/a:ayH	()Lcom/tencent/mm/sdk/b/f;
    //   1215: ldc_w 909
    //   1218: new 911	com/tencent/mm/app/ab
    //   1221: dup
    //   1222: aload_0
    //   1223: invokespecial 912	com/tencent/mm/app/ab:<init>	(Lcom/tencent/mm/app/WorkerProfile;)V
    //   1226: invokeinterface 760 3 0
    //   1231: pop
    //   1232: invokestatic 238	com/tencent/mm/sdk/b/a:ayH	()Lcom/tencent/mm/sdk/b/f;
    //   1235: ldc_w 914
    //   1238: new 916	com/tencent/mm/app/n
    //   1241: dup
    //   1242: aload_0
    //   1243: invokespecial 917	com/tencent/mm/app/n:<init>	(Lcom/tencent/mm/app/WorkerProfile;)V
    //   1246: invokeinterface 760 3 0
    //   1251: pop
    //   1252: invokestatic 238	com/tencent/mm/sdk/b/a:ayH	()Lcom/tencent/mm/sdk/b/f;
    //   1255: ldc_w 919
    //   1258: new 921	com/tencent/mm/app/o
    //   1261: dup
    //   1262: aload_0
    //   1263: invokespecial 922	com/tencent/mm/app/o:<init>	(Lcom/tencent/mm/app/WorkerProfile;)V
    //   1266: invokeinterface 760 3 0
    //   1271: pop
    //   1272: new 924	com/tencent/mm/app/q
    //   1275: dup
    //   1276: aload_0
    //   1277: invokespecial 925	com/tencent/mm/app/q:<init>	(Lcom/tencent/mm/app/WorkerProfile;)V
    //   1280: invokestatic 928	com/tencent/mm/pluginsdk/h:a	(Lcom/tencent/mm/pluginsdk/o;)V
    //   1283: new 930	com/tencent/mm/app/r
    //   1286: dup
    //   1287: aload_0
    //   1288: invokespecial 931	com/tencent/mm/app/r:<init>	(Lcom/tencent/mm/app/WorkerProfile;)V
    //   1291: invokestatic 934	com/tencent/mm/pluginsdk/h:a	(Lcom/tencent/mm/pluginsdk/q;)V
    //   1294: new 936	com/tencent/mm/ui/transmit/ai
    //   1297: dup
    //   1298: invokespecial 937	com/tencent/mm/ui/transmit/ai:<init>	()V
    //   1301: invokestatic 940	com/tencent/mm/pluginsdk/h:a	(Lcom/tencent/mm/pluginsdk/r;)V
    //   1304: aload_0
    //   1305: invokevirtual 942	com/tencent/mm/app/WorkerProfile:nL	()V
    //   1308: iconst_1
    //   1309: ireturn
    //   1310: aload_0
    //   1311: monitorexit
    //   1312: iconst_0
    //   1313: ireturn
    //   1314: astore_1
    //   1315: aload_0
    //   1316: monitorexit
    //   1317: aload_1
    //   1318: athrow
    //   1319: astore 7
    //   1321: ldc 164
    //   1323: ldc_w 944
    //   1326: invokestatic 946	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   1329: aconst_null
    //   1330: astore 8
    //   1332: goto -1146 -> 186
    //   1335: getstatic 712	com/tencent/mm/sdk/platformtools/j:bKq	Ljava/lang/String;
    //   1338: astore 12
    //   1340: goto -922 -> 418
    //
    // Exception table:
    //   from	to	target	type
    //   2	14	1314	finally
    //   1310	1312	1314	finally
    //   167	186	1319	android/content/pm/PackageManager$NameNotFoundException
  }

  public final ap nQ()
  {
    if (this.bLi == null)
      this.bLi = new w(this.cfq);
    return this.bLi;
  }

  public final com.tencent.mm.storage.s nR()
  {
    if (this.bLj == null)
      this.bLj = new s(this);
    return this.bLj;
  }

  public final com.tencent.mm.model.al nS()
  {
    if (this.bLk == null)
      this.bLk = new com.tencent.mm.booter.k();
    return this.bLk;
  }

  public final ah nT()
  {
    if (this.bLl == null)
      this.bLl = new com.tencent.mm.booter.a();
    return this.bLl;
  }

  public final Map nU()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(af.class.getName(), new af());
    localHashMap.put(ag.class.getName(), new ag());
    localHashMap.put(com.tencent.mm.ab.r.class.getName(), new com.tencent.mm.ab.r());
    localHashMap.put(com.tencent.mm.modelstat.r.class.getName(), new com.tencent.mm.modelstat.r());
    localHashMap.put(l.class.getName(), new l());
    localHashMap.put(com.tencent.mm.ah.k.class.getName(), new com.tencent.mm.ah.k());
    localHashMap.put(com.tencent.mm.ai.m.class.getName(), new com.tencent.mm.ai.m());
    localHashMap.put(com.tencent.mm.modelvoice.bc.class.getName(), new com.tencent.mm.modelvoice.bc());
    localHashMap.put(com.tencent.mm.i.i.class.getName(), new com.tencent.mm.i.i());
    localHashMap.put(com.tencent.mm.e.d.class.getName(), new com.tencent.mm.e.d());
    localHashMap.put(ba.class.getName(), new ba());
    localHashMap.put(p.class.getName(), new p());
    localHashMap.put(com.tencent.mm.ac.f.class.getName(), new com.tencent.mm.ac.f());
    localHashMap.put(com.tencent.mm.plugin.webwx.a.e.class.getName(), new com.tencent.mm.plugin.webwx.a.e());
    localHashMap.put(ab.class.getName(), new ab());
    localHashMap.put(com.tencent.mm.plugin.voicereminder.a.f.class.getName(), new com.tencent.mm.plugin.voicereminder.a.f());
    localHashMap.put(com.tencent.mm.u.e.class.getName(), new com.tencent.mm.u.e());
    localHashMap.put(j.class.getName(), new j());
    localHashMap.put(com.tencent.mm.ag.a.class.getName(), new com.tencent.mm.ag.a());
    localHashMap.put(ax.class.getName(), new ax());
    com.tencent.mm.ak.a.g("nearby", localHashMap);
    com.tencent.mm.ak.a.g("brandservice", localHashMap);
    com.tencent.mm.ak.a.g("wallet", localHashMap);
    com.tencent.mm.ak.a.g("mall", localHashMap);
    com.tencent.mm.ak.a.g("qqsync", localHashMap);
    com.tencent.mm.ak.a.g("favorite", localHashMap);
    com.tencent.mm.ak.a.g("scanner", localHashMap);
    com.tencent.mm.ak.a.g("shake", localHashMap);
    com.tencent.mm.ak.a.g("voip", localHashMap);
    com.tencent.mm.ak.a.g("radar", localHashMap);
    com.tencent.mm.ak.a.g("sns", localHashMap);
    com.tencent.mm.ak.a.g("ext", localHashMap);
    com.tencent.mm.ak.a.g("emoji", localHashMap);
    com.tencent.mm.ak.a.g("emoticon", localHashMap);
    com.tencent.mm.ak.a.g("accountsync", localHashMap);
    com.tencent.mm.ak.a.g("qqmail", localHashMap);
    com.tencent.mm.ak.a.g("readerapp", localHashMap);
    com.tencent.mm.ak.a.g("talkroom", localHashMap);
    com.tencent.mm.ak.a.g("shootstub", localHashMap);
    com.tencent.mm.ak.a.g("shoot", localHashMap);
    com.tencent.mm.ak.a.g("game", localHashMap);
    com.tencent.mm.ak.a.g("bottle", localHashMap);
    com.tencent.mm.ak.a.g("masssend", localHashMap);
    com.tencent.mm.ak.a.g("qmessage", localHashMap);
    com.tencent.mm.ak.a.g("tmessage", localHashMap);
    com.tencent.mm.ak.a.g("chatroom", localHashMap);
    com.tencent.mm.ak.a.g("location", localHashMap);
    com.tencent.mm.ak.a.g("clean", localHashMap);
    com.tencent.mm.ak.a.g("watch", localHashMap);
    com.tencent.mm.ak.a.g("safedevice", localHashMap);
    com.tencent.mm.ak.a.g("card", localHashMap);
    com.tencent.mm.ak.a.g("search", localHashMap);
    com.tencent.mm.ak.a.g("extqlauncher", localHashMap);
    return localHashMap;
  }

  public final List nV()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new c());
    localArrayList.add(new com.tencent.mm.r.f());
    localArrayList.add(new com.tencent.mm.r.d());
    localArrayList.add(new com.tencent.mm.r.e());
    localArrayList.add(new com.tencent.mm.r.a());
    localArrayList.add(new com.tencent.mm.r.b());
    localArrayList.add(new g());
    return localArrayList;
  }

  public final boolean nW()
  {
    return this.bLn;
  }

  public final void onCreate()
  {
    this.bLo.bP(this.cfq);
    if (bLe == null)
    {
      bd.cik.t("login_user_name", "");
      com.tencent.mm.booter.i locali = new com.tencent.mm.booter.i(this.cfq);
      bLe = locali;
      locali.ol();
    }
    com.tencent.mm.booter.al.J(true);
    aa.d("MicroMsg.WorkerProfile", "KEVIN onCreate proc:%s pid:%d" + bKY + Process.myPid());
    bLg = this;
    List localList = ((ActivityManager)com.tencent.mm.sdk.platformtools.al.getContext().getSystemService("activity")).getRunningTasks(1);
    if ((localList != null) && (localList.size() > 0));
    for (ComponentName localComponentName = ((ActivityManager.RunningTaskInfo)localList.get(0)).topActivity; (localComponentName != null) && (localComponentName.getPackageName().equals(com.tencent.mm.sdk.platformtools.al.getPackageName())) && (localComponentName.getClassName().equals(com.tencent.mm.sdk.platformtools.al.azp())); localComponentName = null)
    {
      this.bLn = true;
      return;
    }
    if ((localComponentName != null) && (!localComponentName.getPackageName().equals(com.tencent.mm.sdk.platformtools.al.getPackageName())))
      this.bLn = true;
    nO();
  }

  public final void onTerminate()
  {
    super.onTerminate();
    this.bLq.oV();
    this.bLq = null;
    this.bLo.bQ(this.cfq);
  }

  public final String toString()
  {
    return bKY;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.WorkerProfile
 * JD-Core Version:    0.6.2
 */