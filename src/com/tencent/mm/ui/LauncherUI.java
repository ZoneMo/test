package com.tencent.mm.ui;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Looper;
import android.os.MessageQueue;
import android.os.MessageQueue.IdleHandler;
import android.support.v4.app.Fragment;
import android.support.v4.view.z;
import android.support.v7.app.ActionBar;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.TextView;
import com.tencent.mm.app.WorkerProfile;
import com.tencent.mm.booter.CoreService;
import com.tencent.mm.booter.NotifyReceiver;
import com.tencent.mm.c.a.ia;
import com.tencent.mm.c.a.ic;
import com.tencent.mm.compatible.g.l;
import com.tencent.mm.model.bd;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cb;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pluginsdk.ui.VoiceSearchLayout;
import com.tencent.mm.sandbox.updater.Updater;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.sdk.platformtools.j;
import com.tencent.mm.storage.n;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.account.LoginHistoryUI;
import com.tencent.mm.ui.account.WelcomeSelectView;
import com.tencent.mm.ui.account.WelcomeSelectView_5_2;
import com.tencent.mm.ui.account.WelcomeView;
import com.tencent.mm.ui.account.bind.BindMobileUI;
import com.tencent.mm.ui.account.fj;
import com.tencent.mm.ui.base.CustomViewPager;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.ui.chatting.ChattingUI;
import com.tencent.mm.ui.contact.VoipAddressUI;
import com.tencent.mm.ui.conversation.MainUI;
import com.tencent.mm.ui.pluginapp.FindMoreFriendsUI;
import com.tencent.mm.ui.setting.MoreTabUI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class LauncherUI extends MMFragmentActivity
  implements com.tencent.mm.app.ac, com.tencent.mm.sdk.e.ar
{
  private static boolean glA;
  private static LauncherUI glD;
  private static boolean glE = true;
  private static boolean glK;
  private static int gma = 0;
  private static HashMap gmi;
  private boolean bLh;
  private final HashMap bZy = new HashMap();
  private Intent cOt = null;
  private View cYm;
  private LayoutInflater dLe;
  private String fbx = null;
  private boolean glB;
  private boolean glC = true;
  private boolean glF;
  private boolean glG;
  private boolean glH;
  private boolean glI;
  private HashSet glJ = new HashSet();
  private WelcomeView glL = null;
  private boolean glM = false;
  private boolean glN = false;
  private LauncherUITabView glO;
  private CustomViewPager glP;
  private au glQ;
  private dm glR;
  private boolean glS = true;
  private Runnable glT = new ae(this);
  private PopupWindow.OnDismissListener glU = new al(this);
  private View glV;
  private ImageView glW;
  private View glX;
  private int glY = 0;
  private int glZ = -1;
  private com.tencent.mm.n.m gmb = null;
  private VoiceSearchLayout gmc;
  private com.tencent.mm.i.c gmd = new ap(this);
  private com.tencent.mm.sdk.e.ar gme = new aq(this);
  private g gmf = new ar(this);
  MessageQueue.IdleHandler gmg = new as(this);
  private android.support.v7.app.d gmh = new ag(this);
  private HashMap gmj = new HashMap();
  private ActionBar ha;

  static
  {
    HashMap localHashMap = new HashMap();
    gmi = localHashMap;
    localHashMap.put("tab_main", Integer.valueOf(0));
    gmi.put("tab_address", Integer.valueOf(2));
    gmi.put("tab_find_friend", Integer.valueOf(1));
    gmi.put("tab_settings", Integer.valueOf(3));
  }

  private void aDN()
  {
    moveTaskToBack(true);
    com.tencent.mm.app.f.nC().start();
  }

  public static LauncherUI aEA()
  {
    return glD;
  }

  private void aEB()
  {
    if (getSharedPreferences(com.tencent.mm.sdk.platformtools.al.azs(), 0).getBoolean("settings_landscape_mode", false))
      setRequestedOrientation(-1);
    long l;
    while (true)
    {
      l = System.currentTimeMillis();
      if (glD != null)
        break;
      return;
      setRequestedOrientation(1);
    }
    be.uz().sx().a(this);
    be.uz().sr().a(this.gme);
    com.tencent.mm.i.i.rX().a(this.gmd);
    com.tencent.mm.sdk.b.a.ayH().a("UnreadChange", this.gmf);
    MainUI localMainUI = (MainUI)this.gmj.get(Integer.valueOf(0));
    if (localMainUI != null)
    {
      localMainUI.aKs();
      localMainUI.aLF();
    }
    aED();
    com.tencent.mm.sdk.platformtools.an.p(this.glT);
    com.tencent.mm.sdk.platformtools.an.i(this.glT);
    aEy();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "KEVIN MainTabUI onResume:" + (System.currentTimeMillis() - l));
  }

  private void aED()
  {
    com.tencent.mm.sdk.platformtools.an.i(new ah(this));
  }

  private void aEr()
  {
    if (this.glG)
    {
      this.glG = false;
      vS("tab_main");
    }
  }

  private void aEt()
  {
    if (this.bLh)
      return;
    com.tencent.mm.plugin.d.c.m.dZN.Zl();
    NotifyReceiver.oN();
    this.cOt = getIntent();
    this.bLh = true;
  }

  private void aEx()
  {
    if ((this.glR == null) || (!be.se()))
      return;
    if (this.glR.isShowing())
    {
      this.glR.dismiss();
      return;
    }
    this.glR.setOnDismissListener(this.glU);
    this.glR.cB();
    com.tencent.mm.i.i.rX().y(262145, 266241);
    com.tencent.mm.i.i.rX().y(262148, 266241);
  }

  private void aEy()
  {
    if ((this.glR == null) || (this.glV == null))
      return;
    if (!be.se())
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.LauncherUI", "want update more menu new tips, but mmcore not ready");
      return;
    }
    int i = com.tencent.mm.platformtools.au.a((Integer)be.uz().sr().get(204817), 0);
    int j = com.tencent.mm.platformtools.au.a((Integer)be.uz().sr().get(204820), 0);
    boolean bool1 = com.tencent.mm.i.i.rX().x(262148, 266241);
    boolean bool2 = com.tencent.mm.i.i.rX().cc(266241);
    boolean bool3 = com.tencent.mm.i.i.rX().x(262145, 266241);
    if ((i > 0) || (j > 0) || (bool2) || (bool1) || (bool3))
    {
      this.glX.setVisibility(0);
      return;
    }
    this.glX.setVisibility(8);
  }

  private void aEz()
  {
    if (glK)
    {
      if (!bd.cik.t("login_user_name", "").equals(""))
        startActivity(new Intent().setClass(this, LoginHistoryUI.class));
      this.glG = false;
      this.glH = false;
      glK = false;
      com.tencent.mm.plugin.d.c.m.dZN.hB(8);
      return;
    }
    this.glB = true;
    long l1 = System.currentTimeMillis();
    com.tencent.mm.m.ac.wg();
    if ((this.cOt != null) && (this.cOt.getBooleanExtra("absolutely_exit", false)))
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.LauncherUI", "exit absolutely!!!");
      Intent localIntent3 = (Intent)this.cOt.getParcelableExtra("exit_and_view");
      if (localIntent3 != null)
      {
        com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.LauncherUI", "jump to exit:" + localIntent3);
        startActivity(localIntent3);
      }
      finish();
      MMAppMgr.aFk();
      com.tencent.mm.plugin.d.c.m.dZN.hB(8);
      return;
    }
    if ((this.cOt != null) && (this.cOt.getBooleanExtra("can_finish", false)))
    {
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.LauncherUI", "exit obviously");
      be.uA().T(true);
      if (getApplicationContext().getSharedPreferences("system_config_prefs", l.qi()).getBoolean("settings_fully_exit", true))
      {
        Context localContext = getApplicationContext();
        localContext.stopService(new Intent(localContext, CoreService.class));
      }
      com.tencent.mm.plugin.d.c.m.dZN.hB(8);
      sendBroadcast(new Intent("com.tencent.mm.ui.ACTION_FORCE_DEACTIVE"), "com.tencent.mm.permission.MM_MESSAGE");
      finish();
      return;
    }
    System.currentTimeMillis();
    String str1 = bd.cik.t("login_user_name", "");
    if (((be.uD()) || (!str1.equals(""))) && (!be.se()))
      be.uE();
    long l2 = System.currentTimeMillis();
    this.glN = getIntent().getBooleanExtra("LauncherUI.enter_from_reg", false);
    SharedPreferences localSharedPreferences = getSharedPreferences("system_config_prefs", l.qi());
    boolean bool;
    long l3;
    long l4;
    if ((this.cOt != null) && (!this.cOt.getBooleanExtra("Intro_Switch", false)) && (be.uD()) && (!be.uG()))
    {
      if (("pushcontent_notification".equals(getIntent().getStringExtra("nofification_type"))) && (!com.tencent.mm.platformtools.au.hX(getIntent().getStringExtra("Main_FromUserName"))))
      {
        String str4 = getIntent().getStringExtra("Main_FromUserName");
        int j = getIntent().getIntExtra("MainUI_User_Last_Msg_Type", 0);
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.LauncherUI", "launch report, fromUserName = %s, msgType = %d" + str4 + j);
        com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
        Object[] arrayOfObject4 = new Object[3];
        arrayOfObject4[0] = Integer.valueOf(j);
        arrayOfObject4[1] = str4;
        arrayOfObject4[2] = Integer.valueOf(0);
        localm2.d(10856, arrayOfObject4);
      }
      String str3 = getIntent().getStringExtra("LauncherUI.Shortcut.LaunchType");
      if ((str3 != null) && (str3.equals("launch_type_voip")))
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "launch, LaunchTypeVOIP");
        startActivity(new Intent(this, VoipAddressUI.class).putExtra("LauncherUI.Shortcut.LaunchType", "launch_type_voip"));
        com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = Integer.valueOf(2);
        arrayOfObject3[1] = Integer.valueOf(0);
        localm1.d(11034, arrayOfObject3);
      }
      bool = getIntent().getBooleanExtra("LauncherUI.From.Biz.Shortcut", false);
      if (bool)
      {
        this.fbx = getIntent().getStringExtra("LauncherUI.Shortcut.Username");
        if (bool)
        {
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "launch, fromBizShortcut, bizUsername = " + this.fbx);
          if (!com.tencent.mm.platformtools.au.hX(this.fbx))
          {
            if (w.cv(this.fbx))
            {
              com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "launch, username is contact, go to chattingui");
              startActivity(new Intent(this, ChattingUI.class).putExtra("Chat_User", this.fbx));
            }
            getIntent().putExtra("LauncherUI_From_Biz_Shortcut", false);
            getIntent().putExtra("LauncherUI.From.Biz.Shortcut", false);
            this.fbx = null;
          }
        }
        com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.LauncherUI", "[Launching Application]");
        localSharedPreferences.edit().putBoolean("settings_fully_exit", false).commit();
        l3 = System.currentTimeMillis();
        this.glC = true;
        if (this.glF)
          break label2250;
        if (!com.tencent.mm.sdk.platformtools.am.sG("show_whatsnew"))
        {
          Intent localIntent2 = new Intent();
          localIntent2.setComponent(new ComponentName(e.gks, "com.tencent.mm.booter.MMReceivers$ToolsProcessReceiver"));
          localIntent2.putExtra("tools_process_action_code_key", "com.tencent.mm.intent.ACTION_START_TOOLS_PROCESS");
          sendBroadcast(localIntent2);
        }
        l4 = System.currentTimeMillis();
        if (be.se())
          break label1134;
        finish();
      }
    }
    while (true)
    {
      aEr();
      aEB();
      this.glF = true;
      label910: ac localac = (ac)mr(this.glY);
      if (localac != null)
        localac.aDR();
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.LauncherUI", "KEVIN dispatch resume " + (System.currentTimeMillis() - l3));
      com.tencent.mm.m.c.a(v.th(), false, -1);
      this.glG = false;
      label977: com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "KEVIN LaucherUI lauch last : " + (System.currentTimeMillis() - l2));
      int i = getIntent().getIntExtra("preferred_tab", 0);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(i);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.LauncherUI", "KEVIN onNewIntent, tabIdx = %d", arrayOfObject2);
      if (i != 0)
      {
        mq(i);
        getIntent().putExtra("preferred_tab", 0);
      }
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "KEVIN onresume " + (System.currentTimeMillis() - l1) + "instance : " + gma);
      return;
      bool = getIntent().getBooleanExtra("LauncherUI_From_Biz_Shortcut", false);
      this.fbx = getIntent().getAction();
      break;
      label1134: if (com.tencent.mm.platformtools.au.FH())
        dn.bX(this);
      long l5 = System.currentTimeMillis();
      MMActivity.bO(this);
      HashMap localHashMap1 = new HashMap();
      localHashMap1.put("qqmail", getString(2131165197));
      localHashMap1.put("fmessage", getString(2131165200));
      localHashMap1.put("tmessage", getString(2131165203));
      localHashMap1.put("qmessage", getString(2131165206));
      localHashMap1.put("qqsync", getString(2131165209));
      localHashMap1.put("floatbottle", getString(2131165212));
      localHashMap1.put("lbsapp", getString(2131165215));
      localHashMap1.put("shakeapp", getString(2131165218));
      localHashMap1.put("medianote", getString(2131165221));
      localHashMap1.put("qqfriend", getString(2131165227));
      localHashMap1.put("newsapp", getString(2131165247));
      localHashMap1.put("blogapp", getString(2131165259));
      localHashMap1.put("facebookapp", getString(2131165224));
      localHashMap1.put("masssendapp", getString(2131165239));
      localHashMap1.put("meishiapp", getString(2131165242));
      localHashMap1.put("feedsapp", getString(2131168623));
      localHashMap1.put("voipapp", getString(2131165250));
      localHashMap1.put("weixin", getString(2131165189));
      localHashMap1.put("filehelper", getString(2131165271));
      localHashMap1.put("cardpackage", getString(2131165253));
      localHashMap1.put("officialaccounts", getString(2131165233));
      localHashMap1.put("voicevoipapp", getString(2131165262));
      localHashMap1.put("helper_entry", getString(2131165236));
      localHashMap1.put("voiceinputapp", getString(2131165265));
      localHashMap1.put("linkedinplugin", getString(2131165268));
      localHashMap1.put("googlecontact", getString(2131165230));
      com.tencent.mm.f.a.b(localHashMap1);
      HashMap localHashMap2 = new HashMap();
      localHashMap2.put("weixin", getString(2131165190));
      com.tencent.mm.f.a.c(localHashMap2);
      try
      {
        HashSet localHashSet = new HashSet();
        String[] arrayOfString = getString(2131166728).split(";");
        localHashSet.add(arrayOfString[0]);
        localHashSet.add(arrayOfString[1]);
        w.a(localHashSet);
        label1721: com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "KEVIN MainTabUI onCreate initLanguage: " + (System.currentTimeMillis() - l5));
        this.dLe = ((LayoutInflater)getSystemService("layout_inflater"));
        if (this.glL != null)
          this.glL = null;
        while (true)
        {
          long l6 = System.currentTimeMillis();
          this.cYm = this.dLe.inflate(2130903406, null);
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "KEVIN MainTabUI onCreate inflater.inflate(R.layout.main_tab, null);" + (System.currentTimeMillis() - l6));
          setContentView(this.cYm);
          Looper.myQueue().addIdleHandler(this.gmg);
          this.glI = true;
          this.gmc = ((VoiceSearchLayout)findViewById(2131362960));
          this.gmc.kj(com.tencent.mm.sdk.platformtools.e.a(this, 100.0F));
          this.glP = ((CustomViewPager)findViewById(2131362856));
          this.glP.n(3);
          if (this.glO != null)
          {
            this.glO.a(null);
            this.glO.setVisibility(8);
          }
          this.glO = ((LauncherUITabView)findViewById(2131362959));
          this.glP.da(true);
          this.glQ = new au(this, this, this.glP);
          this.glO.setVisibility(0);
          this.glO.a(this.glQ);
          this.ha.a(this.ha.aV().a("main").a(this.gmh));
          this.ha.a(this.ha.aV().a("add").a(this.gmh));
          this.ha.a(this.ha.aV().a("find").a(this.gmh));
          mq(0);
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "KEVIN MainTabUI onCreate initView(); " + (System.currentTimeMillis() - l6));
          long l7 = System.currentTimeMillis();
          s(getIntent());
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "KEVIN handleJump(getIntent()); " + (System.currentTimeMillis() - l7));
          long l8 = System.currentTimeMillis();
          if (!this.glN)
            MMAppMgr.i(this, 1);
          com.tencent.mm.plugin.b.eS(3);
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "KEVIN syncAddrBookAndUpload checkLastLbsroomAndQuitIt " + (System.currentTimeMillis() - l8));
          this.ha.show();
          com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.LauncherUI", "KEVIN MainTabUI onCreate : " + (System.currentTimeMillis() - l4));
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "onMainTabCreate, send refresh broadcast");
          sendBroadcast(new Intent("com.tencent.mm.plugin.openapi.Intent.ACTION_REFRESH_WXAPP"));
          break;
        }
        label2250: aEr();
        aEB();
        break label910;
        String str2 = bd.cik.t("login_user_name", "");
        if ((!be.uD()) && (str2.equals("")))
          break label977;
        com.tencent.mm.plugin.d.c.m.dZN.hB(8);
        be.uA().d(new cb(new an(this), "reset accinfo"));
        Object[] arrayOfObject1 = new Object[3];
        arrayOfObject1[0] = Boolean.valueOf(this.glF);
        arrayOfObject1[1] = Boolean.valueOf(this.glG);
        arrayOfObject1[2] = Boolean.valueOf(this.glH);
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "launch mainTabHasCreate:%b needResetLaunchUI:%b formNotification:%b", arrayOfObject1);
        if ((this.glF) && ((!this.glG) || (this.glH)))
          break label977;
        be.uH();
        com.tencent.mm.plugin.backup.model.d.reset();
        if (be.se())
          be.dt("[" + this.glF + " " + this.glG + " " + this.glH + "]");
        finish();
        Intent localIntent1 = new Intent(this, LauncherUI.class);
        localIntent1.addFlags(67108864);
        glK = true;
        glA = true;
        startActivity(localIntent1);
        be.uI();
        if (!this.glH)
          break label977;
        this.glH = false;
      }
      catch (Exception localException)
      {
        break label1721;
      }
    }
  }

  private void mq(int paramInt)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = Integer.valueOf(this.glY);
    arrayOfObject[2] = Boolean.valueOf(this.glI);
    arrayOfObject[3] = Integer.valueOf(this.gmj.size());
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "change tab to %d, cur tab %d, has init tab %B, tab cache size %d", arrayOfObject);
    if ((!this.glI) || (paramInt < 0) || ((this.glQ != null) && (paramInt > -1 + this.glQ.getCount())));
    do
    {
      do
      {
        return;
        if ((paramInt == 2) || (this.glY == 2))
          be.uz().sr().set(143618, Integer.valueOf(0));
      }
      while ((this.glY == paramInt) && (this.gmj.size() != 0));
      this.glY = paramInt;
      if (this.glO != null)
        this.glO.mu(this.glY);
    }
    while (this.glP == null);
    this.glP.a(this.glY, false);
    mp(this.glY);
  }

  private void s(Intent paramIntent)
  {
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.LauncherUI", "handleJump");
    if (!be.se())
    {
      startActivity(new Intent(this, LauncherUI.class).putExtra("Intro_Switch", true).addFlags(67108864));
      finish();
    }
    String str2;
    do
    {
      ia localia;
      do
      {
        return;
        localia = new ia();
        localia.bRw.bNk = 4;
        com.tencent.mm.sdk.b.a.ayH().f(localia);
      }
      while (localia.bRx.bRB);
      if (!"talkroom_notification".equals(paramIntent.getStringExtra("nofification_type")))
        break;
      str2 = paramIntent.getStringExtra("enter_chat_usrname");
    }
    while (com.tencent.mm.platformtools.au.hX(str2));
    Intent localIntent4 = new Intent();
    localIntent4.putExtra("enter_room_username", str2);
    localIntent4.setFlags(268435456);
    com.tencent.mm.ak.a.b(this, "talkroom", ".ui.TalkRoomUI", localIntent4);
    return;
    int k;
    String str1;
    n localn;
    if (paramIntent.getBooleanExtra("show_update_dialog", false))
    {
      k = paramIntent.getIntExtra("update_type", -1);
      if (k == -1)
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.LauncherUI", "showUpdateDialog is true, but updateType is -1");
    }
    else
    {
      str1 = paramIntent.getStringExtra("Main_User");
      if ((str1 == null) || (str1.equals("")))
        break label551;
      localn = be.uz().sx().tZ(str1);
      if (localn == null)
        break label551;
    }
    label289: label551: for (int i = localn.rN(); ; i = 0)
    {
      MMAppMgr.nJ();
      mq(0);
      if ((!paramIntent.getBooleanExtra("Intro_Is_Muti_Talker", true)) && (i > 0))
      {
        if (paramIntent.getIntExtra("Intro_Bottle_unread_count", 0) > 0)
          com.tencent.mm.ak.a.l(this, "bottle", ".ui.BottleConversationUI");
        while (true)
          if (paramIntent.getIntExtra("kstyle_show_bind_mobile_afterauth", 0) > 0)
          {
            Intent localIntent1 = new Intent(this, BindMobileUI.class);
            paramIntent.putExtra("kstyle_bind_recommend_show", paramIntent.getIntExtra("kstyle_bind_recommend_show", 0));
            paramIntent.putExtra("kstyle_bind_wording", paramIntent.getParcelableExtra("kstyle_bind_wording"));
            MMWizardActivity.j(this, localIntent1);
            return;
            Updater localUpdater = Updater.a(this, null);
            new af(this);
            localUpdater.lA(k);
            break;
            if (w.cL(str1))
            {
              Intent localIntent2 = new Intent();
              localIntent2.addFlags(67108864);
              localIntent2.putExtra("type", 20);
              com.tencent.mm.ak.a.b(this, "readerapp", ".ui.ReaderAppUI", localIntent2);
            }
            else if (w.cS(str1))
            {
              Intent localIntent3 = new Intent();
              localIntent3.addFlags(67108864);
              localIntent3.putExtra("type", 11);
              com.tencent.mm.ak.a.b(this, "readerapp", ".ui.ReaderAppUI", localIntent3);
            }
            else
            {
              if (paramIntent.getIntExtra("MainUI_User_Last_Msg_Type", 34) != 34)
                break label545;
            }
          }
      }
      for (int j = 2; ; j = 1)
      {
        this.glS = false;
        startActivity(new Intent(this, ChattingUI.class).putExtra("Chat_User", str1).putExtra("Chat_Mode", j));
        break label289;
        mq(0);
        break label289;
        break;
      }
    }
  }

  public final void a(int paramInt, com.tencent.mm.sdk.e.ao paramao, Object paramObject)
  {
    if (paramao == be.uz().sx())
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      arrayOfObject[1] = paramObject;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.LauncherUI", "Launcherui onNotifyChange event type %d, username %s", arrayOfObject);
      if (com.tencent.mm.storage.i.tC((String)paramObject))
        aEu();
    }
  }

  public final int aEC()
  {
    long l = System.currentTimeMillis();
    int i;
    if (!be.se())
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.UnreadCountHelper", "getMainTabUnreadCount, but mmcore not ready");
      i = 0;
    }
    while (true)
    {
      ms(i);
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Long.valueOf(System.currentTimeMillis() - l);
      arrayOfObject2[1] = Integer.valueOf(i);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.LauncherUI", "unRead setConversationTagUnread  last time %d, unread %d", arrayOfObject2);
      return i;
      if ((0x8000 & v.tl()) == 0)
      {
        ArrayList localArrayList = new ArrayList();
        localArrayList.add("floatbottle");
        i = com.tencent.mm.model.x.a(w.chM, localArrayList);
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(i);
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.LauncherUI", "unRead no bottole getMainTabUnreadCount  unread %d ", arrayOfObject1);
      }
      else
      {
        i = com.tencent.mm.model.x.dk(w.chM);
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Integer.valueOf(i);
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.LauncherUI", "unRead with bottole getMainTabUnreadCount  unread %d ", arrayOfObject3);
      }
    }
  }

  public final void aEE()
  {
    if (!this.glF)
      return;
    this.glM = true;
    this.gmc.setBackgroundDrawable(null);
    this.gmc.arP();
  }

  public final boolean aEq()
  {
    return this.glF;
  }

  public final boolean aEs()
  {
    return this.glC;
  }

  protected final void aEu()
  {
    com.tencent.mm.sdk.platformtools.an.p(this.glT);
    com.tencent.mm.sdk.platformtools.an.b(this.glT, 250L);
  }

  public final void aEv()
  {
    Iterator localIterator = this.gmj.values().iterator();
    while (localIterator.hasNext())
    {
      Fragment localFragment = (Fragment)localIterator.next();
      if (!(localFragment instanceof MainUI))
        ((ac)localFragment).aDP();
    }
  }

  public final void aEw()
  {
    if (this.gmj.containsKey(Integer.valueOf(0)))
      ((ac)this.gmj.get(Integer.valueOf(0))).aDP();
  }

  public final void aY(int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2)
      return;
    mr(paramInt1);
    mr(paramInt2);
  }

  public final void da(boolean paramBoolean)
  {
    if (this.glP != null)
      this.glP.da(paramBoolean);
    LauncherUITabView localLauncherUITabView;
    if (this.glO != null)
    {
      localLauncherUITabView = this.glO;
      if (!paramBoolean)
        break label39;
    }
    label39: for (int i = 0; ; i = 8)
    {
      localLauncherUITabView.setVisibility(i);
      return;
    }
  }

  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.LauncherUI", "ui group onKeyDown");
    if ((paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getAction() == 1) && (this.glR != null) && (this.glR.isShowing()))
    {
      this.glR.dismiss();
      return true;
    }
    if ((paramKeyEvent.getKeyCode() == 82) && (paramKeyEvent.getAction() == 1))
    {
      aEx();
      return true;
    }
    if ((this.glQ != null) && (paramKeyEvent.getAction() == 0) && (((cy)this.glQ.f(this.glP.ak())).onKeyDown(paramKeyEvent.getKeyCode(), paramKeyEvent)))
      return true;
    if ((paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getAction() == 0))
    {
      if (com.tencent.mm.app.c.ny().nz())
        return true;
      if ((this.gmc != null) && (this.gmc.getVisibility() == 0))
      {
        this.gmc.arK();
        return true;
      }
      if (ba.br(this))
      {
        ai localai = new ai(this);
        int j;
        if (!be.se())
          j = 0;
        while (j != 0)
        {
          return true;
          int i = ((Integer)be.uz().sr().get(65, Integer.valueOf(0))).intValue();
          if (i >= 5)
          {
            j = 0;
          }
          else if (!com.tencent.mm.sdk.platformtools.am.sE("show_wap_adviser"))
          {
            j = 0;
          }
          else
          {
            View localView = View.inflate(this, 2130903574, null);
            ((TextView)localView.findViewById(2131363341)).setText(2131167110);
            com.tencent.mm.ui.base.aa localaa = new com.tencent.mm.ui.base.aa(this);
            localaa.mR(2131167675);
            localaa.ai(localView);
            localaa.b(2131167684, new cd(i));
            localaa.dp(false);
            localaa.c(2131167105, new ce());
            localaa.a(new cf(localai));
            localaa.aGI().show();
            j = 1;
          }
        }
      }
      int k = ba.bv(this);
      if ((be.se()) && (ba.lK(k)) && (com.tencent.mm.platformtools.au.b((Boolean)be.uz().sr().get(16385))) && (MMAppMgr.b(this, k, new aj(this, k), new ak(this))))
        return true;
      aDN();
    }
    try
    {
      boolean bool = super.dispatchKeyEvent(paramKeyEvent);
      return bool;
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localException.getMessage();
      com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.LauncherUI", "dispatch key event catch exception %s", arrayOfObject);
    }
    return false;
  }

  public final void mp(int paramInt)
  {
    cy localcy = mr(paramInt);
    if (localcy == null);
    do
    {
      do
        return;
      while (!(localcy instanceof ac));
      ((ac)localcy).aDS();
    }
    while (this.gmc == null);
    this.gmc.reset();
  }

  public final cy mr(int paramInt)
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "get tab %d", arrayOfObject1);
    if (paramInt < 0)
      return null;
    if (this.gmj.containsKey(Integer.valueOf(paramInt)))
      return (cy)this.gmj.get(Integer.valueOf(paramInt));
    Object localObject = null;
    switch (paramInt)
    {
    default:
    case 0:
    case 2:
    case 1:
    case 3:
    }
    while (true)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(paramInt);
      com.tencent.mm.sdk.platformtools.aa.f("MicroMsg.LauncherUI", "createFragment index:%d", arrayOfObject2);
      if (localObject != null)
        ((cy)localObject).a(this);
      this.gmj.put(Integer.valueOf(paramInt), localObject);
      return localObject;
      localObject = (cy)Fragment.a(this, MainUI.class.getName(), null);
      continue;
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("Need_Voice_Search", true);
      localBundle.putBoolean("favour_include_biz", true);
      localObject = (cy)Fragment.a(this, com.tencent.mm.ui.contact.m.class.getName(), localBundle);
      continue;
      localObject = (cy)Fragment.a(this, FindMoreFriendsUI.class.getName(), null);
      continue;
      com.tencent.mm.ak.a.avr();
      localObject = (cy)Fragment.a(this, MoreTabUI.class.getName(), null);
    }
  }

  public final void ms(int paramInt)
  {
    this.glO.mw(paramInt);
  }

  public final void nZ()
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "KEVIN onInit");
    com.tencent.mm.sdk.platformtools.an.i(new ao(this));
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.LauncherUI", "edw on activity result");
    if (this.glF)
    {
      if (paramInt1 != 1)
        break label55;
      if (!com.tencent.mm.platformtools.au.c((Boolean)be.uz().sr().get(12323)))
        com.tencent.mm.platformtools.ag.a(this, null);
    }
    return;
    label55: switch (paramInt2)
    {
    default:
    case -1:
    }
    while (true)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      com.tencent.mm.sdk.platformtools.am.sF("welcome_page_show");
      getSharedPreferences("system_config_prefs", l.qi()).edit().putBoolean("settings_fully_exit", true).commit();
      MMAppMgr.nJ();
      MMAppMgr.a(this, null);
      finish();
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "KEVIN onCreate ");
    if (glD != null)
    {
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.LauncherUI", "finish last mainTabUI");
      glD.finish();
    }
    glD = this;
    gma = 1 + gma;
    super.onCreate(paramBundle);
    WorkerProfile.nM().a(this);
    this.ha = aW();
    String str1 = getString(2131167461);
    if (this.ha != null)
    {
      if (Build.VERSION.SDK_INT < 11)
        this.ha.setBackgroundDrawable(new ColorDrawable(getResources().getColor(2131492937)));
      this.ha.aR();
      this.ha.setTitle(str1);
      this.ha.hide();
    }
    this.glR = new dm(this);
    com.tencent.mm.sdk.platformtools.al.r(this);
    String str2 = bd.cik.t("login_user_name", "");
    if (((!glE) || (!WorkerProfile.nM().nW())) && ((be.uD()) || (!str2.equals(""))))
      aEt();
    while (true)
    {
      glE = false;
      return;
      setRequestedOrientation(1);
      com.tencent.mm.app.c.ny().d(this);
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    int i = aW().getHeight();
    int j;
    if (i == 0)
    {
      DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
      if (localDisplayMetrics.widthPixels > localDisplayMetrics.heightPixels)
        j = getResources().getDimensionPixelSize(2131558456);
    }
    while (true)
    {
      MenuItem localMenuItem1 = paramMenu.add(0, 1, 0, 2131167448);
      localMenuItem1.setIcon(2130837610);
      z.a(localMenuItem1, 2);
      MenuItem localMenuItem2 = paramMenu.add(0, 2, 0, 2131167449);
      localMenuItem2.setIcon(2130837594);
      z.a(localMenuItem2, 2);
      MenuItem localMenuItem3 = paramMenu.add(0, 3, 0, "");
      int k = com.tencent.mm.an.a.fromDPToPix(this, 56);
      if (this.glV == null)
      {
        ViewGroup.LayoutParams localLayoutParams1 = new ViewGroup.LayoutParams(k, j);
        this.glV = View.inflate(this, 2130903067, null);
        this.glW = ((ImageView)this.glV.findViewById(2131361860));
        this.glX = this.glV.findViewById(2131361902);
        this.glV.setLayoutParams(localLayoutParams1);
        this.glV.setBackgroundResource(2130837607);
        this.glV.setMinimumHeight(j);
        this.glV.setMinimumWidth(k);
        this.glW.setImageResource(2130837608);
        this.glV.setOnClickListener(new am(this));
      }
      aEy();
      z.a(localMenuItem3, this.glV);
      z.a(localMenuItem3, 2);
      ViewGroup.LayoutParams localLayoutParams2 = this.glV.getLayoutParams();
      localLayoutParams2.width = k;
      localLayoutParams2.height = j;
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.LauncherUI", "onCreateOptionsMenu");
      return true;
      j = getResources().getDimensionPixelSize(2131558455);
      continue;
      j = i;
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.LauncherUI", "on destroy");
    WorkerProfile.nM().b(this);
    int i = -1 + gma;
    gma = i;
    if (i == 0)
    {
      glD = null;
      com.tencent.mm.sdk.platformtools.al.r(null);
    }
    if (this.glF)
    {
      if (this.gmb != null)
        be.uA().b(255, this.gmb);
      Looper.myQueue().removeIdleHandler(this.gmg);
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.LauncherUI", "on destroy");
    }
    if (this.gmc != null)
      this.gmc.a(null);
    this.gmj.clear();
  }

  protected void onNewIntent(Intent paramIntent)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "onNewIntent");
    this.cOt = paramIntent;
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    if (!WorkerProfile.nM().nN())
      return;
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "KEVIN clearTop");
    if (this.cOt.getBooleanExtra("Intro_Need_Clear_Top ", false))
    {
      finish();
      Intent localIntent = new Intent(this, LauncherUI.class);
      localIntent.addFlags(67108864);
      startActivity(localIntent);
      return;
    }
    if ((0x4000000 & paramIntent.getFlags()) == 67108864)
    {
      this.glG = true;
      this.glH = paramIntent.getBooleanExtra("Intro_Notify", false);
    }
    if (this.glF)
    {
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.LauncherUI", "on new intent");
      if (WorkerProfile.nM().nN())
        s(paramIntent);
    }
    mq(0);
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2)
    {
      com.tencent.mm.plugin.d.c.m.dZN.j(10919, "0");
      PopupWindow.OnDismissListener localOnDismissListener = this.glU;
      com.tencent.mm.ui.tools.dl localdl = new com.tencent.mm.ui.tools.dl(this);
      localdl.a(new dk());
      localdl.b(new dl(this));
      localdl.setOnDismissListener(localOnDismissListener);
      localdl.cB();
      return true;
    }
    int i;
    if (paramMenuItem.getItemId() == 1)
    {
      com.tencent.mm.ak.a.b(this, "search", ".ui.SearchContactUI", new Intent().putExtra("from_tab_index", this.glY).putExtra("MMActivity.OverrideEnterAnimation", 0).putExtra("MMActivity.OverrideExitAnimation", 0));
      if (this.glY == 0)
        i = 1;
    }
    while (true)
    {
      com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(i);
      arrayOfObject[1] = Integer.valueOf(1);
      arrayOfObject[2] = Integer.valueOf(0);
      localm.d(10991, arrayOfObject);
      return true;
      if (this.glY == 2)
      {
        i = 2;
        continue;
        return super.onOptionsItemSelected(paramMenuItem);
      }
      else
      {
        i = 0;
      }
    }
  }

  protected void onPause()
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "edw onPause");
    super.onPause();
    if ((!this.bLh) || (!WorkerProfile.nM().nN()))
      return;
    this.glC = false;
    if ((this.glF) && (WorkerProfile.nM().nN()))
    {
      MainUI localMainUI = (MainUI)this.gmj.get(Integer.valueOf(0));
      if (localMainUI != null)
        localMainUI.aLG();
      if (be.se())
      {
        be.uz().sr().b(this.gme);
        be.uz().sx().b(this);
        com.tencent.mm.i.i.rX().b(this.gmd);
        com.tencent.mm.sdk.b.a.ayH().b("UnreadChange", this.gmf);
      }
    }
    if ((this.glR != null) && (this.glR.isShowing()))
      this.glR.dismiss();
    if (this.glL != null)
      this.glL.onPause();
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.LauncherUI", "KEVIN Launcher onPause ");
  }

  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
  }

  public void onResume()
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.LauncherUI", "onResume start");
    if ((this.glS) && (h.aps() != null) && (!com.tencent.mm.platformtools.au.hX(h.apu().Rz())))
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = h.aps().Rp();
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "launcher onResume end track %s", arrayOfObject);
      com.tencent.mm.c.a.aa localaa = new com.tencent.mm.c.a.aa();
      localaa.bMq.username = h.aps().Rp();
      com.tencent.mm.sdk.b.a.ayH().f(localaa);
    }
    if (this.gmj.size() != 0)
      ((ac)this.gmj.get(Integer.valueOf(this.glY))).aDQ();
    long l = System.currentTimeMillis();
    if (this.glL != null)
      this.glL.onResume();
    if ((!this.bLh) || (!WorkerProfile.nM().nN()))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.LauncherUI", "LauncherUI onResume : " + (System.currentTimeMillis() - l));
      super.onResume();
      return;
    }
    aEz();
    if (this.glM)
    {
      this.glM = false;
      this.glM = false;
      this.gmc.reset();
    }
    com.tencent.mm.app.f.nC().resume();
    super.onResume();
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.LauncherUI", "LauncherUI Launcher onResume end: " + (System.currentTimeMillis() - l));
    this.glS = true;
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
  }

  public final boolean s(Activity paramActivity)
  {
    boolean bool = be.uD();
    String str = bd.cik.t("login_user_name", "");
    if ((!bool) && (str.equals("")));
    for (int i = 1; i == 0; i = 0)
    {
      j.gcp = false;
      return false;
    }
    if (com.tencent.mm.app.c.ny().bKN.booleanValue())
    {
      be.uA().d(new fj());
      this.glL = new WelcomeSelectView_5_2(paramActivity);
      paramActivity.setContentView(this.glL);
      this.glL.aGn();
      if (!j.gcq)
        break label131;
      MMAppMgr.f(paramActivity);
    }
    while (true)
    {
      return true;
      this.glL = new WelcomeSelectView(paramActivity);
      break;
      label131: MMAppMgr.u(paramActivity);
    }
  }

  public final void vS(String paramString)
  {
    if ((paramString == null) || (paramString.equals("")))
      return;
    mq(((Integer)gmi.get(paramString)).intValue());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.LauncherUI
 * JD-Core Version:    0.6.2
 */