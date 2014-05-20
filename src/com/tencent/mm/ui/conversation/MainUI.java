package com.tencent.mm.ui.conversation;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.MessageQueue;
import android.os.MessageQueue.IdleHandler;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.support.v4.app.Fragment;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.m.af;
import com.tencent.mm.m.p;
import com.tencent.mm.model.am;
import com.tencent.mm.model.bu;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.network.ag;
import com.tencent.mm.platformtools.d;
import com.tencent.mm.plugin.backup.ui.BakchatBannerView;
import com.tencent.mm.pluginsdk.aj;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.LauncherUI;
import com.tencent.mm.ui.base.cd;
import com.tencent.mm.ui.cl;
import com.tencent.mm.ui.cx;
import com.tencent.mm.ui.player.MusicBannerView;
import com.tencent.mm.ui.tools.dg;
import com.tencent.mm.ui.tools.ds;
import com.tencent.mm.ui.voicesearch.VoiceSearchResultUI;
import java.util.HashMap;

public class MainUI extends com.tencent.mm.ui.a
  implements p, com.tencent.mm.model.ba, com.tencent.mm.n.m, com.tencent.mm.n.n, com.tencent.mm.pluginsdk.ai, ar
{
  private static boolean gZG = false;
  private String bNl = "";
  private ProgressDialog cIr = null;
  private boolean cQb = false;
  private cd dLv = new ba(this);
  private dg diX;
  private boolean dio = false;
  private ag ecl = new ai(this);
  private am edd = null;
  private g flR = null;
  private Handler flS = new bo(this);
  private TextView gSC;
  private boolean gSJ = false;
  private com.tencent.mm.storage.n gXR = null;
  private View gYZ;
  private com.tencent.mm.compatible.g.k gZA = new com.tencent.mm.compatible.g.k();
  private Handler gZB = new bw(this);
  private HashMap gZC = new HashMap();
  private int gZD = -1;
  private int gZE = -1;
  g gZF = new bb(this);
  private com.tencent.mm.ui.base.x gZa = null;
  private ListView gZb;
  private TextView gZc;
  private ab gZd;
  private View gZe;
  private ImageView gZf;
  private BakchatBannerView gZg;
  private NetWarnView gZh = null;
  private MusicBannerView gZi;
  private View gZj;
  private ds gZk;
  private ADListView gZl;
  private a gZm;
  private View gZn;
  private LinearLayout gZo = null;
  private boolean gZp = false;
  private boolean gZq = false;
  private boolean gZr = false;
  private int gZs = 0;
  private View gZt;
  private View gZu;
  private ImageView gZv;
  private TextView gZw;
  private ImageView gZx;
  private ImageView gZy;
  private com.tencent.mm.z.i gZz = null;
  private MessageQueue.IdleHandler gmg;
  com.tencent.mm.pluginsdk.ui.e goY = new com.tencent.mm.pluginsdk.ui.e(new bx(this));
  private TextView gpX;
  private boolean gpY = false;
  private PowerManager.WakeLock wakeLock = null;

  private void LP()
  {
    long l = System.currentTimeMillis();
    aa.d("MicroMsg.MainUI", "KEVIN setShowTitle: " + (System.currentTimeMillis() - l));
    aLD();
    Boolean localBoolean = (Boolean)com.tencent.mm.model.be.uz().sr().get(26);
    if (localBoolean != null)
    {
      if (localBoolean.booleanValue())
      {
        mm(0);
        return;
      }
      mm(8);
      return;
    }
    mm(8);
  }

  private void aLC()
  {
    if ((com.tencent.mm.model.be.nS() != null) && (this.edd == null))
    {
      aLE();
      this.edd = new bv(this);
    }
    com.tencent.mm.model.be.nS().a(this.edd);
  }

  private void aLD()
  {
    if ((!com.tencent.mm.model.be.se()) || (this.gZl == null) || (this.gZm == null))
      return;
    if ((com.tencent.mm.model.be.se()) && (this.gZh.bZ(aal())))
    {
      this.gZl.setVisibility(8);
      return;
    }
    if ((this.gpY) && (!this.gZq))
      this.gZh.setVisibility(8);
    com.tencent.mm.ac.b localb = com.tencent.mm.ac.b.Q(aal());
    if (localb != null)
    {
      this.gZm.a(localb);
      this.gZm.FZ();
      if (this.gZl.dP())
        this.gZl.setVisibility(0);
    }
    while (true)
    {
      this.gZl.getVisibility();
      return;
      this.gZl.setVisibility(8);
    }
  }

  private void aLE()
  {
    if (this.gZi != null)
    {
      if (com.tencent.mm.model.be.nS().op() != null)
      {
        this.gZi.xp(getString(2131165617) + getString(2131165618) + com.tencent.mm.model.be.nS().getTitle());
        this.gZi.setVisibility(0);
      }
    }
    else
      return;
    this.gZi.setVisibility(8);
  }

  private boolean s(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt1 == 4) && ((paramInt2 == -16) || (paramInt2 == -17)))
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt2);
      arrayOfObject[1] = Integer.valueOf(paramInt3);
      aa.d("MicroMsg.MainUI", "trigger check update: errCode:%d, sceneType:%d", arrayOfObject);
      if (com.tencent.mm.platformtools.at.cHy)
        com.tencent.mm.sdk.platformtools.al.getContext().getSharedPreferences("system_config_prefs", 0).edit().putLong("recomended_update_ignore", com.tencent.mm.platformtools.au.FC() - 86400L - 1L).commit();
      if (cl.a(aal(), paramInt1, paramInt2))
        return true;
    }
    return false;
  }

  private com.tencent.mm.storage.n xg(String paramString)
  {
    if (this.gZd != null)
      return (com.tencent.mm.storage.n)this.gZd.getItemByKey(paramString);
    return null;
  }

  protected final void FR()
  {
    aa.v("MicroMsg.MainUI", "main ui init view");
    if (this.gZb != null)
    {
      this.gZb.setAdapter(null);
      if (this.gYZ != null)
        this.gZb.removeHeaderView(this.gYZ);
      if (this.gZe != null)
        this.gZb.removeHeaderView(this.gZe);
      if (this.gZj != null)
        this.gZb.removeHeaderView(this.gZj);
      if (this.gZt != null)
        this.gZb.removeHeaderView(this.gZt);
      if (this.gZn != null)
        this.gZb.removeFooterView(this.gZn);
      if (this.gZo != null)
        this.gZb.removeHeaderView(this.gZo);
    }
    aFo();
    this.gZc = ((TextView)findViewById(2131362957));
    this.gSC = ((TextView)findViewById(2131361907));
    this.gSC.setOnClickListener(new by(this));
    this.gZb = ((ListView)findViewById(2131362956));
    this.gZb.setDrawingCacheEnabled(false);
    this.gZb.setScrollingCacheEnabled(false);
    this.gZb.post(new ak(this));
    this.gpX = ((TextView)findViewById(2131362958));
    this.gZd = new ab(aal(), new al(this));
    this.gZd.a(new an(this));
    this.gZd.a(new ao(this));
    this.gZd.a(new ap(this));
    View localView1 = View.inflate(aal(), 2130903107, null);
    this.gZg = ((BakchatBannerView)localView1.findViewById(2131362054));
    View localView2 = View.inflate(aal(), 2130903568, null);
    this.gZh = ((NetWarnView)localView2.findViewById(2131363319));
    this.gZj = View.inflate(aal(), 2130903558, null);
    this.gZi = ((MusicBannerView)this.gZj.findViewById(2131363292));
    this.gZb.addHeaderView(localView1);
    this.gZb.addHeaderView(localView2);
    this.gZb.addHeaderView(this.gZj);
    this.gZt = View.inflate(aal(), 2130903073, null);
    this.gZb.addHeaderView(this.gZt);
    this.gZo = new LinearLayout(aal());
    this.gZb.addHeaderView(this.gZo);
    this.gZo.setVisibility(8);
    aLC();
    com.tencent.mm.model.br.uP().a(new aq(this));
    com.tencent.mm.model.br.uP().ciT.tf();
    com.tencent.mm.x.b.Bg();
    this.gZb.setOnScrollListener(this.goY);
    this.gZd.b(this.goY);
    if (this.gZE < 0)
      this.gZE = ((LauncherUI)f()).aEC();
    this.gZb.setAdapter(this.gZd);
    this.gZb.post(new as(this));
    this.gZl = ((ADListView)this.gZt.findViewById(2131361930));
    this.diX = new dg(aal());
    this.gZb.setOnItemClickListener(new at(this));
    this.gZb.setOnItemLongClickListener(new au(this));
    this.gZb.setOnTouchListener(new aw(this));
    a(2130837608, new ax(this));
    if (com.tencent.mm.protocal.a.fxu)
      m(new ay(this));
    l(new az(this));
  }

  public final boolean FT()
  {
    return false;
  }

  public final void FU()
  {
    aa.v("MicroMsg.MainUI", "onQuitSearch");
    this.gZr = true;
    ig("");
    LauncherUI.aEA().da(true);
    if (this.gSC != null)
      this.gSC.setVisibility(8);
    this.gZh.bZ(aal());
    aLE();
  }

  public final void FV()
  {
    aa.v("MicroMsg.MainUI", "onEnterSearch");
    com.tencent.mm.plugin.d.c.m.dZN.j(10919, "2");
    this.gZh.setVisibility(8);
    this.gZi.setVisibility(8);
    LauncherUI.aEA().da(false);
    if (this.gSC != null)
      this.gSC.setVisibility(0);
  }

  public final void a(int paramInt1, int paramInt2, com.tencent.mm.n.x paramx)
  {
    if ((paramx == null) || (paramx.getType() != 38))
      return;
    if (paramInt2 != 0);
    for (int i = paramInt1 * 100 / paramInt2; ; i = 0)
    {
      com.tencent.mm.sdk.platformtools.an.i(new bl(this, i));
      return;
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    if (paramx.getType() != 38)
      s(paramInt1, paramInt2, paramx.getType());
    label414: label426: 
    do
    {
      do
      {
        return;
        StringBuilder localStringBuilder = new StringBuilder("onSceneEnd: errType = ").append(paramInt1).append(" errCode = ").append(paramInt2).append(" errMsg = ").append(paramString).append(" type = ").append(paramx.getType()).append(" @").append(hashCode()).append(" initScene:");
        int i;
        Object[] arrayOfObject2;
        if (this.gZz == null)
        {
          i = -1;
          aa.i("MicroMsg.MainUI", i + " scene:" + paramx.hashCode() + " initCurrently:" + this.dio);
          if ((this.dio) && (((com.tencent.mm.z.i)paramx).Br()))
          {
            Object[] arrayOfObject3 = new Object[1];
            arrayOfObject3[0] = Long.valueOf(this.gZA.qh());
            aa.e("MicroMsg.MainUI", "dksord dkinit Kevin init fin: %d ", arrayOfObject3);
            if (this.gZd != null)
            {
              com.tencent.mm.model.be.uz().su().a(this.gZd);
              this.gZd.aLv();
              if (f() != null)
                this.gZE = ((LauncherUI)f()).aEC();
            }
            this.dio = false;
            this.gZz = null;
            if (this.wakeLock.isHeld())
            {
              aa.d("MicroMsg.MainUI", "wakelock.release!");
              this.wakeLock.release();
            }
            com.tencent.mm.model.be.ut().azz();
          }
          if (!this.dio)
          {
            arrayOfObject2 = new Object[2];
            if (this.gZz != null)
              break label414;
          }
        }
        for (int m = -1; ; m = this.gZz.hashCode())
        {
          arrayOfObject2[0] = Integer.valueOf(m);
          arrayOfObject2[1] = this.cIr;
          aa.e("MicroMsg.MainUI", "tipDialog dismiss initScene:%d tipDialog:%s", arrayOfObject2);
          if (this.cIr != null)
          {
            this.cIr.dismiss();
            this.cIr = null;
            com.tencent.mm.model.be.ut().azz();
          }
          if (this.gZa != null)
          {
            this.gZa.dismiss();
            this.gZa = null;
          }
          if ((this.gke) || (paramInt1 != 4) || (paramInt2 != -6))
            break label426;
          aa.i("MicroMsg.MainUI", "not show verify dialog on background");
          return;
          i = this.gZz.hashCode();
          break;
        }
        aal();
      }
      while (cl.bc(paramInt1, paramInt2));
      this.gZa = cl.a(f(), paramInt1, paramInt2, new Intent().setClass(aal(), LauncherUI.class).putExtra("Intro_Switch", true).addFlags(67108864), paramString);
    }
    while (this.gZa != null);
    if (!com.tencent.mm.model.be.se())
    {
      aa.w("MicroMsg.MainUI", "onSceneEnd not set uin");
      return;
    }
    String str;
    if (!this.gZp)
    {
      this.gZp = true;
      str = (String)com.tencent.mm.model.be.uz().sr().get(5);
      if (((Integer)com.tencent.mm.model.be.uz().sr().get(57, Integer.valueOf(0))).intValue() == 0)
        break label879;
    }
    label879: for (int k = 1; ; k = 0)
    {
      if ((k != 0) && (str != null))
      {
        Activity localActivity = aal();
        Object[] arrayOfObject1 = { str };
        com.tencent.mm.ui.base.h.a(localActivity, getResources().getString(2131165532, arrayOfObject1), getString(2131167675), getString(2131165533), getString(2131165534), new bd(this), new be(this));
      }
      if ((paramInt1 == 4) && (paramInt2 == -17) && (!gZG))
      {
        com.tencent.mm.model.be.uA().d(new com.tencent.mm.z.i(5));
        gZG = true;
      }
      if ((s(paramInt1, paramInt2, paramx.getType())) || (cx.a(aal(), paramInt1, paramInt2, 4)))
        break;
      if ((paramx.getType() == 38) && (((com.tencent.mm.z.i)paramx).Bq()))
      {
        new Handler().post(new bk(this));
        if (((0x80 & v.tm()) != 0) && (com.tencent.mm.model.be.uz().sx().tZ("masssendapp") == null))
        {
          com.tencent.mm.storage.n localn = new com.tencent.mm.storage.n();
          localn.setUsername("masssendapp");
          localn.setContent(com.tencent.mm.sdk.platformtools.al.getContext().getResources().getString(2131166363));
          localn.o(2000L + com.tencent.mm.platformtools.au.FD());
          localn.bZ(0);
          localn.bY(0);
          com.tencent.mm.model.be.uz().sx().c(localn);
          int j = 0xFFFFFF7F & v.tm();
          com.tencent.mm.model.be.uz().sr().set(40, Integer.valueOf(j));
        }
      }
      if (paramx.getType() != 38)
        break;
      aLD();
      return;
    }
  }

  public final void a(int paramInt, com.tencent.mm.sdk.e.ao paramao, Object paramObject)
  {
    if (paramao == com.tencent.mm.model.be.uz().sr())
    {
      int i = com.tencent.mm.platformtools.au.U(paramObject);
      if (8193 == i)
        aLD();
      if (42 == i)
        aLD();
    }
  }

  public final void a(boolean paramBoolean, String[] paramArrayOfString, long paramLong, int paramInt)
  {
    aa.v("MicroMsg.MainUI", "onVoiceReturn");
    if (paramBoolean)
    {
      Intent localIntent1 = new Intent(aal(), VoiceSearchResultUI.class);
      localIntent1.putExtra("VoiceSearchResultUI_Resultlist", paramArrayOfString);
      localIntent1.putExtra("VoiceSearchResultUI_VoiceId", paramLong);
      localIntent1.putExtra("VoiceSearchResultUI_ShowType", paramInt);
      aal().startActivity(localIntent1);
      return;
    }
    Intent localIntent2 = new Intent(aal(), VoiceSearchResultUI.class);
    localIntent2.putExtra("VoiceSearchResultUI_Resultlist", new String[0]);
    localIntent2.putExtra("VoiceSearchResultUI_Error", aal().getString(2131165276));
    localIntent2.putExtra("VoiceSearchResultUI_VoiceId", paramLong);
    localIntent2.putExtra("VoiceSearchResultUI_ShowType", paramInt);
    aal().startActivity(localIntent2);
  }

  protected final void aDG()
  {
    aa.i("MicroMsg.MainUI", "on tab create");
    long l = System.currentTimeMillis();
    setMenuVisibility(true);
    com.tencent.mm.model.be.ut().azz();
    this.gZk = new ds(f());
    FR();
    this.dio = false;
    this.gZp = false;
    this.gSJ = false;
    this.gpY = false;
    this.gZq = false;
    this.gZs = 0;
    this.gmg = new bh(this);
    this.ecl = new br(this);
    this.gZb.setSelection(0);
    this.wakeLock = ((PowerManager)aal().getSystemService("power")).newWakeLock(26, "My Lock");
    com.tencent.mm.model.be.uA().a(-1, this);
    af.vJ().d(this);
    com.tencent.mm.model.be.uz().a(this);
    com.tencent.mm.model.be.a(this.ecl);
    if (com.tencent.mm.platformtools.au.c((Integer)com.tencent.mm.model.be.uz().sr().get(15)) == 0)
    {
      this.dio = true;
      this.gZz = new com.tencent.mm.z.i(1, this);
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Long.valueOf(this.gZA.qh());
      arrayOfObject2[1] = Integer.valueOf(this.gZz.hashCode());
      aa.e("MicroMsg.MainUI", "dksord doInit t:%d initScene:%d", arrayOfObject2);
      this.gZA.reset();
      com.tencent.mm.model.be.uA().d(this.gZz);
      com.tencent.mm.sdk.platformtools.an.b(new bt(this), 2L);
    }
    while (true)
    {
      Looper.myQueue().addIdleHandler(this.gmg);
      com.tencent.mm.sdk.b.a.ayH().a("MainUITabDoubleClick", this.gZF);
      com.tencent.mm.model.be.P(false);
      com.tencent.mm.model.be.uz().sx().a(this.gZd);
      this.gZd.aLs();
      this.gZd.a(new av(this));
      if (this.flR == null)
        this.flR = new bp(this);
      com.tencent.mm.sdk.b.a.ayH().a("RePullEmojiInfoDesc", this.flR);
      ab.onCreate();
      Object[] arrayOfObject1 = new Object[4];
      arrayOfObject1[0] = Long.valueOf(com.tencent.mm.platformtools.au.N(l));
      arrayOfObject1[1] = Long.valueOf(this.gZA.qh());
      arrayOfObject1[2] = Integer.valueOf(com.tencent.mm.model.be.uz().sd());
      arrayOfObject1[3] = Integer.valueOf(com.tencent.mm.protocal.a.fxr);
      aa.d("MicroMsg.MainUI", "kevin mainUIOnCreate time:%d diff:%d uin:%d ver:%x", arrayOfObject1);
      this.gZb.postDelayed(new bn(this), 200L);
      return;
      com.tencent.mm.model.be.uz().su().a(this.gZd);
    }
  }

  protected final void aDH()
  {
    long l1 = com.tencent.mm.platformtools.au.FD();
    if (this.dio)
    {
      aa.d("MicroMsg.MainUI", "wakelock.acquire!");
      this.wakeLock.acquire();
    }
    if (this.gZE < 0)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.gZE);
      aa.e("MicroMsg.MainUI", "onTabResume totalUnReadCount %d", arrayOfObject);
      if (this.gZd != null)
        this.gZd.aLv();
    }
    aal();
    cl.aFn();
    aLF();
    long l2 = System.currentTimeMillis();
    this.gZm = new a(aal());
    this.gZl.a(this.gZm);
    this.gZl.a(new bm(this));
    aa.d("MicroMsg.MainUI", "KEVIN initTips: " + (System.currentTimeMillis() - l2));
    long l3 = System.currentTimeMillis();
    aLC();
    this.gSJ = com.tencent.mm.platformtools.au.c((Boolean)com.tencent.mm.model.be.uz().sr().get(12296));
    this.gZg.refresh();
    aa.d("MicroMsg.MainUI", "KEVIN bakBannerView : " + (System.currentTimeMillis() - l3) + ", show slide tips (" + this.gSJ + ")");
    LP();
    com.tencent.mm.model.be.uz().sr().a(this);
    if (com.tencent.mm.pluginsdk.h.apl() != null)
      com.tencent.mm.pluginsdk.h.apl().a(this);
    aa.v("MicroMsg.MainUI", "onResume");
    aa.d("TestTimeLayoutTime", "KEVIN mainui OnResume : " + (System.currentTimeMillis() - l1));
  }

  protected final void aDI()
  {
    aa.i("MicroMsg.MainUI", "on tab start");
    LP();
  }

  protected final void aDJ()
  {
    aa.i("MicroMsg.MainUI", "on tab pause");
    this.gZg.Iq();
    if ((this.dio) && (this.wakeLock.isHeld()))
    {
      aa.d("MicroMsg.MainUI", "wakelock.release!");
      this.wakeLock.release();
    }
    if (com.tencent.mm.model.be.se())
    {
      com.tencent.mm.model.be.uz().sr().b(this);
      aa.v("MicroMsg.MainUI", "on pause");
    }
    SM();
    if (com.tencent.mm.pluginsdk.h.apl() != null)
      com.tencent.mm.pluginsdk.h.apl().b(this);
    aLG();
    aa.v("MicroMsg.INIT", "KEVIN mainui onTabPause  ");
  }

  protected final void aDK()
  {
    aa.i("MicroMsg.MainUI", "on tab stop");
  }

  protected final void aDL()
  {
    aa.i("MicroMsg.MainUI", "on tab destory");
    com.tencent.mm.model.be.uA().b(-1, this);
    if (com.tencent.mm.model.be.se())
    {
      com.tencent.mm.model.be.uz().b(this);
      if (this.gZd != null)
      {
        com.tencent.mm.model.be.uz().sx().b(this.gZd);
        com.tencent.mm.model.be.uz().su().b(this.gZd);
      }
    }
    if (this.gZd != null)
    {
      this.gZd.aLt();
      this.gZd.aLr();
      this.gZd.onDestroy();
    }
    if (this.flR != null)
    {
      com.tencent.mm.sdk.b.a.ayH().b("RePullEmojiInfoDesc", this.flR);
      this.flR = null;
    }
    if (com.tencent.mm.model.be.se())
    {
      af.vJ().e(this);
      com.tencent.mm.platformtools.au.FG();
    }
    com.tencent.mm.model.be.b(this.ecl);
    if (this.gZh != null)
      this.gZh.release();
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if (this.gZa != null)
    {
      this.gZa.dismiss();
      this.gZa = null;
    }
    if (com.tencent.mm.model.be.nS() != null)
      com.tencent.mm.model.be.nS().b(this.edd);
    com.tencent.mm.sdk.b.a.ayH().b("MainUITabDoubleClick", this.gZF);
    if ((this.gZa != null) && (this.gZa.isShowing()))
      this.gZa.dismiss();
    if (this.gZB != null)
    {
      this.gZB.removeCallbacksAndMessages(null);
      this.gZB = null;
    }
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(com.tencent.mm.model.be.se());
    aa.d("MicroMsg.MainUI", "onTabDestroy  acc:%b", arrayOfObject);
  }

  public final void aDM()
  {
    d.a(this.gZb);
  }

  public final void aDN()
  {
    if (this.gZl != null)
      this.gZl.a(null);
    if (this.gZu != null)
      this.gZu.setBackgroundDrawable(null);
    if (this.gZg != null)
      this.gZg.setBackgroundDrawable(null);
    if (this.gZx != null)
      this.gZx.setImageDrawable(null);
    if (this.gZy != null)
      this.gZy.setImageDrawable(null);
    if (this.gZi != null)
      this.gZi.setBackgroundDrawable(null);
    if (this.gZf != null)
      this.gZf.setImageDrawable(null);
    if (this.gZw != null)
      this.gZw.destroyDrawingCache();
    if (this.gZh != null)
    {
      this.gZh.setBackgroundDrawable(null);
      this.gZh.arP();
    }
    aa.v("MicroMsg.INIT", "KEVIN mainui turnTobg");
  }

  public final void aDO()
  {
    aa.i("MicroMsg.MainUI", "turn to fg");
    if (this.gZl != null)
      this.gZl.a(this.gZm);
    if (this.gZg != null)
      this.gZg.setBackgroundDrawable(getResources().getDrawable(2130839555));
    if (this.gZx != null)
      this.gZx.setImageDrawable(getResources().getDrawable(2130837848));
    if (this.gZh != null)
      this.gZh.setBackgroundDrawable(getResources().getDrawable(2130839554));
    if (this.gZy != null)
      this.gZy.setImageDrawable(getResources().getDrawable(2130838931));
    if (this.gZv != null)
      this.gZv.setImageDrawable(getResources().getDrawable(2130837713));
    if (this.gZi != null)
      this.gZi.setBackgroundDrawable(getResources().getDrawable(2130839555));
    if (this.gZf != null)
      this.gZf.setImageDrawable(getResources().getDrawable(2130838902));
    aa.v("MicroMsg.INIT", "KEVIN mainui turnToFg");
  }

  protected final boolean aFq()
  {
    return true;
  }

  public final void aKs()
  {
    if (this.gZd != null)
      this.gZd.aKs();
  }

  public final void aLF()
  {
    if (this.gZd != null)
      this.gZd.onResume();
  }

  public final void aLG()
  {
    if (this.gZd != null)
      this.gZd.onPause();
  }

  public final void abb()
  {
    aa.v("MicroMsg.MainUI", "onVoiceSearchStart");
    SM();
  }

  public final void abc()
  {
    aa.v("MicroMsg.MainUI", "onVoiceSearchCancel");
  }

  public final void co(boolean paramBoolean)
  {
    aa.d("MicroMsg.MainUI", "visible " + paramBoolean);
    if (paramBoolean)
    {
      int i = this.gZb.getFirstVisiblePosition();
      aa.d("MicroMsg.MainUI", "getFirstVisiblePosition  " + i);
      if (i > 0)
        this.gZb.post(new bq(this));
    }
  }

  public final void ei(String paramString)
  {
    if ((com.tencent.mm.model.be.se()) && (!com.tencent.mm.model.be.uG()) && (com.tencent.mm.platformtools.au.hW(paramString).length() > 0) && (paramString.equals(v.th())))
      aLD();
  }

  protected final int getLayoutId()
  {
    return 2130903405;
  }

  public final void ig(String paramString)
  {
    aa.v("MicroMsg.MainUI", "onSearchChange");
    String str = com.tencent.mm.platformtools.au.hR(paramString);
    this.gpY = true;
    if (paramString.compareTo("") == 0)
      this.gZq = true;
    this.gZB.removeMessages(4660);
    if (this.gZq)
    {
      this.gZd.ih("");
      return;
    }
    Message localMessage = this.gZB.obtainMessage(4660, str);
    this.gZB.sendMessageDelayed(localMessage, 300L);
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    aLD();
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    com.tencent.mm.storage.i locali = com.tencent.mm.model.be.uz().su().tO(this.bNl);
    if (locali == null)
      aa.e("MicroMsg.MainUI", "onCreateContextMenu, contact is null, talker = " + this.bNl);
    AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo;
    while (true)
    {
      return;
      String str = locali.rr();
      if ((str.toLowerCase().endsWith("@chatroom")) && (com.tencent.mm.platformtools.au.hX(locali.kn())))
        str = getString(2131165739);
      localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
      paramContextMenu.setHeaderTitle(com.tencent.mm.ao.b.e(aal(), str, -1));
      if ((this.gXR != null) && (w.a(this.gXR)))
      {
        if (!com.tencent.mm.model.be.uz().sx().ud(this.bNl))
          break label210;
        paramContextMenu.add(localAdapterContextMenuInfo.position, 6, 0, 2131165607);
      }
      while ((this.gXR != null) && (this.gXR.rQ() != -1L))
      {
        if (!w.cC(this.bNl))
          break label230;
        paramContextMenu.add(localAdapterContextMenuInfo.position, 4, 0, 2131165588);
        return;
        label210: paramContextMenu.add(localAdapterContextMenuInfo.position, 5, 0, 2131165606);
      }
    }
    label230: if (w.cA(this.bNl))
    {
      paramContextMenu.add(localAdapterContextMenuInfo.position, 4, 0, 2131165589);
      return;
    }
    if (w.cB(this.bNl))
    {
      paramContextMenu.add(localAdapterContextMenuInfo.position, 4, 0, 2131165590);
      return;
    }
    paramContextMenu.add(localAdapterContextMenuInfo.position, 4, 0, 2131165586);
  }

  public final void onStart()
  {
    super.onStart();
  }

  public final void r(String paramString1, String paramString2, String paramString3)
  {
    this.gZd.notifyDataSetChanged();
  }

  public final void uf()
  {
    aLD();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.MainUI
 * JD-Core Version:    0.6.2
 */