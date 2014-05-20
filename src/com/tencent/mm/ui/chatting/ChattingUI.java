package com.tencent.mm.ui.chatting;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.media.AudioManager;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.MediaStore.Audio.Media;
import android.provider.Settings.System;
import android.support.v7.app.ActionBar;
import android.text.ClipboardManager;
import android.text.SpannableString;
import android.text.TextUtils;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewStub;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.ai.q;
import com.tencent.mm.c.a.da;
import com.tencent.mm.c.a.dd;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.modelvoice.bc;
import com.tencent.mm.modelvoice.bh;
import com.tencent.mm.modelvoice.bj;
import com.tencent.mm.modelvoice.br;
import com.tencent.mm.n.ac;
import com.tencent.mm.network.bm;
import com.tencent.mm.p.ab;
import com.tencent.mm.plugin.voicereminder.a.j;
import com.tencent.mm.pluginsdk.ai;
import com.tencent.mm.pluginsdk.aj;
import com.tencent.mm.pluginsdk.model.app.aw;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.u;
import com.tencent.mm.pluginsdk.ui.EmojiView;
import com.tencent.mm.pluginsdk.ui.chat.ChatFooter;
import com.tencent.mm.sdk.modelmsg.WXAppExtendObject;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.sdk.platformtools.LBSManager;
import com.tencent.mm.sdk.platformtools.bq;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.storage.RegionCodeDecoder;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.bd;
import com.tencent.mm.storage.bp;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.cb;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.d;
import com.tencent.mm.ui.LauncherUI;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAppMgr;
import com.tencent.mm.ui.RoomInfoUI;
import com.tencent.mm.ui.base.MMPullDownView;
import com.tencent.mm.ui.base.TalkRoomPopupNav;
import com.tencent.mm.ui.base.cd;
import com.tencent.mm.ui.base.ce;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.ui.cl;
import com.tencent.mm.ui.contact.SelectContactUI;
import com.tencent.mm.ui.cx;
import com.tencent.mm.ui.tools.CropImageNewUI;
import com.tencent.mm.ui.tools.WebViewUI;
import com.tencent.mm.ui.tools.dg;
import com.tencent.mm.ui.tools.eo;
import com.tencent.mm.ui.voicetranstext.VoiceTransTextUI;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.y;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@SuppressLint({"DefaultLocale"})
public class ChattingUI extends MMActivity
  implements com.tencent.mm.model.ay, com.tencent.mm.n.m, com.tencent.mm.platformtools.w, ai, com.tencent.mm.pluginsdk.ao, com.tencent.mm.sdk.e.al, com.tencent.mm.sdk.e.ar, com.tencent.mm.storage.ar
{
  public static boolean gOW = false;
  public static boolean gOa = false;
  private ch cHU = null;
  private boolean cQb = false;
  private boolean cRp = false;
  private com.tencent.mm.p.a cSY;
  private MMPullDownView cXV;
  private final com.tencent.mm.sdk.e.al cYV = new ji(this);
  protected ChatFooter dKO;
  private com.tencent.mm.ui.base.x dLA;
  private cd dLv = new ih(this);
  private View.OnCreateContextMenuListener dYT = new in(this);
  private dg diX;
  private eo diw = null;
  private ClipboardManager dkr;
  private final com.tencent.mm.sdk.e.al doi = new gd(this);
  private ImageView dwS;
  private j ePu = new ij(this);
  private com.tencent.mm.storage.i eSm;
  private com.tencent.mm.model.am edd;
  private String filePath;
  private com.tencent.mm.sdk.b.g flR = new ju(this);
  private final com.tencent.mm.pluginsdk.ui.chat.am fqd = new gv(this);
  protected boolean gJU = false;
  private ce gKI;
  private ca gLo;
  protected es gMi;
  private v gMj = null;
  private String gMl;
  protected boolean gMn = false;
  protected boolean gMo = false;
  private final jx gMp = new jx(this);
  private ViewGroup gOF;
  protected ChatFooterCustom gOG;
  private ArrayList gOH;
  private ListView gOI;
  private com.tencent.mm.ui.base.x gOJ = null;
  private boolean gOK = false;
  private Handler gOL = new Handler();
  private boolean gOM = false;
  private boolean gON = false;
  private boolean gOO = true;
  private int gOP = 0;
  protected LinearLayout gOQ;
  private boolean gOR = false;
  protected boolean gOS = false;
  private boolean gOT = false;
  private int gOU = 0;
  private final com.tencent.mm.ui.bindqq.g gOV = null;
  protected boolean gOX = true;
  protected boolean gOY = false;
  protected Map gOZ = new HashMap();
  private fv gOt;
  private boolean gOy = false;
  private com.tencent.mm.ui.c gPA;
  private MenuItem.OnMenuItemClickListener gPB = new gp(this);
  private boolean gPC;
  private com.tencent.mm.c.a.r gPD = new com.tencent.mm.c.a.r();
  private Bitmap gPE;
  private TalkRoomPopupNav gPF;
  private View gPa;
  private boolean gPb = false;
  private boolean gPc = false;
  private boolean gPd = false;
  private TextView gPe;
  private ListView gPf;
  private View gPg;
  private long gPh = 0L;
  private ChattingFooterMoreBtnBar gPi;
  private fn gPj;
  private boolean gPk = false;
  private boolean gPl = true;
  private int gPm = 0;
  private RelativeLayout gPn;
  private String gPo;
  private List gPp = new LinkedList();
  private final jv gPq = new gk(this);
  private final com.tencent.mm.sdk.platformtools.ay gPr = new com.tencent.mm.sdk.platformtools.ay(new hv(this), true);
  private final com.tencent.mm.sdk.e.al gPs = new iy(this);
  private com.tencent.mm.sdk.b.g gPt = new ga(this);
  private final com.tencent.mm.sdk.e.al gPu = new gb(this);
  private final com.tencent.mm.sdk.e.al gPv = new gc(this);
  private final com.tencent.mm.sdk.e.al gPw = new ge(this);
  md gPx = new md(this);
  mg gPy = new mg(this);

  @SuppressLint({"HandlerLeak"})
  private Handler gPz = new gf(this);
  private boolean glB = false;

  @SuppressLint({"HandlerLeak"})
  private Handler handler = new fz(this);

  private void E(com.tencent.mm.storage.i parami)
  {
    if ((this.gPb) || (this.gOy))
      this.dKO.setVisibility(8);
    while ((parami == null) || (!parami.aAp()))
      return;
    com.tencent.mm.p.f localf;
    if (this.cSY != null)
    {
      localf = this.cSY.xu();
      if ((localf != null) && (localf.cnk))
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "bizinfo name=" + parami.getUsername() + " is hide tool bar");
        this.dKO.setVisibility(8);
        return;
      }
      if ((!com.tencent.mm.platformtools.au.hX(parami.getUsername())) && (localf != null))
        switch (localf.cnA)
        {
        default:
          if (this.gOG != null)
            this.gOG.setVisibility(8);
          this.dKO.setVisibility(0);
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "bizinfo name=" + parami.getUsername() + " extInfo=" + localf);
        case 2:
        }
    }
    while (true)
    {
      this.dKO.o(true, true);
      this.dKO.cC(true);
      return;
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "bizinfo name=" + parami.getUsername() + " is show custom menu");
      nB(2131362223);
      this.gOG = ((ChatFooterCustom)findViewById(2131362246));
      this.gOG.D(this.eSm);
      try
      {
        this.gOG.FR();
        this.gOG.a(this.gOF, localf.cnr, parami.getUsername());
        this.gOG.a(this.fqd);
        this.gOG.a(this.gPq);
        this.dKO.a(this.fqd);
        this.gOG.setVisibility(0);
        this.dKO.setVisibility(8);
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        this.fqd.cF(true);
      }
    }
  }

  private void a(int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    if ((paramString == null) || (paramString.equals("")) || (!com.tencent.mm.a.c.as(paramString)))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", " doSendImage : filePath is null or empty");
      return;
    }
    if ((this.gLo != null) && (!this.gLo.aBS()))
    {
      if (this.gLo.aDk().vA("").equalsIgnoreCase("@t.qq.com"));
      Object[] arrayOfObject;
      for (String str = getString(2131165294); ; str = getString(2131165293, arrayOfObject))
      {
        com.tencent.mm.ui.base.h.p(this, str, getString(2131167675));
        return;
        arrayOfObject = new Object[1];
        arrayOfObject[0] = com.tencent.mm.f.a.by(this.gLo.getName());
      }
    }
    if (aJH())
    {
      com.tencent.mm.s.c localc = new com.tencent.mm.s.c(paramInt2, Ch(), this.eSm.getUsername(), paramString, paramInt3);
      be.uA().d(localc);
      return;
    }
    y localy = new y(paramInt2, Ch(), aJe(), paramString, paramInt1, null, paramInt3, "", "");
    be.uA().d(localy);
    dM(true);
  }

  private void aIS()
  {
    if (this.gKI != null)
      this.gKI.dismiss();
  }

  private void aJA()
  {
    if (!this.gJU)
    {
      if ((this.eSm.rb()) || (!com.tencent.mm.model.w.co(aJe())))
        break label176;
      if ((!this.gJU) && (this.gOQ != null));
    }
    else
    {
      return;
    }
    this.gOQ.removeAllViews();
    LinearLayout localLinearLayout = (LinearLayout)getLayoutInflater().inflate(2130903199, null);
    ImageView localImageView = (ImageView)localLinearLayout.findViewById(2131362345);
    localImageView.setImageBitmap(com.tencent.mm.m.c.a(aJe(), true, -1));
    localImageView.setOnClickListener(new ha(this));
    ((Button)localLinearLayout.findViewById(2131362346)).setOnClickListener(new hb(this, localLinearLayout));
    com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = aJe();
    arrayOfObject[1] = Integer.valueOf(1);
    localm.d(11004, arrayOfObject);
    this.gOQ.addView(localLinearLayout, new ViewGroup.LayoutParams(-1, -2));
    return;
    label176: this.gOQ.removeAllViews();
    aJB();
  }

  private void aJB()
  {
    if ((this.gJU) || (this.gOQ == null));
    do
    {
      return;
      this.gOQ.removeAllViews();
      com.tencent.mm.model.s.te();
      if (com.tencent.mm.model.s.ck(aJe()))
        break;
      com.tencent.mm.model.s.te();
    }
    while (!com.tencent.mm.model.s.ck(aJN()));
    LinearLayout localLinearLayout = (LinearLayout)getLayoutInflater().inflate(2130903201, null);
    this.dwS = ((ImageView)localLinearLayout.findViewById(2131362347));
    localLinearLayout.setOnClickListener(new hd(this));
    this.dwS.setImageBitmap(com.tencent.mm.m.c.a(aJe(), true, -1));
    this.gOQ.addView(localLinearLayout, new ViewGroup.LayoutParams(-1, -2));
    com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(1);
    arrayOfObject[1] = Integer.valueOf(0);
    localm.d(11003, arrayOfObject);
  }

  private void aJF()
  {
    if ((com.tencent.mm.pluginsdk.h.apu() != null) && (com.tencent.mm.pluginsdk.h.apu().aa(this.eSm.getUsername(), Ch())))
    {
      com.tencent.mm.ui.base.h.a(this, getString(2131168044), getString(2131167675), true, new ib(this), new ic(this));
      return;
    }
    aJG();
  }

  private boolean aJH()
  {
    return (this.eSm.getUsername().equals("medianote")) && ((0x4000 & com.tencent.mm.model.v.tl()) == 0);
  }

  private void aJR()
  {
    if (this.gPE != null)
      this.gPE.recycle();
  }

  private int aJS()
  {
    return getResources().getColor(2131492905);
  }

  private void aJT()
  {
    if (this.gMi == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "initBackground, adapter is not initialized properly");
      return;
    }
    com.tencent.mm.ab.a locala = com.tencent.mm.ab.r.BN().gc(this.eSm.getUsername());
    int i;
    if (locala == null)
      i = ((Integer)be.uz().sr().get(12311, Integer.valueOf(-2))).intValue();
    while (i == -2)
    {
      setBackgroundColor(aJS());
      if (this.gMi == null)
      {
        finish();
        return;
        i = locala.BC();
      }
      else
      {
        this.gMi.ap(this, "chatting/purecolor_chat.xml");
        return;
      }
    }
    com.tencent.mm.ab.r.BM();
    int j = com.tencent.mm.ab.l.P(this);
    int k;
    if (i == 0)
      switch (j)
      {
      default:
        k = -1;
      case 1:
      case 2:
      case 3:
      case 4:
      }
    while (k != -1)
    {
      aJR();
      try
      {
        this.gPE = BitmapFactory.decodeResource(getResources(), 2130837851);
        label179: if (this.gPE == null)
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "setBackground decodeFile fail, bm is null, resId = 2130837851");
          findViewById(2131361980).setBackgroundColor(getResources().getColor(2131492905));
        }
        while (true)
        {
          this.gMi.ap(this, "chatting/reserved_chat.xml");
          return;
          k = 2130837851;
          break;
          BitmapDrawable localBitmapDrawable2 = new BitmapDrawable(this.gPE);
          findViewById(2131361980).setBackgroundDrawable(localBitmapDrawable2);
        }
        com.tencent.mm.ab.l locall = com.tencent.mm.ab.r.BM();
        String str1;
        if (i > 0)
        {
          String str2 = locall.J(i, 1) + "chat.xml";
          this.gMi.wB(str2);
          str1 = locall.K(i, j);
        }
        while (true)
        {
          aJR();
          this.gPE = com.tencent.mm.platformtools.v.hN(str1);
          if (this.gPE != null)
            break;
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "setBackground decodeFile fail, bm is null, path = " + str1);
          setBackgroundColor(aJS());
          return;
          this.gMi.ap(this, "chatting/default_chat.xml");
          if (locala == null)
            str1 = locall.u("default", j);
          else
            str1 = locall.u(aJe(), j);
        }
        BitmapDrawable localBitmapDrawable1 = new BitmapDrawable(this.gPE);
        findViewById(2131361980).setBackgroundDrawable(localBitmapDrawable1);
        return;
      }
      catch (Throwable localThrowable)
      {
        break label179;
      }
    }
  }

  private void aJV()
  {
    if (this.gPF == null)
    {
      nB(2131362218);
      this.gPF = ((TalkRoomPopupNav)findViewById(2131363988));
      this.gPF.a(new jh(this));
    }
  }

  private void aJX()
  {
    P("fromBanner", false);
  }

  private void aJw()
  {
    if ((this.gPj != null) && (this.gPj.aJu()))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "trigger title icon, in show mode");
      m(2, false);
      mm(8);
      mG(8);
      return;
    }
    Boolean localBoolean;
    if (((this.gJU) && (this.eSm.ry() == 0)) || (this.eSm.rf()))
    {
      mG(0);
      localBoolean = (Boolean)be.uz().sr().get(26);
      if (localBoolean != null)
        break label125;
      this.cRp = false;
      label101: if (!this.cRp)
        break label136;
    }
    label136: for (int i = 0; ; i = 8)
    {
      mm(i);
      return;
      mG(8);
      break;
      label125: this.cRp = localBoolean.booleanValue();
      break label101;
    }
  }

  private void aKa()
  {
    com.tencent.mm.sdk.platformtools.an.i(new jt(this));
  }

  public static boolean aKb()
  {
    return !((Boolean)be.uz().sr().get(75, Boolean.valueOf(false))).booleanValue();
  }

  public static void aKc()
  {
    be.uz().sr().set(75, Boolean.valueOf(true));
  }

  private boolean au(String paramString, int paramInt)
  {
    boolean bool1 = true;
    if ((paramString == null) || (paramString.length() == 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "doSendMessage null");
      bool1 = false;
    }
    do
    {
      return bool1;
      this.gMp.Q(paramString, bool1);
      this.gPD.bMe.bMg = paramString;
      this.gPD.bMe.context = this;
      com.tencent.mm.sdk.b.a.ayH().f(this.gPD);
    }
    while (this.gPD.bMf.bMh);
    if (this.gLo != null)
    {
      String str1 = this.gLo.aDk().vA("");
      String str2;
      if ((str1.equalsIgnoreCase("@t.qq.com")) && (!this.gLo.aBS()))
        str2 = getString(2131165294);
      while (str2 != null)
      {
        com.tencent.mm.ui.base.h.p(this, str2, getString(2131167675));
        return false;
        if ((str1.equalsIgnoreCase("@qqim")) && ((0x40 & com.tencent.mm.model.v.tl()) == 0))
        {
          str2 = getString(2131165295);
        }
        else
        {
          boolean bool2 = this.gLo.aBS();
          str2 = null;
          if (!bool2)
          {
            Object[] arrayOfObject = new Object[bool1];
            arrayOfObject[0] = com.tencent.mm.f.a.by(this.gLo.getName());
            str2 = getString(2131165293, arrayOfObject);
          }
        }
      }
    }
    this.handler.post(new jf(this, paramString, paramInt));
    dM(bool1);
    return bool1;
  }

  private void bd(String paramString1, String paramString2)
  {
    ig localig = new ig(this, paramString2);
    aIS();
    this.gKI = dn.a(this, 0, paramString1, false, localig);
  }

  private boolean cg(long paramLong)
  {
    if (paramLong == -1L)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "doSendMessage failed  msgId " + paramLong);
      return false;
    }
    if (this.gLo != null)
    {
      String str1 = this.gLo.aDk().vA("");
      String str2;
      if ((str1.equalsIgnoreCase("@t.qq.com")) && (!this.gLo.aBS()))
        str2 = getString(2131165294);
      while (str2 != null)
      {
        com.tencent.mm.ui.base.h.p(this, str2, getString(2131167675));
        return false;
        if ((str1.equalsIgnoreCase("@qqim")) && ((0x40 & com.tencent.mm.model.v.tl()) == 0))
        {
          str2 = getString(2131165295);
        }
        else
        {
          boolean bool = this.gLo.aBS();
          str2 = null;
          if (!bool)
          {
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = com.tencent.mm.f.a.by(this.gLo.getName());
            str2 = getString(2131165293, arrayOfObject);
          }
        }
      }
    }
    this.handler.post(new je(this, paramLong));
    dM(true);
    return true;
  }

  private void goBack()
  {
    if (aEO() == 1)
      new Handler().postDelayed(new ia(this), 200L);
    while (true)
    {
      SM();
      return;
      aJF();
    }
  }

  private void k(Intent paramIntent)
  {
    com.tencent.mm.ai.a locala = new com.tencent.mm.ai.a();
    locala.a(this, paramIntent, new iw(this));
    getString(2131167675);
    this.cHU = com.tencent.mm.ui.base.h.a(this, getString(2131167726), true, new ix(this, locala));
  }

  private void nB(int paramInt)
  {
    ViewStub localViewStub = (ViewStub)findViewById(paramInt);
    if (localViewStub != null)
      localViewStub.inflate();
  }

  private void pc(String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("enter_room_username", paramString);
    localIntent.setFlags(268435456);
    com.tencent.mm.ak.a.b(this, "talkroom", ".ui.TalkRoomUI", localIntent);
  }

  private void setBackgroundColor(int paramInt)
  {
    aJR();
    findViewById(2131361980).setBackgroundColor(paramInt);
  }

  private void t(Intent paramIntent)
  {
    if (!bm.ac(this))
    {
      com.tencent.mm.ui.base.h.a(this, 2131166718, 2131167675, new iv(this, paramIntent), null);
      return;
    }
    k(paramIntent);
  }

  public final String Ch()
  {
    StringBuilder localStringBuilder1 = new StringBuilder("getSender ");
    boolean bool;
    StringBuilder localStringBuilder2;
    if (this.gLo == null)
    {
      bool = true;
      localStringBuilder2 = localStringBuilder1.append(bool).append(" ");
      if (this.gLo != null)
        break label75;
    }
    label75: for (String str = com.tencent.mm.model.v.th(); ; str = this.gLo.getName())
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", str);
      if (this.gLo != null)
        break label87;
      return com.tencent.mm.model.v.th();
      bool = false;
      break;
    }
    label87: return this.gLo.getName();
  }

  protected final void FR()
  {
    this.gMl = getIntent().getStringExtra("Chat_User");
    this.gOS = getIntent().getBooleanExtra("finish_direct", false);
    this.gPb = getIntent().getBooleanExtra("search_chat_content", false);
    this.gOy = getIntent().getBooleanExtra("show_search_chat_content_result", false);
    this.gPc = getIntent().getBooleanExtra("from_global_search", false);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "isFromSearch  " + this.gOS);
    this.eSm = be.uz().su().tO(this.gMl);
    com.tencent.mm.storage.i locali1 = this.eSm;
    String str1 = this.gMl;
    if ((locali1 == null) || (locali1.rj() == 0) || (com.tencent.mm.platformtools.au.hX(locali1.getUsername())))
    {
      com.tencent.mm.storage.i locali2 = new com.tencent.mm.storage.i();
      locali2.setUsername(str1);
      locali2.qJ();
      locali2.bU(3);
      be.uz().su().A(locali2);
      locali1 = be.uz().su().tO(str1);
    }
    this.eSm = locali1;
    this.cSY = com.tencent.mm.p.p.eI(aJe());
    this.gMj = new v(this, this.eSm.getUsername());
    boolean bool1 = com.tencent.mm.platformtools.au.a((Boolean)be.uz().sr().get(16387), true);
    this.gMj.dG(bool1);
    if (this.cSY != null)
    {
      com.tencent.mm.p.f localf = this.cSY.xu();
      if ((localf != null) && (localf.cnw))
        this.gMj.aIJ();
    }
    this.dkr = ((ClipboardManager)getSystemService("clipboard"));
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "user " + this.gMl);
    com.tencent.mm.storage.n localn1 = be.uz().sx().tZ(aJe());
    if (localn1 != null)
    {
      this.gOP = localn1.rN();
      this.gOU = localn1.rP();
    }
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(this.gOU);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "dkcm init old:%d   ", arrayOfObject1);
    if (be.uz().sk())
      com.tencent.mm.plugin.webwx.a.b.E(this.gMl, false);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "new RoleInfo.Parser(getTalkerUserName())" + new cb(aJe()).vA(""));
    this.gLo = be.uz().sz().vB(new cb(aJe()).vA(""));
    this.gMn = aJe().endsWith("@chatroom");
    this.gMo = com.tencent.mm.model.w.cq(aJe());
    boolean bool2;
    label544: String str2;
    label946: label1345: com.tencent.mm.storage.n localn2;
    if ((this.gMn) || (this.gMo))
    {
      bool2 = true;
      this.gJU = bool2;
      if (this.gMo)
        break label1479;
      com.tencent.mm.plugin.b.eS(2);
      this.gOF = ((ViewGroup)findViewById(2131362212));
      str2 = this.gMl;
      this.dKO = ((ChatFooter)findViewById(2131362221));
      if ((!this.gPb) && (!this.gOy))
        break label1511;
      this.dKO.setVisibility(8);
      E(this.eSm);
      this.gOI = ((ListView)findViewById(2131362214));
      this.gOI.setVisibility(0);
      this.cXV = ((MMPullDownView)findViewById(2131362213));
      this.cXV.a(new hq(this));
      this.cXV.a(new hr(this));
      this.cXV.dv(true);
      this.cXV.a(new hs(this));
      this.cXV.a(new ht(this));
      this.cXV.dt(true);
      this.cXV.du(this.gOy);
      this.gOI.setOnScrollListener(new hu(this));
      this.gOQ = ((LinearLayout)getLayoutInflater().inflate(2130903200, null));
      this.gMi = new es(this, new ak(), aJe(), Ch(), this.gMj, this.dYT);
      this.gMi.aEJ();
      this.gMi.c(this.handler);
      if ((this.gOy) || (this.gPc))
      {
        long l = getIntent().getLongExtra("msg_local_id", -1L);
        int i = this.gMi.cd(l);
        this.gOI.post(new gu(this, l, i));
      }
      this.gMi.a(new gw(this));
      this.gOI.addHeaderView(this.gOQ);
      this.gOQ.removeAllViews();
      aJA();
      this.gOI.setAdapter(this.gMi);
      if (this.gOy)
        break label2289;
      this.gOI.setTranscriptMode(1);
      dM(true);
      this.gOI.setOnTouchListener(new gy(this));
      this.gOI.postDelayed(new gz(this), 1000L);
      registerForContextMenu(this.gOI);
      bv localbv = new bv(this.gOI, this.gMi, this, this.dKO, this.gMj, this.gMl);
      this.dKO.a(localbv);
      fy localfy = new fy(this, this.eSm, this.gMl);
      this.dKO.b(localfy);
      this.dKO.b(localfy);
      if (this.gPb)
      {
        com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(1);
        localm.d(10455, arrayOfObject2);
        nB(2131362219);
        this.gPa = findViewById(2131362220);
        this.gPg = findViewById(2131363602);
        this.gOI.setFocusable(false);
        this.gOI.setFocusableInTouchMode(false);
        this.gPg.setOnClickListener(new he(this));
        if (this.gPe == null)
        {
          nB(2131362216);
          this.gPe = ((TextView)findViewById(2131362351));
        }
        this.gOt = new fv(this, new ak(), aJe(), Ch(), this.gJU);
        this.gOt.a(new hf(this));
        this.gPf = ((ListView)findViewById(2131363601));
        this.gPf.setAdapter(this.gOt);
        this.gPf.setOnItemClickListener(new hg(this));
        this.gPf.setOnTouchListener(new hh(this));
        this.diw = new eo();
        this.diw.a(new hj(this));
        a(true, this.diw);
        this.diw.aND();
      }
      aJz();
      if (!this.gJU)
        break label2300;
      com.tencent.mm.af.c.cxX = 1;
      aJI();
      a(this.gPB);
      new gq(this);
      if ((!com.tencent.mm.model.w.db(aJe())) && (com.tencent.mm.model.w.cp(aJe())))
      {
        localn2 = be.uz().sx().tZ(aJe());
        if ((localn2 != null) && ((0x2 & localn2.rS()) <= 0))
          break label2324;
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "jacks ont need auto display name because : already tips");
      }
    }
    while (true)
    {
      this.gOI.post(new gr(this));
      if ((this.eSm.rb()) && (this.eSm.aAp()))
      {
        ab.yh();
        com.tencent.mm.p.r.eK(aJe());
      }
      return;
      bool2 = false;
      break;
      label1479: da localda = new da();
      localda.bOb.bOd = 4;
      com.tencent.mm.sdk.b.a.ayH().f(localda);
      break label544;
      label1511: ChatFooter localChatFooter1 = this.dKO;
      int j;
      label1536: label1563: int k;
      label1933: label1967: ChatFooter localChatFooter2;
      if ((com.tencent.mm.model.w.cA(str2)) || (com.tencent.mm.storage.i.ty(str2)))
      {
        j = 1;
        localChatFooter1.setMode(j);
        if ((com.tencent.mm.model.w.cz(str2)) || (com.tencent.mm.model.w.cy(str2)))
          break label2220;
        com.tencent.mm.model.w.tP();
        if (com.tencent.mm.storage.i.tC(str2))
        {
          this.dKO.asB();
          this.dKO.asC();
          this.dKO.asE();
          this.dKO.asi();
          this.dKO.asl();
        }
        if (com.tencent.mm.storage.i.tA(str2))
        {
          this.dKO.asB();
          this.dKO.asC();
          this.dKO.asE();
          this.dKO.asi();
          this.dKO.asl();
        }
        if (com.tencent.mm.storage.i.ty(str2))
        {
          this.dKO.asB();
          this.dKO.asC();
          this.dKO.asE();
          this.dKO.asi();
          this.dKO.asA();
          this.dKO.asl();
        }
        if (com.tencent.mm.model.w.cK(str2))
        {
          this.dKO.asB();
          this.dKO.asC();
          this.dKO.asE();
          this.dKO.asl();
        }
        if (this.gMo)
        {
          this.dKO.asE();
          this.dKO.asB();
          this.dKO.asC();
          this.dKO.asD();
          this.dKO.asi();
          this.dKO.o(true, true);
          this.dKO.asF();
          this.dKO.asG();
          this.dKO.asl();
        }
        boolean bool3 = ((Boolean)be.uz().sr().get(66832, Boolean.valueOf(false))).booleanValue();
        if (bool3)
        {
          this.dKO.asH();
          this.dKO.asF();
        }
        if (com.tencent.mm.model.w.cH(str2))
          this.dKO.asB();
        com.tencent.mm.storage.i locali3 = be.uz().su().tO(str2);
        if ((locali3 != null) && (locali3.aAp()))
          this.dKO.asB();
        if ((!com.tencent.mm.storage.i.tC(str2)) && (!com.tencent.mm.storage.i.tA(str2)) && (!com.tencent.mm.storage.i.ty(str2)) && (!com.tencent.mm.model.w.cK(str2)))
          break label2232;
        k = 1;
        if ((!this.gMn) && (k == 0))
          break label2238;
        this.dKO.o(true, true);
        if (k == 0)
          break label2270;
        this.dKO.cC(true);
        if (bool3)
          this.dKO.ash();
        localChatFooter2 = this.dKO;
        com.tencent.mm.ak.a.avr();
        if ((!com.tencent.mm.x.b.Bc()) && ((0x2000000 & com.tencent.mm.model.v.tq()) == 0))
          break label2283;
      }
      label2220: label2232: label2238: label2270: label2283: for (boolean bool4 = true; ; bool4 = false)
      {
        localChatFooter2.cy(bool4);
        com.tencent.mm.ak.a.avr();
        if (!com.tencent.mm.ak.a.qc("location"))
          this.dKO.asC();
        com.tencent.mm.ak.a.avr();
        this.dKO.ci(com.tencent.mm.ak.a.avr());
        this.dKO.addTextChangedListener(new hw(this));
        break;
        if (com.tencent.mm.model.w.cQ(str2))
        {
          j = 2;
          break label1536;
        }
        j = getIntent().getIntExtra("Chat_Mode", 0);
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = Integer.valueOf(this.gOU);
        arrayOfObject3[1] = Integer.valueOf(j);
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "dkcm getChatMode old:%d intent:%d ", arrayOfObject3);
        if (this.gOU != 0)
          j = this.gOU;
        if (j == 0)
          j = ((Integer)be.uz().sr().get(18, Integer.valueOf(0))).intValue();
        if (j == 0)
          j = 1;
        Object[] arrayOfObject4 = new Object[2];
        arrayOfObject4[0] = Integer.valueOf(this.gOU);
        arrayOfObject4[1] = Integer.valueOf(j);
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "dkcm getChatMode old:%d intent:%d ", arrayOfObject4);
        break label1536;
        this.dKO.setVisibility(8);
        break label1563;
        k = 0;
        break label1933;
        if ((0x400000 & com.tencent.mm.model.v.tq()) != 0);
        for (boolean bool5 = true; ; bool5 = false)
        {
          this.dKO.o(false, bool5);
          break;
        }
        this.dKO.cC(com.tencent.mm.ak.a.avr());
        break label1967;
      }
      label2289: this.gOI.setTranscriptMode(0);
      break label946;
      label2300: if (this.eSm.aAp())
      {
        com.tencent.mm.af.c.cxX = 2;
        break label1345;
      }
      com.tencent.mm.af.c.cxX = 0;
      break label1345;
      label2324: com.tencent.mm.storage.b localb = be.uz().sA().ts(aJe());
      if ((localb == null) || (localb.aAe().size() < 40))
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "jacks ont need auto display name because : member nums too few");
      }
      else if ((localb != null) && (!localb.aAk()))
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "jacks need auto display name");
        this.gPC = true;
        RoomInfoUI.a(aJe(), localb, true);
        localn2.cb(2);
        be.uz().sx().a(localn2, aJe());
      }
    }
  }

  final void H(ak paramak)
  {
    String str1 = null;
    String str2 = paramak.getContent();
    if (paramak.rO() == 0)
      str2 = at(str2, paramak.rO());
    com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(str2);
    com.tencent.mm.pluginsdk.model.app.k localk = com.tencent.mm.pluginsdk.model.app.l.F(localb.appId, true);
    if ((localk != null) && (u.g(this, localk.field_packageName)))
    {
      if (localk.field_status == 3)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "requestAppShow fail, app is in blacklist, packageName = " + localk.field_packageName);
        return;
      }
      if (!u.e(this, localk))
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localk.field_appName;
        com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.ChattingUI", "The app %s signature is incorrect.", arrayOfObject2);
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = com.tencent.mm.pluginsdk.model.app.l.c(this, localk);
        Toast.makeText(this, getString(2131167305, arrayOfObject3), 1).show();
        return;
      }
      WXAppExtendObject localWXAppExtendObject = new WXAppExtendObject();
      localWXAppExtendObject.extInfo = localb.extInfo;
      com.tencent.mm.pluginsdk.model.app.a locala;
      if ((localb.cgE != null) && (localb.cgE.length() > 0))
      {
        locala = ba.HF().qk(localb.cgE);
        if (locala != null)
          break label334;
      }
      label334: for (String str5 = null; ; str5 = locala.field_fileFullPath)
      {
        localWXAppExtendObject.filePath = str5;
        WXMediaMessage localWXMediaMessage = new WXMediaMessage();
        localWXMediaMessage.sdkVer = 570490883;
        localWXMediaMessage.mediaObject = localWXAppExtendObject;
        localWXMediaMessage.title = localb.title;
        localWXMediaMessage.description = localb.description;
        localWXMediaMessage.messageAction = localb.messageAction;
        localWXMediaMessage.messageExt = localb.messageExt;
        localWXMediaMessage.thumbData = com.tencent.mm.a.c.g(ag.Ba().fW(paramak.ot()), 0, -1);
        this.gPy.a(localk.field_packageName, localWXMediaMessage, localk.field_openId);
        return;
      }
    }
    String str3 = localb.appId;
    if ((str3 == null) || (str3.length() == 0) || ("message".length() == 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.AppUtil", "buildUnistallUrl fail, invalid arguments");
      Intent localIntent = new Intent();
      localIntent.putExtra("rawUrl", str1);
      localIntent.setClass(this, WebViewUI.class);
      startActivity(localIntent);
      return;
    }
    String str4 = z.a(getSharedPreferences(com.tencent.mm.sdk.platformtools.al.azs(), 0));
    if ((str4 == null) || (str4.length() == 0))
      str4 = "zh_CN";
    while (true)
    {
      int i = com.tencent.mm.n.bsr;
      Object[] arrayOfObject1 = new Object[6];
      arrayOfObject1[0] = str3;
      arrayOfObject1[1] = Integer.valueOf(com.tencent.mm.protocal.a.fxr);
      arrayOfObject1[2] = str4;
      arrayOfObject1[3] = com.tencent.mm.protocal.a.fxk;
      arrayOfObject1[4] = "message";
      arrayOfObject1[5] = Integer.valueOf(0);
      str1 = getString(i, arrayOfObject1);
      break;
      if (str4.equals("en"))
        str4 = "en_US";
    }
  }

  final void I(ak paramak)
  {
    if (this.gPj == null)
    {
      if (this.gPi == null)
      {
        nB(2131362224);
        this.gPi = ((ChattingFooterMoreBtnBar)findViewById(2131362352));
      }
      this.gPj = new fn(this, this.gPi, this.gMi, this.dKO, this.gOG, this.eSm, this.gJU);
    }
    this.gPj.a(this.dKO, this.gOG);
    this.gPj.E(paramak);
    this.gPj.dK(this.gPd);
  }

  final void J(ak paramak)
  {
    if (paramak.Bo() == this.gMj.aIO())
      this.gMj.dI(true);
    if (!this.eSm.getUsername().equals("medianote"))
      be.uz().st().a(new bd(paramak.aCl(), paramak.AH()));
    if (com.tencent.mm.model.w.cQ(this.eSm.getUsername()))
      com.tencent.mm.plugin.voicereminder.a.n.jp((int)paramak.Bo());
    ak localak;
    bh localbh;
    do
    {
      do
      {
        return;
        int i = (int)paramak.Bo();
        localak = be.uz().sw().bU(i);
      }
      while ((localak == null) || (localak.Bo() == 0L) || (localak.ot() == null) || (cj.hX(localak.ot())));
      String str = localak.ot();
      localbh = bc.Er().hB(str);
    }
    while ((localbh == null) || (cj.hX(localbh.getFileName())));
    localbh.setStatus(3);
    localbh.ev(0);
    localbh.G(System.currentTimeMillis() / 1000L);
    localbh.H(System.currentTimeMillis() / 1000L);
    localbh.cL(8648);
    com.tencent.mm.modelvoice.bi.b(localbh);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.VoiceLogic", " file:" + localbh.getFileName() + " msgid:" + localbh.AF() + "  stat:" + localbh.getStatus());
    if ((localbh.AF() == 0) || (cj.hX(localbh.getUser())))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.VoiceLogic", " failed msg id:" + localbh.AF() + " user:" + localbh.getUser());
      return;
    }
    localak.setStatus(1);
    be.uz().sw().a(localak.Bo(), localak);
    bc.Et().run();
  }

  final void K(ak paramak)
  {
    if (!this.eSm.getUsername().equals("medianote"))
      be.uz().st().a(new bd(paramak.aCl(), paramak.AH()));
    com.tencent.mm.w.e locale = ag.Ba().dG((int)paramak.Bo());
    locale.dw(0);
    ag.Ba().a(locale.AG(), locale);
    if (locale.AM());
    for (int i = 1; ; i = 0)
    {
      String str1 = ag.Ba().j(locale.AI(), "", "");
      if ((str1 != null) && (!str1.equals("")) && (com.tencent.mm.a.c.as(str1)))
        break;
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", " doSendImage : filePath is null or empty");
      return;
    }
    if ((this.gLo != null) && (!this.gLo.aBS()))
    {
      if (this.gLo.aDk().vA("").equalsIgnoreCase("@t.qq.com"));
      Object[] arrayOfObject;
      for (String str2 = getString(2131165294); ; str2 = getString(2131165293, arrayOfObject))
      {
        com.tencent.mm.ui.base.h.p(this, str2, getString(2131167675));
        return;
        arrayOfObject = new Object[1];
        arrayOfObject[0] = com.tencent.mm.f.a.by(this.gLo.getName());
      }
    }
    this.handler.post(new iq(this, locale, i));
    dM(true);
  }

  final void L(ak paramak)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "resendEmoji");
    if (!this.eSm.getUsername().equals("medianote"))
      be.uz().st().a(new bd(paramak.aCl(), paramak.AH()));
    com.tencent.mm.pluginsdk.h.apj().a(this.eSm.getUsername(), null, paramak);
  }

  final void M(ak paramak)
  {
    if (!this.eSm.getUsername().equals("medianote"))
      be.uz().st().a(new bd(paramak.aCl(), paramak.AH()));
    cg(paramak.Bo());
    dM(true);
  }

  final void N(ak paramak)
  {
    if (!this.eSm.getUsername().equals("medianote"))
      be.uz().st().a(new bd(paramak.aCl(), paramak.AH()));
    cg(paramak.Bo());
    dM(true);
  }

  final void O(ak paramak)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "resendAppMsgEmoji");
    if (!this.eSm.getUsername().equals("medianote"))
      be.uz().st().a(new bd(paramak.aCl(), paramak.AH()));
    com.tencent.mm.pluginsdk.model.app.a locala = ba.HF().bs(paramak.Bo());
    if ((locala != null) && (locala.field_msgInfoId == paramak.Bo()))
    {
      locala.field_status = 101L;
      locala.field_offset = 0L;
      locala.field_lastModifyTime = (System.currentTimeMillis() / 1000L);
      ba.HF().a(locala, new String[0]);
      ba.aqi().run();
    }
    while (true)
    {
      dM(true);
      return;
      ba.aqi();
      aw.bv(paramak.Bo());
    }
  }

  final void P(ak paramak)
  {
    String str = paramak.getContent();
    if (paramak.rO() == 0)
      at(str, paramak.rO());
    cg(paramak.Bo());
    dM(true);
  }

  public final void P(String paramString, boolean paramBoolean)
  {
    if (((com.tencent.mm.pluginsdk.h.apu() != null) && (com.tencent.mm.pluginsdk.h.apu().kn(this.eSm.getUsername()))) || (paramBoolean))
    {
      LinkedList localLinkedList = com.tencent.mm.pluginsdk.h.apu().kl(this.eSm.getUsername());
      if ((localLinkedList == null) || (!localLinkedList.contains(Ch())))
      {
        com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
        Object[] arrayOfObject = new Object[4];
        arrayOfObject[0] = Integer.valueOf(13);
        arrayOfObject[1] = Integer.valueOf(0);
        arrayOfObject[2] = Integer.valueOf(0);
        arrayOfObject[3] = Integer.valueOf(0);
        localm.d(10997, arrayOfObject);
        com.tencent.mm.ui.base.h.a(this, getString(2131167446), null, new jp(this, paramString), new jq(this));
        return;
      }
    }
    wF(paramString);
  }

  public final void Q(ak paramak)
  {
    if (paramak == null)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "jacks go VoiceTransText need MsgInfo but null");
      return;
    }
    Intent localIntent = new Intent();
    localIntent.setClass(aal(), VoiceTransTextUI.class);
    localIntent.putExtra("voice_trans_text_msg_id", paramak.Bo());
    localIntent.putExtra("voice_trans_text_img_path", paramak.ot());
    com.tencent.mm.modelvoice.bi.l(paramak);
    startActivity(localIntent);
  }

  protected final void VX()
  {
    this.gOI.setKeepScreenOn(false);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.ChattingUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.cHU != null)
    {
      this.cHU.dismiss();
      this.cHU = null;
    }
    if (!com.tencent.mm.platformtools.au.ag(this));
    do
    {
      bh localbh;
      do
      {
        com.tencent.mm.modelsimple.t localt;
        do
        {
          do
          {
            return;
            if ((!this.glB) && (paramInt1 == 4) && (paramInt2 == -6))
            {
              com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.ChattingUI", "not show verify dialog on background");
              return;
            }
          }
          while ((cl.bc(paramInt1, paramInt2)) || ((10 != paramx.getType()) && (i(paramInt1, paramInt2, paramString))));
          if ((paramInt1 != 0) || (paramInt2 != 0))
            break;
          switch (paramx.getType())
          {
          case 110:
          case 522:
          default:
            return;
          case 10:
            localt = (com.tencent.mm.modelsimple.t)paramx;
          case 127:
          }
        }
        while ((localt.Ch() == null) || (!localt.Ch().equals(aJe())) || (this.gOy) || (this.gPb) || (this.gPd));
        if ((localt.Ci() == null) || (localt.Ci().length != 4))
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "unknown directsend op");
          return;
        }
        int i = com.tencent.mm.a.i.b(localt.Ci(), 0);
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "directsend: status=" + i);
        switch (i)
        {
        case 2:
        default:
          this.gOK = false;
          aJI();
          return;
        case 1:
          this.gOK = true;
          mn(2131165678);
          Message localMessage2 = new Message();
          this.handler.sendMessageDelayed(localMessage2, 15000L);
          return;
        case 3:
        }
        this.gOK = true;
        mn(2131165679);
        Message localMessage1 = new Message();
        this.handler.sendMessageDelayed(localMessage1, 15000L);
        return;
        String str = ((com.tencent.mm.modelvoice.s)paramx).getFileName();
        localbh = bc.Er().hB(str);
      }
      while ((localbh == null) || (localbh.getStatus() != 99));
      bq.q(this, 2131168185);
      return;
      if (paramInt2 == -49)
      {
        new com.tencent.mm.ui.bindqq.g(this, new jb(this)).aIC();
        return;
      }
      if (paramx.getType() == 109)
      {
        com.tencent.mm.ui.base.h.c(this, 2131165685, 2131167675);
        return;
      }
    }
    while ((!this.gMo) || (paramInt2 != -21));
    this.gOT = true;
  }

  public final void a(int paramInt, com.tencent.mm.sdk.e.ao paramao, Object paramObject)
  {
    ca((String)paramObject);
  }

  public final void a(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    this.gPA.k(new gg(this, paramOnMenuItemClickListener));
  }

  public final void a(com.tencent.mm.storage.ap paramap, com.tencent.mm.storage.at paramat)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "on msg notify change");
    if (!this.eSm.getUsername().equals(paramat.bNl))
      aKa();
    while ((!"insert".equals(paramat.giq)) || (paramat.dOI.size() <= 0) || (((ak)paramat.dOI.get(0)).rO() != 0))
      return;
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.ChattingUI", "oreh onNotifyChange receive a new msg");
    this.gPh = com.tencent.mm.platformtools.au.FD();
  }

  protected final String aEZ()
  {
    if (this.eSm.aAp())
      return "_bizContact";
    if (com.tencent.mm.model.w.cp(this.eSm.field_username))
      return "_chatroom";
    return "";
  }

  public final void aJC()
  {
    Object[] arrayOfObject = new Object[1];
    boolean bool;
    if (this.gPa == null)
    {
      bool = true;
      arrayOfObject[0] = Boolean.valueOf(bool);
      com.tencent.mm.sdk.platformtools.aa.f("MicroMsg.ChattingUI", "enter edit search mode, search stub view is null?%B", arrayOfObject);
      this.gPk = true;
      this.gOI.setVisibility(8);
      if (this.gPa == null)
        break label71;
      this.gPa.setVisibility(0);
    }
    while (true)
    {
      nC(-1);
      return;
      bool = false;
      break;
      label71: nB(2131362219);
      this.gPa = findViewById(2131362220);
      this.gPa.setVisibility(0);
      this.gPg = findViewById(2131363602);
      this.gOI.setFocusable(false);
      this.gOI.setFocusableInTouchMode(false);
      this.gPg.setOnClickListener(new hl(this));
      this.gPg.setVisibility(8);
      this.gPe = ((TextView)findViewById(2131362351));
      this.gOt = new fv(this, new ak(), aJe(), Ch(), this.gJU);
      this.gOt.a(new hm(this));
      this.gPf = ((ListView)findViewById(2131363601));
      this.gPf.setVisibility(0);
      this.gPf.setAdapter(this.gOt);
      this.gPf.setOnItemClickListener(new hn(this));
      this.gPf.setOnTouchListener(new hp(this));
      if (this.gPj != null)
        this.gPj.a(this.gOt);
    }
  }

  public final void aJD()
  {
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.ChattingUI", "exit edit search mode");
    this.gPk = false;
    this.gPl = true;
    if (this.gPe != null)
      this.gPe.setVisibility(8);
    if (this.gPg != null)
      this.gPg.setVisibility(8);
    if (this.gPf != null)
      this.gPf.setVisibility(8);
    this.gOI.setVisibility(0);
    SM();
  }

  public final boolean aJE()
  {
    return this.gPk;
  }

  protected final void aJG()
  {
    if ((this.gPj != null) && (this.gPj.aJu()))
    {
      if (this.gPk)
      {
        aJD();
        this.gPj.aJv();
        return;
      }
      this.gPj.aJs();
      return;
    }
    if (com.tencent.mm.storage.i.ty(aJe()))
    {
      Intent localIntent1 = new Intent();
      localIntent1.addFlags(67108864);
      com.tencent.mm.ak.a.b(aal(), "tmessage", ".ui.TConversationUI", localIntent1);
    }
    while (true)
    {
      finish();
      return;
      if (com.tencent.mm.storage.i.tA(aJe()))
      {
        Intent localIntent2 = new Intent();
        localIntent2.addFlags(67108864);
        com.tencent.mm.ak.a.b(aal(), "qmessage", ".ui.QConversationUI", localIntent2);
      }
      else if (this.gMo)
      {
        if (!this.gOT)
        {
          com.tencent.mm.ui.base.h.a(this, getString(2131165792), getString(2131167675), true, new id(this), new ie(this));
          return;
        }
        String str = aJe();
        da localda = new da();
        localda.bOb.bOd = 6;
        localda.bOb.bOe = str;
        com.tencent.mm.sdk.b.a.ayH().f(localda);
      }
      else if (!this.gOS)
      {
        Intent localIntent3 = new Intent(this, LauncherUI.class);
        localIntent3.addFlags(67108864);
        startActivity(localIntent3);
      }
    }
  }

  protected final void aJI()
  {
    this.gOM = false;
    this.gON = false;
    if ((this.gPn != null) && (this.gPn.getVisibility() != 8))
      this.gPn.setVisibility(8);
    this.gMi.notifyDataSetChanged();
    if (this.gPb)
      mn(2131167241);
    do
    {
      return;
      if (com.tencent.mm.storage.i.ty(aJe()))
      {
        this.dKO.asM();
        vT(this.eSm.rr());
        return;
      }
      if (com.tencent.mm.model.w.cZ(aJe()))
      {
        vT(this.eSm.rq());
        return;
      }
      if (com.tencent.mm.storage.i.tC(aJe()))
      {
        Object[] arrayOfObject3 = new Object[1];
        com.tencent.mm.storage.i locali = this.eSm;
        String str;
        if (locali != null)
          if (RegionCodeDecoder.vw(locali.getCountryCode()))
          {
            str = locali.rD();
            if (com.tencent.mm.platformtools.au.hX(str));
          }
        while (true)
        {
          arrayOfObject3[0] = str;
          vT(getString(2131166803, arrayOfObject3).trim());
          return;
          str = com.tencent.mm.model.w.dj(locali.rC());
          if (com.tencent.mm.platformtools.au.hX(str))
          {
            RegionCodeDecoder.aDe();
            str = RegionCodeDecoder.vx(locali.getCountryCode());
            continue;
            str = com.tencent.mm.model.w.dj(locali.rC());
            if (com.tencent.mm.platformtools.au.hX(str))
              str = getString(2131166819);
          }
        }
      }
      if (this.gMn)
      {
        if (com.tencent.mm.platformtools.au.hX(this.eSm.kn()))
        {
          if (com.tencent.mm.model.r.ci(aJe()) == 0)
          {
            vT(getString(2131165739));
            return;
          }
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = getString(2131165739);
          arrayOfObject2[1] = Integer.valueOf(com.tencent.mm.model.r.ci(aJe()));
          vT(getString(2131165299, arrayOfObject2));
          return;
        }
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = this.eSm.rq();
        arrayOfObject1[1] = Integer.valueOf(com.tencent.mm.model.r.ci(aJe()));
        vT(getString(2131165299, arrayOfObject1));
        return;
      }
      if (this.gMo)
      {
        if (com.tencent.mm.platformtools.au.hX(this.eSm.kn()))
        {
          vT(getString(2131168160));
          return;
        }
        vT(this.eSm.kn());
        return;
      }
      vT(this.eSm.rr());
    }
    while (!com.tencent.mm.storage.i.tA(aJe()));
    mD(2130839063);
  }

  public final boolean aJJ()
  {
    return (!this.eSm.aAp()) && (!com.tencent.mm.model.w.cZ(aJe())) && (!com.tencent.mm.storage.i.ty(aJe())) && (!com.tencent.mm.storage.i.tA(aJe()));
  }

  protected final boolean aJK()
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "writeOpLogAndMarkRead :" + aJe());
    boolean bool;
    if (!com.tencent.mm.storage.i.ty(aJe()))
    {
      if ((this.eSm.aAp()) && (this.cSY != null) && (!this.cSY.xE()))
      {
        be.uz().sx();
        com.tencent.mm.storage.n localn = com.tencent.mm.storage.o.aAQ();
        if ((localn != null) && (localn.getUsername().equals(aJe())) && (localn.rN() > 0))
          be.uz().sx().ua("officialaccounts");
      }
      bool = be.uz().sx().ua(aJe());
    }
    do
    {
      return bool;
      bool = false;
      String str = Ch();
      Cursor localCursor = be.uz().sw().vf(aJe());
      localCursor.moveToFirst();
      while (!localCursor.isAfterLast())
      {
        ak localak = new ak();
        localak.convertFrom(localCursor);
        if (localak.getType() != 34)
        {
          localak.setStatus(4);
          if (!this.eSm.getUsername().equals("medianote"))
            be.uz().st().a(new bp(localak.AH(), 4, aJe(), str));
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "writeOpLog: msgSvrId = " + localak.AH() + " status = " + localak.getStatus());
        }
        localCursor.moveToNext();
        bool = true;
      }
      localCursor.close();
    }
    while (!bool);
    be.uz().sx().ua(aJe());
    be.uz().sw().vc(aJe());
    return bool;
  }

  public final void aJL()
  {
    Intent localIntent = new Intent(aal(), SelectContactUI.class);
    localIntent.putExtra("Contact_GroupFilter_Type", "@micromsg.qq.com");
    localIntent.putExtra("favour_include_biz", true);
    localIntent.putExtra("List_Type", 4);
    localIntent.putExtra("received_card_name", aJe());
    String str = "";
    if (!this.gJU)
      str = aJe();
    localIntent.putExtra("Block_list", str);
    localIntent.putExtra("Add_SendCard", true);
    aal().startActivity(localIntent);
  }

  public final void aJM()
  {
    int i;
    String[] arrayOfString;
    if ((!this.eSm.aAp()) && (!com.tencent.mm.model.w.cZ(aJe())) && (!com.tencent.mm.storage.i.ty(aJe())) && (!com.tencent.mm.storage.i.tA(aJe())) && (!com.tencent.mm.storage.i.tC(aJe())))
    {
      i = 1;
      if (i != 0)
        break label96;
      arrayOfString = new String[1];
      arrayOfString[0] = getString(2131167999);
    }
    while (true)
    {
      com.tencent.mm.ui.base.h.b(aal(), null, arrayOfString, null, new jc(this));
      return;
      i = 0;
      break;
      label96: arrayOfString = new String[2];
      arrayOfString[0] = getString(2131167999);
      arrayOfString[1] = getString(2131168000);
    }
  }

  public final String aJN()
  {
    if (this.eSm == null)
      return null;
    return this.eSm.kn();
  }

  protected final boolean aJO()
  {
    String str = com.tencent.mm.platformtools.au.ah(this);
    return (str.equalsIgnoreCase(ChattingUI.class.getName())) || (str.equalsIgnoreCase(WebViewUI.class.getName()));
  }

  public final boolean aJP()
  {
    return this.cRp;
  }

  public final es aJQ()
  {
    return this.gMi;
  }

  public final void aJU()
  {
    try
    {
      if (this.dKO.asL())
        this.dKO.asK();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final void aJW()
  {
    if ((com.tencent.mm.model.w.cp(this.eSm.getUsername())) && (!com.tencent.mm.model.r.cb(this.eSm.getUsername())))
      if (this.gPF != null)
        this.gPF.setVisibility(8);
    do
    {
      return;
      if ((com.tencent.mm.pluginsdk.h.apu() != null) && (com.tencent.mm.pluginsdk.h.apu().kn(this.eSm.getUsername())))
      {
        aJV();
        LinkedList localLinkedList = com.tencent.mm.pluginsdk.h.apu().kl(this.eSm.getUsername());
        String str2 = "";
        if ((localLinkedList != null) && (localLinkedList.contains(Ch())))
        {
          this.gPF.nm(2130839500);
          str2 = getString(2131167444);
          this.gPF.nn(2130838710);
          this.gPF.no(2130838709);
          this.gPF.start();
          this.gPF.setVisibility(0);
          this.gPF.wk(str2);
          return;
        }
        this.gPF.no(-1);
        this.gPF.stop();
        this.gPF.nm(2130839499);
        if ((localLinkedList != null) && (localLinkedList.size() == 1))
        {
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = com.tencent.mm.model.w.cu((String)localLinkedList.get(0));
          str2 = getString(2131167445, arrayOfObject3);
        }
        while (true)
        {
          this.gPF.nn(2130838708);
          break;
          if (localLinkedList != null)
          {
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = Integer.valueOf(localLinkedList.size());
            str2 = getString(2131167443, arrayOfObject2);
          }
        }
      }
      if ((com.tencent.mm.pluginsdk.h.apl() != null) && (com.tencent.mm.pluginsdk.h.apl().oZ(this.eSm.getUsername())))
      {
        aJV();
        com.tencent.mm.c.a.gy localgy = new com.tencent.mm.c.a.gy();
        localgy.bQS.bQU = true;
        com.tencent.mm.sdk.b.a.ayH().f(localgy);
        if (this.eSm.getUsername().equals(localgy.bQT.bQW))
          this.gPF.nm(2130839500);
        while (true)
        {
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = Integer.valueOf(com.tencent.mm.pluginsdk.h.apl().pa(this.eSm.getUsername()).size());
          String str1 = getString(2131167158, arrayOfObject1);
          this.gPF.nn(2130839518);
          this.gPF.no(-1);
          this.gPF.stop();
          this.gPF.setVisibility(0);
          this.gPF.wk(str1);
          return;
          this.gPF.nm(2130839499);
        }
      }
    }
    while (this.gPF == null);
    this.gPF.setVisibility(8);
    this.gPF.no(-1);
    this.gPF.stop();
  }

  @TargetApi(11)
  public final void aJY()
  {
    if (Build.VERSION.SDK_INT < 11)
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "sdk not support dragdrop event");
    do
    {
      return;
      if (this.gOI != null)
        this.gOI.setOnDragListener(null);
    }
    while (this.dKO == null);
    this.dKO.setOnDragListener(null);
    this.dKO.a(null);
  }

  @TargetApi(11)
  public final void aJZ()
  {
    if ((this.gOy) || (this.gPb))
      return;
    if (Build.VERSION.SDK_INT < 11)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "sdk not support dragdrop event");
      return;
    }
    new jr(this).run();
  }

  protected final void aJc()
  {
    this.gOI.setKeepScreenOn(true);
  }

  public final String aJe()
  {
    if (com.tencent.mm.storage.i.tC(this.eSm.getUsername()))
      return this.gMl;
    if (this.eSm == null)
      return null;
    return this.eSm.getUsername();
  }

  public final void aJx()
  {
    if (this.dKO == null)
      this.dKO = ((ChatFooter)findViewById(2131362221));
    if ((this.gPj != null) && (this.gPj.aJu()))
    {
      this.dKO.setVisibility(8);
      return;
    }
    E(this.eSm);
  }

  public final void aJy()
  {
    if (this.gPj != null)
    {
      if (!this.gPj.aJu())
        break label27;
      dh(false);
    }
    while (true)
    {
      aJw();
      return;
      label27: aJz();
    }
  }

  protected final void aJz()
  {
    if ((this.gPb) || (this.gOy))
    {
      dh(false);
      return;
    }
    gs localgs = new gs(this);
    if (com.tencent.mm.model.w.cy(aJe()))
    {
      a(0, 2131167454, 2130837606, new gt(this));
      a(1, 2131167450, 2130837611, localgs);
      com.tencent.mm.plugin.d.c.m.dZN.j(10071, "1");
    }
    while (com.tencent.mm.storage.i.tC(aJe()))
    {
      dh(false);
      m(2, true);
      return;
      if (com.tencent.mm.model.w.cz(aJe()))
        a(0, 2131167450, 2130837611, localgs);
      else if (com.tencent.mm.model.w.db(aJe()))
        a(0, 2131167450, 2130837611, localgs);
      else if ((com.tencent.mm.storage.i.ty(aJe())) || (com.tencent.mm.storage.i.tA(aJe())) || (com.tencent.mm.storage.i.tC(aJe())))
        a(0, 2131167453, 2130837609, localgs);
      else if ((aJe().endsWith("@chatroom")) || (com.tencent.mm.model.w.cq(aJe())))
      {
        if (com.tencent.mm.model.r.cb(aJe()))
        {
          a(0, 2131167453, 2130838956, localgs);
          dh(true);
        }
        else
        {
          dh(false);
        }
      }
      else
        a(0, 2131167453, 2130837609, localgs);
    }
    dh(true);
  }

  final String at(String paramString, int paramInt)
  {
    if ((this.gJU) && (paramString != null) && (paramInt == 0))
      paramString = com.tencent.mm.model.bv.dz(paramString);
    return paramString;
  }

  public final void ca(String paramString)
  {
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "onNotifyChange " + paramString);
    com.tencent.mm.storage.i locali = be.uz().su().tO(aJe());
    if ((locali != null) && (locali.rj() != 0))
    {
      this.eSm = locali;
      aJI();
      aJA();
    }
  }

  @SuppressLint({"DefaultLocale"})
  public final String cu(String paramString)
  {
    String str = com.tencent.mm.model.w.ct(paramString);
    if (!com.tencent.mm.platformtools.au.hX(str));
    do
    {
      return str;
      if (!this.gOZ.containsKey(paramString))
        break;
      str = (String)this.gOZ.get(paramString);
    }
    while (!com.tencent.mm.platformtools.au.hX(str));
    if ((this.gMo) && (!paramString.toLowerCase().endsWith("@chatroom")))
      com.tencent.mm.model.ar.tZ().a(paramString, new hi(this));
    return com.tencent.mm.model.w.cu(paramString);
  }

  @TargetApi(9)
  public final void dL(boolean paramBoolean)
  {
    if (this.gni)
    {
      if (!paramBoolean)
        break label163;
      if (Build.VERSION.SDK_INT < 9)
        break label123;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(getWindowManager().getDefaultDisplay().getOrientation());
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "rotation %d", arrayOfObject);
      switch (getWindowManager().getDefaultDisplay().getOrientation())
      {
      default:
      case 0:
      case 1:
      case 2:
      case 3:
      }
    }
    label123: 
    do
    {
      return;
      setRequestedOrientation(1);
      return;
      setRequestedOrientation(0);
      return;
      setRequestedOrientation(9);
      return;
      setRequestedOrientation(8);
      return;
      if (getResources().getConfiguration().orientation == 2)
      {
        setRequestedOrientation(0);
        return;
      }
    }
    while (getResources().getConfiguration().orientation != 1);
    setRequestedOrientation(1);
    return;
    label163: setRequestedOrientation(-1);
  }

  @Deprecated
  protected final void dM(boolean paramBoolean)
  {
    this.handler.postDelayed(new if(this, paramBoolean), 10L);
  }

  public final void dN(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.gMj.dH(false);
      this.cRp = true;
      be.uz().sr().set(26, Boolean.valueOf(true));
      mm(0);
      aIS();
      Toast.makeText(aal(), getString(2131165273), 0).show();
      this.gMj.aIQ();
      bb(2, 2130837601);
      return;
    }
    this.gMj.dH(true);
    this.cRp = false;
    be.uz().sr().set(26, Boolean.valueOf(false));
    mm(8);
    aIS();
    Toast.makeText(aal(), getString(2131165274), 0).show();
    this.gMj.aIQ();
    bb(2, 2130837605);
  }

  public final void dO(boolean paramBoolean)
  {
    if ((this.eSm.getUsername().toLowerCase().endsWith("@chatroom")) && (!com.tencent.mm.model.r.cb(this.eSm.getUsername())))
    {
      com.tencent.mm.ui.base.h.p(this, getString(2131167178), null);
      return;
    }
    com.tencent.mm.c.a.gy localgy = new com.tencent.mm.c.a.gy();
    localgy.bQS.bQU = true;
    com.tencent.mm.sdk.b.a.ayH().f(localgy);
    if (!paramBoolean)
    {
      if ((com.tencent.mm.pluginsdk.h.apu() != null) && (com.tencent.mm.pluginsdk.h.apu().kn(this.eSm.getUsername())))
      {
        LinkedList localLinkedList = com.tencent.mm.pluginsdk.h.apu().kl(this.eSm.getUsername());
        String str;
        if ((localLinkedList != null) && (localLinkedList.contains(Ch())))
          str = getString(2131167185);
        for (int i = 2131167187; ; i = 2131167188)
        {
          com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
          Object[] arrayOfObject = new Object[4];
          arrayOfObject[0] = Integer.valueOf(19);
          arrayOfObject[1] = Integer.valueOf(0);
          arrayOfObject[2] = Integer.valueOf(0);
          arrayOfObject[3] = Integer.valueOf(0);
          localm.d(10997, arrayOfObject);
          com.tencent.mm.ui.base.aa localaa = new com.tencent.mm.ui.base.aa(this);
          localaa.wg(str);
          localaa.b(2131167681, new jj(this));
          localaa.c(i, new jk(this, paramBoolean));
          localaa.aGI().show();
          return;
          str = getString(2131167186);
        }
      }
      if ((!com.tencent.mm.platformtools.au.hX(localgy.bQT.bQW)) && (!this.eSm.getUsername().equals(localgy.bQT.bQW)))
      {
        com.tencent.mm.ui.base.h.a(this, getString(2131167156), null, new jl(this), new jm(this));
        return;
      }
      pc(this.eSm.getUsername());
      return;
    }
    if ((com.tencent.mm.platformtools.au.hX(localgy.bQT.bQW)) || (this.eSm.getUsername().equals(localgy.bQT.bQW)))
    {
      pc(this.eSm.getUsername());
      return;
    }
    if ((this.gPF == null) || (this.gPF.getVisibility() != 0))
    {
      com.tencent.mm.ui.base.h.a(this, getString(2131167156), null, new jn(this), new jo(this));
      return;
    }
    this.gPF.wl(getString(2131167156));
    this.gPF.aHR();
  }

  public final void dq(String paramString)
  {
    if ((paramString == null) || (paramString.equals(aJe())))
      return;
    com.tencent.mm.platformtools.au.a(this, getSharedPreferences(com.tencent.mm.sdk.platformtools.al.azs(), 0).getBoolean("settings_shake", true));
  }

  public void finish()
  {
    SM();
    com.tencent.mm.sdk.platformtools.an.b(new ja(this), 100L);
  }

  protected final int getLayoutId()
  {
    return 2130903144;
  }

  public final void i(String paramString, Bitmap paramBitmap)
  {
    if ((com.tencent.mm.platformtools.au.hX(paramString)) || (this.gOI == null) || (paramBitmap == null))
      return;
    this.gOL.post(new jg(this));
  }

  protected final boolean i(int paramInt1, int paramInt2, String paramString)
  {
    if (cx.a(aal(), paramInt1, paramInt2, 7));
    do
    {
      return true;
      if ((paramInt1 == 4) && (paramInt2 == -6))
        return false;
    }
    while (cl.a(this, paramInt1, paramInt2, new Intent().setClass(this, LauncherUI.class).putExtra("Intro_Switch", true).addFlags(67108864), paramString) != null);
    return false;
  }

  public final void m(com.tencent.mm.pluginsdk.model.app.k paramk)
  {
    if (paramk == null)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = cj.azV();
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.ChattingUI", "onAppSelected, info is null, %s", arrayOfObject2);
    }
    do
    {
      do
      {
        return;
        if (paramk.field_status == 3)
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "onAppSeleted fail, app is in blacklist, packageName = " + paramk.field_packageName);
          return;
        }
      }
      while ((this.gPx.be(paramk.field_packageName, paramk.field_openId)) || (paramk.field_status != 5));
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = paramk.bSK;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "SuggestionApp appSuggestionIntroUrl = %s", arrayOfObject1);
    }
    while (com.tencent.mm.platformtools.au.hX(paramk.bSK));
    Intent localIntent = new Intent();
    localIntent.setClass(this, WebViewUI.class);
    localIntent.putExtra("rawUrl", paramk.bSK);
    startActivity(localIntent);
  }

  public final void mG(int paramInt)
  {
    com.tencent.mm.ui.c localc = this.gPA;
    if (paramInt == 0);
    for (boolean bool = true; ; bool = false)
    {
      localc.cW(bool);
      return;
    }
  }

  public final void mm(int paramInt)
  {
    com.tencent.mm.ui.c localc = this.gPA;
    if (paramInt == 0);
    for (boolean bool = true; ; bool = false)
    {
      localc.cX(bool);
      return;
    }
  }

  public final void mn(int paramInt)
  {
    vT(getString(paramInt));
  }

  public final void nC(int paramInt)
  {
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    arrayOfObject1[1] = Boolean.valueOf(this.gPk);
    arrayOfObject1[2] = Boolean.valueOf(this.gPl);
    com.tencent.mm.sdk.platformtools.aa.f("MicroMsg.ChattingUI", "search result count %d, in edit mode %B, can report %B", arrayOfObject1);
    if ((!this.gPb) && (!this.gPk))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "not search now");
      return;
    }
    if ((this.gPl) && (paramInt >= 0))
    {
      this.gPl = false;
      com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(2);
      localm.d(10811, arrayOfObject2);
    }
    if (paramInt > 0)
    {
      this.gPf.setVisibility(0);
      this.gOI.setVisibility(8);
      this.gPe.setVisibility(8);
      this.gPg.setVisibility(8);
      return;
    }
    if (paramInt == 0)
    {
      this.gPf.setVisibility(8);
      this.gOI.setVisibility(8);
      this.gPe.setVisibility(0);
      this.gPg.setVisibility(8);
      return;
    }
    this.gPf.setVisibility(8);
    this.gOI.setVisibility(0);
    this.gPe.setVisibility(8);
    this.gPg.setVisibility(0);
  }

  protected final void nD(int paramInt)
  {
    if (paramInt != 0);
    for (boolean bool = true; ; bool = false)
    {
      EmojiView.ck(bool);
      if (paramInt == 0)
      {
        View localView = this.gOI.getChildAt(this.gOI.getFirstVisiblePosition());
        if ((localView != null) && (localView.getTop() == 0))
          this.cXV.aHk();
      }
      if (paramInt == 2)
        com.tencent.mm.ar.a.aDD().ao(ChattingUI.class.getName() + ".Listview", 4);
      return;
    }
  }

  public final void nE(int paramInt)
  {
    int i = ((Integer)be.us().get(35, Integer.valueOf(10))).intValue();
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(aJe());
    if (i == -2)
    {
      if ((this.gJU) && ((paramInt == 1) || (paramInt == 2)))
      {
        Object[] arrayOfObject4 = new Object[1];
        arrayOfObject4[0] = Integer.valueOf(paramInt);
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "oreh old logic doDirectSend not support chatStatus:%d", arrayOfObject4);
        return;
      }
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(paramInt);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "oreh old logic doDirectSend done chatStatus:%d", arrayOfObject3);
      com.tencent.mm.modelsimple.t localt2 = new com.tencent.mm.modelsimple.t(localLinkedList, com.tencent.mm.a.i.bm(paramInt));
      be.uA().d(localt2);
      return;
    }
    if ((this.gJU) || (com.tencent.mm.storage.i.tA(this.eSm.getUsername())) || (com.tencent.mm.storage.i.ty(this.eSm.getUsername())) || (this.eSm.aAp()))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "oreh doDirectSend not support");
      return;
    }
    long l = com.tencent.mm.platformtools.au.N(this.gPh);
    if ((i == -1) || (l > 1000L * i))
    {
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Long.valueOf(l / 1000L);
      arrayOfObject1[1] = Integer.valueOf(i);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "oreh doDirectSend interval too long: %d;  interval: %d", arrayOfObject1);
      return;
    }
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = Integer.valueOf(paramInt);
    arrayOfObject2[1] = Long.valueOf(l / 1000L);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "oreh doDirectSend done chatStatus:%d, delt:%d", arrayOfObject2);
    com.tencent.mm.modelsimple.t localt1 = new com.tencent.mm.modelsimple.t(localLinkedList, com.tencent.mm.a.i.bm(paramInt));
    be.uA().d(localt1);
  }

  public final void nF(int paramInt)
  {
    String str1 = com.tencent.mm.modelvoice.bi.fU(((ak)this.gMi.getItem(paramInt)).ot());
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.ChattingUI", "set MyRingtone file is " + str1);
    int i = str1.lastIndexOf("voice");
    String str2 = str1.substring(0, i) + "ringtone.amr";
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "newPath " + str2);
    com.tencent.mm.sdk.platformtools.m.f(str1, str2, false);
    File localFile = new File(str2);
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("_data", str2);
    localContentValues.put("title", localFile.getName());
    localContentValues.put("mime_type", "audio/amr");
    localContentValues.put("is_ringtone", Boolean.valueOf(true));
    localContentValues.put("is_notification", Boolean.valueOf(false));
    localContentValues.put("is_alarm", Boolean.valueOf(false));
    localContentValues.put("is_music", Boolean.valueOf(false));
    Uri localUri1 = MediaStore.Audio.Media.getContentUriForPath(str2);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "uri " + localUri1);
    Cursor localCursor = getContentResolver().query(localUri1, null, "_data=?", new String[] { str2 }, null);
    if ((localCursor.moveToFirst()) && (localCursor.getCount() > 0));
    for (Uri localUri2 = Uri.withAppendedPath(localUri1, localCursor.getString(localCursor.getColumnIndex("_id"))); ; localUri2 = getContentResolver().insert(localUri1, localContentValues))
    {
      localCursor.close();
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "set riginton " + localUri2);
      RingtoneManager.setActualDefaultRingtoneUri(this, 1, localUri2);
      Settings.System.putString(getContentResolver(), "ringtone", localUri2.toString());
      return;
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    int i = 1;
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.ChattingUI", "onAcvityResult requestCode:" + paramInt1);
    if ((this.gMi.isInEditMode()) && (this.gPk))
      aJD();
    if (paramInt2 != -1)
      if ((paramInt1 == 200) || (paramInt1 == 201) || (paramInt1 == 203))
      {
        this.dKO.clearFocus();
        new Handler(Looper.getMainLooper()).post(new ir(this));
      }
    label397: int j;
    do
    {
      Cursor localCursor;
      do
      {
        do
        {
          do
          {
            String str3;
            String str4;
            int k;
            do
            {
              int i3;
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        return;
                        if (this.gOG != null)
                          this.gOG.g(paramInt1, paramIntent);
                        switch (paramInt1)
                        {
                        case 204:
                        case 205:
                        case 206:
                        case 209:
                        case 219:
                        default:
                          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "onActivityResult: not found this requestCode");
                          return;
                        case 213:
                        case 220:
                        case 200:
                        case 201:
                        case 202:
                        case 217:
                        case 203:
                        case 207:
                        case 208:
                        case 215:
                        case 218:
                        case 216:
                        case 210:
                        case 211:
                        case 212:
                        case 214:
                        }
                      }
                      while ((paramIntent == null) || (!paramIntent.getBooleanExtra("_delete_ok_", false)));
                      finish();
                      return;
                    }
                    while ((-1 != paramInt2) || (this.gPj == null) || (!this.gPj.aJu()));
                    this.gPj.aJs();
                    return;
                  }
                  while (paramIntent == null);
                  Intent localIntent2 = new Intent(this, CropImageNewUI.class);
                  localIntent2.putExtra("CropImageMode", 4);
                  localIntent2.putExtra("CropImage_Filter", i);
                  String str7 = aJe();
                  boolean bool3;
                  if (str7 != null)
                  {
                    boolean bool4 = com.tencent.mm.storage.i.ty(str7);
                    bool3 = false;
                    if (!bool4)
                    {
                      boolean bool5 = com.tencent.mm.storage.i.tA(str7);
                      bool3 = false;
                      if (!bool5)
                        break label397;
                    }
                  }
                  while (true)
                  {
                    localIntent2.putExtra("CropImage_Has_Raw_Img_Btn", bool3);
                    localIntent2.putExtra("from_source", 3);
                    com.tencent.mm.ui.tools.h.b(this, paramIntent, localIntent2, be.uz().sB(), 203);
                    return;
                    bool3 = i;
                  }
                  this.filePath = com.tencent.mm.pluginsdk.ui.tools.s.a(getApplicationContext(), paramIntent, be.uz().sB());
                }
                while (this.filePath == null);
                Intent localIntent1 = new Intent();
                ArrayList localArrayList = new ArrayList(i);
                localArrayList.add(this.filePath);
                localIntent1.putExtra("query_source_type", 3);
                localIntent1.putExtra("preview_image", i);
                localIntent1.putStringArrayListExtra("preview_image_list", localArrayList);
                localIntent1.addFlags(67108864);
                com.tencent.mm.ak.a.a(this, "gallery", ".ui.GalleryEntryUI", localIntent1, 217);
                return;
                i3 = paramIntent.getIntExtra("Chat_Mode", i);
              }
              while (this.dKO == null);
              this.dKO.setMode(i3);
              return;
              this.gOH = paramIntent.getStringArrayListExtra("CropImage_OutputPath_List");
              if ((this.gOH == null) || (this.gOH.size() == 0))
              {
                com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "send filepath is null or nil");
                this.dKO.clearFocus();
                return;
              }
              be.ut().o(new is(this, paramIntent));
              this.dKO.clearFocus();
              new Handler(Looper.getMainLooper()).post(new it(this));
              return;
              this.filePath = paramIntent.getStringExtra("CropImage_OutputPath");
              if (this.filePath == null)
              {
                this.dKO.clearFocus();
                return;
              }
              String str6 = this.filePath;
              boolean bool1 = paramIntent.getBooleanExtra("CropImage_Compress_Img", i);
              boolean bool2 = com.tencent.mm.model.v.b(str6, aJe(), bool1);
              int i1 = paramIntent.getIntExtra("from_source", 0);
              int i2 = paramIntent.getIntExtra("CropImage_rotateCount", 0);
              com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "dkimgsource" + paramIntent.getIntExtra("from_source", 0));
              if (bool2);
              while (true)
              {
                a(i, i1, i2, str6);
                this.dKO.clearFocus();
                new Handler(Looper.getMainLooper()).post(new iu(this));
                return;
                j = 0;
              }
              au(paramIntent.getStringExtra("art_smiley_slelct_data"), 4);
              return;
              t(paramIntent);
              return;
              t(paramIntent);
              return;
              t(paramIntent);
              return;
              if (paramIntent == null)
              {
                com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "data == null");
                return;
              }
              str3 = paramIntent.getStringExtra("VideoRecorder_ToUser");
              str4 = paramIntent.getStringExtra("VideoRecorder_FileName");
              k = paramIntent.getIntExtra("VideoRecorder_VideoLength", 0);
              com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "fileName " + str4 + " length " + k + " user " + str3);
            }
            while ((com.tencent.mm.platformtools.au.hX(str3)) || (com.tencent.mm.platformtools.au.hX(str4)) || (k < 0));
            if ((str3.equals("medianote")) && ((0x4000 & com.tencent.mm.model.v.tl()) == 0))
            {
              q localq = new q();
              localq.gR(str4);
              localq.ez(k);
              localq.setUser(str3);
              localq.gS((String)com.tencent.mm.n.f.c(2, ""));
              localq.G(cj.FC());
              localq.H(cj.FC());
              localq.ew(k);
              localq.ev(k);
              int m = com.tencent.mm.ai.r.hb(com.tencent.mm.ai.m.DE().gZ(str4));
              if (m <= 0)
              {
                com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.VideoLogic", "get Video size failed :" + str4);
                return;
              }
              localq.cJ(m);
              String str5 = com.tencent.mm.ai.m.DE().ha(str4);
              int n = com.tencent.mm.ai.r.hb(str5);
              if (n <= 0)
              {
                com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.VideoLogic", "get Thumb size failed :" + str5 + " size:" + n);
                return;
              }
              localq.ey(n);
              com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.VideoLogic", "init record file:" + str4 + " thumbsize:" + localq.DK() + " videosize:" + localq.vR());
              localq.setStatus(199);
              ak localak = new ak();
              localak.uK(localq.getUser());
              localak.setType(43);
              localak.bZ(j);
              localak.uN(str4);
              localak.setStatus(2);
              localak.G(com.tencent.mm.model.bv.dA(localq.getUser()));
              localq.dy((int)com.tencent.mm.model.bv.d(localak));
              com.tencent.mm.ai.m.DE().a(localq);
              return;
            }
            com.tencent.mm.ai.v.a(str4, k, str3, null, 0);
            com.tencent.mm.ai.v.hf(str4);
            dM(j);
            return;
          }
          while (paramInt2 != -1);
          long l = paramIntent.getLongExtra("App_MsgId", 0L);
          H(be.uz().sw().bU(l));
          return;
        }
        while (paramInt2 != -1);
        localCursor = managedQuery(paramIntent.getData(), null, null, null, null);
      }
      while (!localCursor.moveToFirst());
      String str2 = localCursor.getString(localCursor.getColumnIndexOrThrow("_id"));
      startActivity(new Intent("android.intent.action.EDIT", Uri.parse("content://com.android.contacts/contacts/" + str2)));
      return;
    }
    while (paramIntent == null);
    String str1 = paramIntent.getStringExtra("Select_Conv_User");
    if (com.tencent.mm.platformtools.au.hX(str1))
    {
      Object[] arrayOfObject2 = new Object[j];
      arrayOfObject2[0] = "[nobody]";
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "@ %s", arrayOfObject2);
      this.dKO.qI("");
      this.gOR = false;
      return;
    }
    Object[] arrayOfObject1 = new Object[j];
    arrayOfObject1[0] = str1;
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "@ %s", arrayOfObject1);
    this.dKO.qI(str1);
    this.gOR = j;
    return;
    ChatFooter.asN();
    this.dKO.asI();
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "getConfiguration().orientation = " + getResources().getConfiguration().orientation + ", newConfig.orientation = " + paramConfiguration.orientation);
    getResources().getConfiguration().orientation = paramConfiguration.orientation;
    this.dKO.aqY();
    aJT();
  }

  public void onCreate(Bundle paramBundle)
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(hashCode());
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "onCreate %d", arrayOfObject1);
    long l = System.currentTimeMillis();
    super.onCreate(paramBundle);
    aW().setCustomView(2130903064);
    aW().aU();
    aW().setDisplayHomeAsUpEnabled(false);
    aW().aS();
    aW().aT();
    this.gPA = new com.tencent.mm.ui.c(aW().getCustomView());
    this.gPp.clear();
    this.gPp.add(getIntent().getStringExtra("Chat_User"));
    FR();
    aJZ();
    be.uA().a(522, this);
    be.uA().a(110, this);
    be.uA().a(10, this);
    be.uA().a(127, this);
    com.tencent.mm.pluginsdk.model.app.bi localbi = com.tencent.mm.pluginsdk.model.app.bi.aqk();
    if (be.se())
      ba.PE().a(4, localbi);
    bj.c(this.gMj);
    com.tencent.mm.modelvoice.p.a(this.gMj);
    be.uz().su().a(this);
    be.uz().sA().e(this.gPw);
    be.uz().sw().a(this, Looper.getMainLooper());
    com.tencent.mm.pluginsdk.h.apj().a(this.gPs);
    com.tencent.mm.pluginsdk.h.apj().c(this.cYV);
    com.tencent.mm.sdk.b.a.ayH().a("RePullEmojiInfoDesc", this.flR);
    com.tencent.mm.sdk.b.a.ayH().a("TrackRemoveTip", this.gPt);
    com.tencent.mm.ab.r.BN().e(this.gPu);
    ba.HF().e(this.gPv);
    ba.HE().e(this.doi);
    dd localdd = new dd();
    localdd.bOg.bOi = 0;
    localdd.bOg.bOj = z.azj();
    String str;
    int i;
    if (com.tencent.mm.model.w.cp(this.eSm.getUsername()))
    {
      localdd.bOg.bOk = true;
      com.tencent.mm.sdk.b.a.ayH().f(localdd);
      if (com.tencent.mm.model.w.cp(this.eSm.getUsername()))
      {
        str = this.eSm.getUsername();
        if ((str != null) && (str.toLowerCase().endsWith("@chatroom")))
          break label873;
        i = 0;
      }
    }
    while (true)
    {
      if (i != 0)
      {
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = this.eSm.getUsername();
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "chattingui find chatroom contact need update %s", arrayOfObject3);
        com.tencent.mm.model.ar.tZ().jdMethod_do(this.eSm.getUsername());
      }
      if (com.tencent.mm.model.w.cp(this.eSm.getUsername()))
        new Handler().post(new gh(this));
      EmojiView.ark();
      aJT();
      if ((com.tencent.mm.pluginsdk.h.aps() != null) && (!this.eSm.getUsername().equals(com.tencent.mm.pluginsdk.h.aps().Rp())))
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = com.tencent.mm.pluginsdk.h.aps().Rp();
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "chatting oncreate end track %s", arrayOfObject2);
        com.tencent.mm.c.a.aa localaa = new com.tencent.mm.c.a.aa();
        localaa.bMq.username = this.eSm.getUsername();
        com.tencent.mm.sdk.b.a.ayH().f(localaa);
      }
      this.gPx.aKl();
      if (this.edd == null)
        this.edd = new gi(this);
      be.nS().a(this.edd);
      com.tencent.mm.storage.n localn = be.uz().sx().tZ(this.eSm.getUsername());
      if ((localn != null) && (localn.rN() > 0))
      {
        List localList1 = be.uz().sw().ag(this.eSm.getUsername(), localn.rN());
        if (localList1.size() > 0)
          this.gPh = ((ak)localList1.get(0)).field_createTime;
        Iterator localIterator = localList1.iterator();
        ak localak2;
        do
        {
          if (!localIterator.hasNext())
            break;
          localak2 = (ak)localIterator.next();
        }
        while (!this.gMp.Q(localak2.getContent(), false));
      }
      if (this.gPh == 0L)
      {
        ak localak1 = be.uz().sw().uV(this.eSm.getUsername());
        if (!com.tencent.mm.platformtools.au.hX(localak1.aCl()))
          this.gPh = localak1.field_createTime;
      }
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.INIT", "KEVIN Chatting OnCreate: " + (System.currentTimeMillis() - l));
      com.tencent.mm.sdk.platformtools.an.b(new gj(this), 500L);
      return;
      localdd.bOg.bOk = false;
      break;
      label873: if (!be.uz().sA().tw(str))
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChatroomMembersLogic", "state is die");
        i = 1;
      }
      else
      {
        List localList2 = be.uz().sA().tv(str);
        if ((localList2 == null) || (localList2.size() == 0))
          i = 1;
        else
          i = 0;
      }
    }
  }

  public void onDestroy()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(hashCode());
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "onDestroy %d", arrayOfObject);
    if (this.gMo)
    {
      da localda = new da();
      localda.bOb.bOd = 5;
      com.tencent.mm.sdk.b.a.ayH().f(localda);
      com.tencent.mm.plugin.b.eS(3);
    }
    be.uA().b(522, this);
    be.uA().b(110, this);
    be.uA().b(10, this);
    be.uA().b(127, this);
    com.tencent.mm.pluginsdk.model.app.bi.aqk().aql();
    bj.b(this.gMj);
    com.tencent.mm.modelvoice.p.b(this.gMj);
    if (this.gOV != null)
      this.gOV.onDetach();
    if (this.gOG != null)
    {
      this.gOG.agJ();
      this.gOG = null;
    }
    VX();
    this.gMj.aII();
    this.gMj.onDestroy();
    dd localdd = new dd();
    localdd.bOg.bOi = 2;
    com.tencent.mm.sdk.b.a.ayH().f(localdd);
    if (be.se())
    {
      be.uz().su().b(this);
      be.uz().sA().f(this.gPw);
      com.tencent.mm.pluginsdk.h.apj().b(this.gPs);
      com.tencent.mm.pluginsdk.h.apj().d(this.cYV);
      com.tencent.mm.sdk.b.a.ayH().b("RePullEmojiInfoDesc", this.flR);
      com.tencent.mm.sdk.b.a.ayH().b("TrackRemoveTip", this.gPt);
      com.tencent.mm.ab.r.BN().f(this.gPu);
      ba.HF().f(this.gPv);
      ba.HE().f(this.doi);
      be.uz().sw().a(this);
    }
    this.gMi.closeCursor();
    if (this.gOt != null)
      this.gOt.closeCursor();
    this.gMi.aDU();
    aJR();
    this.gPx.aKm();
    be.nS().b(this.edd);
    if (be.uz().sk())
      com.tencent.mm.plugin.webwx.a.b.E(aJe(), true);
    lm.release();
    if ((be.se()) && (this.eSm.rb()) && (this.eSm.aAp()))
    {
      ab.yh();
      com.tencent.mm.p.r.eL(aJe());
    }
    this.dKO.destroy();
    if (this.gPF != null)
      this.gPF.stop();
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getKeyCode() == 4)
    {
      if ((this.gPj != null) && (this.gPj.aJu()))
      {
        if (this.gPk)
        {
          aJD();
          this.gPj.aJv();
          return true;
        }
        this.gPj.aJs();
        return true;
      }
      if (this.dKO.asL())
      {
        this.dKO.asK();
        return true;
      }
      goBack();
      return true;
    }
    AudioManager localAudioManager = (AudioManager)getSystemService("audio");
    int i = localAudioManager.getStreamMaxVolume(0);
    if ((paramInt == 25) && (this.gMj != null) && (this.gMj.isPlaying()) && ((this.cRp) || (!this.gMj.pj())))
    {
      int m = localAudioManager.getStreamVolume(0);
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.ChattingUI", "volume current:" + m + " max:" + i);
      int n = i / 7;
      if (n == 0)
        n = 1;
      localAudioManager.setStreamVolume(0, m - n, 5);
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.ChattingUI", "volume current:" + m + " max:" + i);
      return true;
    }
    if ((paramInt == 24) && (this.gMj != null) && (this.gMj.isPlaying()) && ((this.cRp) || (!this.gMj.pj())))
    {
      int j = localAudioManager.getStreamVolume(0);
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.ChattingUI", "volume current:" + j + " max:" + i);
      int k = i / 7;
      if (k == 0)
        k = 1;
      localAudioManager.setStreamVolume(0, k + j, 5);
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.ChattingUI", "volume current:" + j + " max:" + i);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(hashCode());
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "onPause %d", arrayOfObject1);
    super.onPause();
    this.glB = false;
    if (this.gPk)
    {
      aJD();
      if (this.gPj != null)
        this.gPj.aJv();
    }
    if (com.tencent.mm.model.w.cR(aJe()))
      ((com.tencent.mm.plugin.voicereminder.a.f)be.uh().dN(com.tencent.mm.plugin.voicereminder.a.f.class.getName())).b(this.ePu);
    this.gPr.azn();
    this.dKO.onPause();
    aJK();
    be.uB().pf();
    be.nQ().aQ("");
    com.tencent.mm.z.n.b(this.gMp);
    com.tencent.mm.z.f.a(this);
    be.uz().sw().f(this.gMi);
    com.tencent.mm.ai.m.DE().a(this.gMi);
    ag.Ba().f(this.gMi);
    com.tencent.mm.platformtools.v.c(this);
    be.uz().sr().set(18, Integer.valueOf(this.dKO.getMode()));
    be.uz().sr().set(26, Boolean.valueOf(this.cRp));
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = Integer.valueOf(this.gOU);
    arrayOfObject2[1] = Integer.valueOf(this.dKO.getMode());
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChattingUI", "dkcm old:%d footer:%d ", arrayOfObject2);
    if (this.gOU != this.dKO.getMode())
    {
      this.gOU = this.dKO.getMode();
      com.tencent.mm.storage.n localn2 = be.uz().sx().tZ(aJe());
      if ((localn2 != null) && (aJe().equals(localn2.getUsername())))
      {
        localn2.ca(this.gOU);
        be.uz().sx().a(localn2, aJe());
      }
    }
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.ChattingUI", "record stop on pause");
    this.dKO.Oe();
    com.tencent.mm.sdk.platformtools.am.sF("keep_app_silent");
    com.tencent.mm.sdk.platformtools.am.sF("keep_chatting_silent" + aJe());
    com.tencent.mm.storage.n localn1;
    if ((this.dKO != null) && (this.eSm != null) && (aJe() != null) && (!this.dKO.asy().equals(this.gPo)))
    {
      localn1 = be.uz().sx().tZ(aJe());
      if (localn1 != null)
      {
        localn1.field_editingMsg = this.dKO.asy().trim();
        if (!com.tencent.mm.platformtools.au.hX(localn1.field_editingMsg))
          break label677;
      }
    }
    label677: for (long l = localn1.field_conversationTime; ; l = System.currentTimeMillis())
    {
      localn1.field_flag = com.tencent.mm.storage.o.a(localn1, 1, l);
      be.uz().sx().a(localn1, localn1.field_username, false);
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.ChattingUI", "set editMsg history");
      this.gPo = this.dKO.asy();
      this.gMj.dI(false);
      this.gMj.release();
      be.uB().pm();
      aIS();
      com.tencent.mm.pluginsdk.h.apj().al(false);
      if (com.tencent.mm.pluginsdk.h.apl() != null)
        com.tencent.mm.pluginsdk.h.apl().b(this);
      if (com.tencent.mm.pluginsdk.h.apu() != null)
        com.tencent.mm.pluginsdk.h.apu().b(this);
      if ((this.eSm.rb()) && (this.eSm.aAp()) && (this.cSY != null))
      {
        com.tencent.mm.p.f localf = this.cSY.xu();
        if ((localf != null) && (localf.cns))
          ab.yh().xZ();
        if (this.gOJ != null)
          this.gOJ.dismiss();
      }
      SM();
      be.uA().b(411, this);
      return;
    }
  }

  protected void onResume()
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(hashCode());
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", "onResume %d", arrayOfObject1);
    long l = System.currentTimeMillis();
    super.onResume();
    if (!be.se())
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.ChattingUI", "account not ready, mabey not call onDestroy!!!");
      finish();
      return;
    }
    cl.aFn();
    this.glB = true;
    this.gPr.bO(300000L);
    com.tencent.mm.storage.b localb;
    boolean bool3;
    label134: String str5;
    label158: label174: boolean bool1;
    if (com.tencent.mm.model.w.cp(aJe()))
    {
      String str4 = aJe();
      localb = be.uz().sA().ts(str4);
      if (localb == null)
      {
        bool3 = false;
        this.gOY = bool3;
        if (!this.gOY)
          break label899;
        com.tencent.mm.model.r.b(aJe(), this.gOZ);
        StringBuilder localStringBuilder = new StringBuilder("chatroom display  ");
        if (!this.gOY)
          break label911;
        str5 = "show ";
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChattingUI", str5);
        com.tencent.mm.sdk.platformtools.am.sE("keep_chatting_silent" + aJe());
        be.nQ().aQ(aJe());
        MMAppMgr.aT(aJe());
        if (com.tencent.mm.model.w.cR(aJe()))
          ((com.tencent.mm.plugin.voicereminder.a.f)be.uh().dN(com.tencent.mm.plugin.voicereminder.a.f.class.getName())).a(this.ePu);
        com.tencent.mm.z.n.a(this.gMp);
        be.uz().sw().e(this.gMi);
        com.tencent.mm.ai.m.DE().a(this.gMi, Looper.getMainLooper());
        ag.Ba().e(this.gMi);
        com.tencent.mm.platformtools.v.b(this);
        aJw();
        v localv = this.gMj;
        if (this.cRp)
          break label954;
        bool1 = true;
        label317: localv.dH(bool1);
        this.gMi.ca(null);
        this.dKO.onResume();
        if (this.eSm != null)
        {
          com.tencent.mm.storage.n localn = be.uz().sx().tZ(aJe());
          if (localn != null)
            this.gPo = localn.field_editingMsg;
          if ((com.tencent.mm.platformtools.au.hX(this.gPo)) || (this.dKO == null))
            break label985;
          this.dKO.asO();
          getWindow().setSoftInputMode(20);
          if ((!this.gJU) || (!this.gOR))
            break label960;
          this.gOR = false;
          String str2 = this.dKO.asu();
          if (!com.tencent.mm.platformtools.au.hX(str2))
          {
            String str3 = this.gPo.substring(0, this.dKO.asw()) + str2 + " " + this.gPo.substring(this.dKO.asw(), this.gPo.length());
            int i = 1 + (this.dKO.asw() + str2.length());
            this.dKO.qJ(str3);
            this.dKO.b(str3, i, false);
            this.dKO.qI(null);
            UY();
          }
        }
        label559: this.gMj.aIP();
        if (gOW)
        {
          gOW = false;
          dM(true);
        }
        this.dKO.asJ();
        com.tencent.mm.pluginsdk.h.apj().al(true);
        EmojiView.ck(false);
        if (com.tencent.mm.pluginsdk.h.apl() != null)
          com.tencent.mm.pluginsdk.h.apl().a(this);
        if (com.tencent.mm.pluginsdk.h.apu() != null)
          com.tencent.mm.pluginsdk.h.apu().a(this);
        aJW();
        aKa();
        if ((this.eSm.rb()) && (this.eSm.aAp()) && (this.cSY != null))
        {
          com.tencent.mm.p.f localf = this.cSY.xu();
          if ((localf == null) || (!localf.cns))
            break label1097;
          localLBSManager = new LBSManager(this, null);
          if ((localLBSManager.ayX()) || (localLBSManager.ayY()))
            break label1011;
          bool2 = true;
          if ((this.cSY.field_hadAlert != 0) && ((!this.cSY.xz()) || (!bool2)))
            break label1084;
          if ((this.cSY.field_hadAlert != 0) || (!bool2))
            break label1017;
          arrayOfObject4 = new Object[1];
          arrayOfObject4[0] = this.eSm.rr();
          str1 = getString(2131165796, arrayOfObject4);
          this.gOJ = com.tencent.mm.ui.base.h.a(this, str1, getString(2131167675), new gn(this, bool2), new go(this));
        }
      }
    }
    label899: label911: label954: label960: label985: label1011: label1017: 
    while (!this.cSY.xA())
      while (true)
      {
        LBSManager localLBSManager;
        Object[] arrayOfObject4;
        String str1;
        if (this.cSY.field_status == 1)
        {
          this.cSY.field_status = 0;
          ab.ye().b(this.cSY);
        }
        com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.INIT", "KEVIN Chatting OnResume: " + (System.currentTimeMillis() - l));
        be.uA().a(411, this);
        return;
        bool3 = localb.aAk();
        break;
        this.gOZ.clear();
        break label134;
        str5 = "not show";
        break label158;
        if (com.tencent.mm.model.w.cq(aJe()))
        {
          this.gOY = true;
          break label174;
        }
        this.gOY = false;
        this.gOZ.clear();
        break label174;
        bool1 = false;
        break label317;
        this.dKO.qJ(this.gPo);
        this.dKO.qK(this.gPo);
        break label559;
        if (this.dKO == null)
          break label559;
        this.dKO.asP();
        getWindow().setSoftInputMode(18);
        break label559;
        boolean bool2 = false;
        continue;
        if (bool2)
        {
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = this.eSm.rr();
          str1 = getString(2131165797, arrayOfObject3);
        }
        else
        {
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = this.eSm.rr();
          str1 = getString(2131165795, arrayOfObject2);
          continue;
          ab.yh().eM(aJe());
        }
      }
    label1084: label1097: com.tencent.mm.model.ar.tZ().jdMethod_do(this.eSm.getUsername());
    com.tencent.mm.m.c.dX(this.eSm.getUsername());
  }

  public void onStart()
  {
    com.tencent.mm.model.s.te().a(new gm(this));
    super.onStart();
  }

  public void onStop()
  {
    com.tencent.mm.model.s.te().a(null);
    super.onStop();
  }

  public void openContextMenu(View paramView)
  {
    if (this.diX == null)
      this.diX = new dg(this);
    this.diX.b(paramView, this.dYT, this.dLv);
  }

  public final void qh(String paramString)
  {
    if (paramString.equals(this.eSm.getUsername()))
      aJW();
  }

  public final void r(String paramString1, String paramString2, String paramString3)
  {
    if (paramString1.equals(this.eSm.getUsername()))
      aJW();
  }

  public final void vT(String paramString)
  {
    int i = getResources().getDimensionPixelSize(2131558418);
    SpannableString localSpannableString = com.tencent.mm.ao.b.e(aal(), paramString, i);
    this.gPA.setTitle(localSpannableString);
  }

  public final boolean wD(String paramString)
  {
    return au(paramString, 0);
  }

  public final String wE(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (paramString.contains("http://weixin.qq.com/emoticonstore/")))
    {
      String str = paramString.substring(1 + paramString.lastIndexOf("/"));
      if ((this.eSm.rb()) && (this.eSm.aAp()) && (this.cSY != null))
      {
        com.tencent.mm.p.f localf = this.cSY.xu();
        if ((localf != null) && (!TextUtils.isEmpty(localf.cnz)) && (str.contains(localf.cnz)))
          return str;
      }
    }
    return null;
  }

  public final void wF(String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("map_view_type", 6);
    localIntent.putExtra("map_sender_name", Ch());
    localIntent.putExtra("map_talker_name", aJe());
    localIntent.putExtra("fromWhereShare", paramString);
    com.tencent.mm.ak.a.b(aal(), "location", ".ui.RedirectUI", localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ChattingUI
 * JD-Core Version:    0.6.2
 */