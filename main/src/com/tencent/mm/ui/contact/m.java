package com.tencent.mm.ui.contact;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.g;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.LauncherUI;
import com.tencent.mm.ui.base.AlphabetScrollBar;
import com.tencent.mm.ui.base.cd;
import com.tencent.mm.ui.base.ek;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;
import com.tencent.mm.ui.cx;
import com.tencent.mm.ui.friend.f;
import com.tencent.mm.ui.tools.dg;
import com.tencent.mm.ui.voicesearch.VoiceSearchResultUI;
import com.tencent.mm.ui.voicesearch.j;
import java.util.LinkedList;
import java.util.List;

public class m extends com.tencent.mm.ui.a
  implements com.tencent.mm.n.m
{
  private ProgressDialog cIr = null;
  List cKz = new LinkedList();
  private String dKG;
  private AlphabetScrollBar dLK;
  private ek dLM = new r(this);
  private dg diX;
  private String gRX;
  private ListView gSA;
  private TextView gSB;
  private TextView gSC;
  private i gSD;
  private j gSE;
  private String gSF;
  private String gSG = "";
  private int gSH;
  private LinearLayout gSI = null;
  private boolean gSJ = false;
  private boolean gSK = false;
  private f gSL;
  private BizContactEntranceView gSM;
  private ChatroomContactEntranceView gSN;
  private ContactCountView gSO;
  private boolean gSP;
  private boolean gSQ = true;
  private Animation gSR;
  private Animation gSS;
  private cd gST = new q(this);
  List gSU = new LinkedList();
  com.tencent.mm.pluginsdk.ui.e goY = new com.tencent.mm.pluginsdk.ui.e(new s(this));
  private TextView gpX;
  private boolean gpY = false;

  private void aKs()
  {
    this.cKz = new LinkedList();
    this.gSU = new LinkedList();
    com.tencent.mm.ak.a.avr();
    this.gSU.addAll(this.cKz);
    if (!this.cKz.contains("officialaccounts"))
      this.cKz.add("officialaccounts");
    this.cKz.add("helper_entry");
    if (this.gSD != null)
      this.gSD.aB(this.cKz);
    if (this.gSE != null)
      this.gSE.aB(this.gSU);
  }

  private void aKt()
  {
    try
    {
      long l1 = System.currentTimeMillis();
      aKs();
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AddressUI", "KEVIN updateBlockList() LAST" + (System.currentTimeMillis() - l1));
      long l2 = System.currentTimeMillis();
      if (this.gSD != null)
      {
        com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.AddressUI", "post to do refresh");
        this.gSD.aKr();
      }
      if (this.gSE != null)
        an.i(new t(this));
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AddressUI", "KEVIN doRefresh() LAST" + (System.currentTimeMillis() - l2));
      return;
    }
    finally
    {
    }
  }

  protected final void FR()
  {
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.AddressUI", "on address ui init view");
    if (this.gSA != null)
    {
      if (this.gSL != null)
        this.gSA.removeHeaderView(this.gSL);
      if (this.gSM != null)
        this.gSA.removeHeaderView(this.gSM);
      if (this.gSN != null)
        this.gSA.removeHeaderView(this.gSN);
    }
    aFo();
    this.gSA = ((ListView)findViewById(2131361903));
    this.gSA.setScrollingCacheEnabled(false);
    this.gSB = ((TextView)findViewById(2131361905));
    this.gSB.setText(2131166182);
    this.gpX = ((TextView)findViewById(2131361904));
    this.gpX.setText(2131166183);
    this.gSC = ((TextView)findViewById(2131361907));
    this.gSC.setOnClickListener(new n(this));
    this.gSD = new i(aal(), this.dKG, this.gRX, this.gSH);
    this.gSA.setAdapter(null);
    this.gSD.a(new y(this));
    this.gSD.aKo();
    this.gSD.i(this);
    this.gSD.a(new aa(this));
    this.gSD.a(new ab(this));
    this.gSD.a(new ac(this));
    this.gSE = new j(aal(), 1);
    this.gSE.eB(true);
    this.gSL = new f(aal());
    this.gSA.addHeaderView(this.gSL);
    this.gSN = new ChatroomContactEntranceView(aal());
    this.gSA.addHeaderView(this.gSN);
    this.gSN.setVisible(true);
    ListView localListView = this.gSA;
    ContactCountView localContactCountView = new ContactCountView(aal());
    this.gSO = localContactCountView;
    localListView.addFooterView(localContactCountView, null, false);
    if (com.tencent.mm.ak.a.qc("brandservice"))
    {
      this.gSM = new BizContactEntranceView(aal());
      this.gSA.addHeaderView(this.gSM);
      this.gSM.setVisible(true);
    }
    this.diX = new dg(aal());
    this.gSD.a(new ad(this));
    this.gSA.setOnItemClickListener(new ae(this));
    this.gSA.setOnItemLongClickListener(new af(this));
    this.gSA.setOnTouchListener(new ag(this));
    this.gSA.setOnScrollListener(this.goY);
    this.gSA.setDrawingCacheEnabled(false);
    this.dLK = ((AlphabetScrollBar)findViewById(2131361906));
    this.dLK.a(this.dLM);
    c(getString(2131167700), new o(this));
    l(new p(this));
  }

  public final boolean FT()
  {
    return false;
  }

  public final void FU()
  {
    ig("");
    LauncherUI.aEA().da(true);
    if (this.gSC != null)
      this.gSC.setVisibility(8);
    if (this.gSL != null)
      this.gSL.setVisible(true);
    if (this.gSM != null)
      this.gSM.setVisible(true);
    if (this.gSN != null)
      this.gSN.setVisible(true);
    if (this.gSO != null)
      this.gSO.setVisible(true);
  }

  public final void FV()
  {
    com.tencent.mm.plugin.d.c.m.dZN.j(10919, "3");
    LauncherUI.aEA().da(false);
    if (this.gSC != null)
      this.gSC.setVisibility(0);
    if (this.gSL != null)
      this.gSL.setVisible(false);
    if (this.gSM != null)
      this.gSM.setVisible(false);
    if (this.gSN != null)
      this.gSN.setVisible(false);
    if (this.gSO != null)
      this.gSO.setVisible(false);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if (!au.ag(aal()));
    while ((cx.a(aal(), paramInt1, paramInt2, 4)) || (paramInt1 != 0) || (paramInt2 == 0))
      return;
  }

  public final void a(boolean paramBoolean, String[] paramArrayOfString, long paramLong, int paramInt)
  {
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.AddressUI", "onVoiceReturn");
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
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.AddressUI", "address ui on create");
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.AddressUI", "on address ui create");
    this.gSJ = false;
    this.gpY = false;
    this.gSK = false;
    this.dKG = null;
    this.gRX = null;
    this.gSF = null;
    be.uA().a(38, this);
    this.dKG = "@all.contact.without.chatroom";
    this.gRX = getStringExtra("Contact_GroupFilter_Str");
    this.gSF = getString(2131165185);
    this.gSH = getIntExtra("List_Type", 2);
    FR();
    be.uz().su().a(this.gSD);
  }

  protected final void aDH()
  {
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.AddressUI", "address ui on resume");
    if (this.gSQ)
    {
      this.gSQ = false;
      this.gSP = false;
      aKs();
      this.gSA.setAdapter(this.gSD);
      this.gSA.post(new u(this));
      this.gSE.eA(false);
    }
    while (true)
    {
      if (this.gSM != null)
        this.gSM.Qi();
      this.gSJ = ((Boolean)be.uz().sr().get(12296, Boolean.valueOf(false))).booleanValue();
      if (this.gSH == 2)
      {
        com.tencent.mm.storage.i locali = be.uz().su().tO(com.tencent.mm.model.v.th());
        if ((locali != null) && ((!locali.rb()) || (!au.hX(locali.ru())) || (!au.hX(locali.rw())) || (!au.hX(locali.rv()))))
        {
          locali.qI();
          locali.bH("");
          locali.bJ("");
          locali.bI("");
          be.uz().su().a(com.tencent.mm.model.v.th(), locali);
        }
      }
      if (this.gSE != null)
        this.gSE.onResume();
      this.gSD.aEd();
      an.i(new w(this));
      return;
      if (this.gSP)
      {
        this.gSP = false;
        new Thread(new v(this)).start();
        this.gSO.aKy();
      }
    }
  }

  protected final void aDI()
  {
  }

  protected final void aDJ()
  {
    be.uz().sr().set(12296, Boolean.valueOf(this.gSJ));
    if (this.gSE != null)
      this.gSE.onPause();
    this.gSD.aKq();
    an.i(new x(this));
  }

  protected final void aDK()
  {
  }

  protected final void aDL()
  {
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.AddressUI", "onDestory");
    if (this.dLK != null)
      this.dLK.aHU();
    be.uA().b(38, this);
    if (this.gSD != null)
    {
      this.gSD.closeCursor();
      this.gSD.detach();
      this.gSD.aDU();
    }
    if (this.gSE != null)
    {
      this.gSE.detach();
      this.gSE.closeCursor();
    }
    if ((be.se()) && (this.gSD != null))
      be.uz().su().b(this.gSD);
    if (this.gSL != null)
    {
      this.gSL.detach();
      this.gSL = null;
    }
    if (this.gSM != null)
      this.gSM = null;
    if (this.gSN != null)
      this.gSN = null;
  }

  public final void aDM()
  {
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.AddressUI", "request to top");
    if (this.gSA != null)
      g.a(this.gSA);
  }

  public final void aDN()
  {
    if (this.gSD != null)
      this.gSD.clearCache();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.INIT", "KEVIN Address turnTobg");
    if (this.gSM != null)
      this.gSM.destroyDrawingCache();
    if (this.gSN != null)
      this.gSN.destroyDrawingCache();
    if (this.gSO != null)
      this.gSO.destroyDrawingCache();
    if (this.gSL != null)
      this.gSL.destroyDrawingCache();
  }

  public final void aDO()
  {
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.INIT", "KEVIN Address turnTofg");
  }

  protected final boolean aFq()
  {
    return true;
  }

  public final com.tencent.mm.pluginsdk.ui.e aKu()
  {
    return this.goY;
  }

  public final void aKv()
  {
    this.gSP = true;
  }

  public final void abb()
  {
    SM();
  }

  public final void abc()
  {
  }

  public final void co(boolean paramBoolean)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AddressUI", "visible " + paramBoolean);
    if (paramBoolean)
    {
      int i = this.gSA.getFirstVisiblePosition();
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AddressUI", "getFirstVisiblePosition  " + i);
      if (i > 0)
        this.gSA.post(new z(this));
    }
  }

  public final void dQ(boolean paramBoolean)
  {
    if (this.dLK != null)
    {
      if (this.gSR == null)
      {
        this.gSR = AnimationUtils.loadAnimation(aal(), 2130968598);
        this.gSR.setDuration(200L);
      }
      if (this.gSS == null)
      {
        this.gSS = AnimationUtils.loadAnimation(aal(), 2130968598);
        this.gSS.setDuration(200L);
      }
      if (!paramBoolean)
        break label103;
      if (this.dLK.getVisibility() != 0)
      {
        this.dLK.setVisibility(0);
        this.dLK.startAnimation(this.gSR);
      }
    }
    label103: 
    while (4 == this.dLK.getVisibility())
      return;
    this.dLK.setVisibility(8);
    this.dLK.startAnimation(this.gSS);
  }

  protected final int getLayoutId()
  {
    return 2130903069;
  }

  public final void ig(String paramString)
  {
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.AddressUI", "onSearchBarChange %s", new Object[] { paramString });
    String str = au.hR(paramString);
    this.gpY = true;
    i locali = this.gSD;
    boolean bool;
    if (!au.hX(paramString))
    {
      bool = true;
      locali.dP(bool);
      if (!this.gSK)
        break label99;
      this.gSE.eA(false);
      if ((str != null) && (str.trim().length() == 0))
        this.gSD.dP(false);
      this.gSD.wH(str);
    }
    label99: 
    do
    {
      do
      {
        return;
        bool = false;
        break;
        if ((str != null) && (str.length() != 0))
          break label175;
        if (this.dLK != null)
          this.dLK.setVisibility(0);
        this.gSA.setAdapter(this.gSD);
        this.gSD.notifyDataSetChanged();
        this.gSE.eA(false);
        this.gSD.wH(str);
      }
      while (this.gSC == null);
      this.gSC.setVisibility(0);
      return;
      if (this.dLK != null)
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AddressUI", "do query");
        this.dLK.setVisibility(8);
      }
      this.gSD.clearCache();
      this.gSA.setAdapter(this.gSE);
      this.gSE.eA(true);
      this.gSE.ih(str);
      this.gSE.notifyDataSetChanged();
    }
    while (this.gSC == null);
    label175: this.gSC.setVisibility(8);
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AddressUI", "onAcvityResult requestCode: %d", arrayOfObject);
    if ((paramInt1 == 6) && (paramInt2 == -1))
    {
      aEo();
      finish();
    }
    while (paramInt2 != -1)
      return;
    switch (paramInt1)
    {
    default:
      return;
    case 4:
    }
    r(paramIntent);
    finish();
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
    com.tencent.mm.storage.i locali = be.uz().su().tO(this.gSG);
    if (locali == null)
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.AddressUI", "onCreateContextMenu, contact is null, username = " + this.gSG);
    do
    {
      do
        return;
      while (com.tencent.mm.model.v.th().equals(locali.getUsername()));
      if (com.tencent.mm.model.w.cr(this.gSG))
      {
        paramContextMenu.setHeaderTitle(com.tencent.mm.ao.b.e(paramView.getContext(), locali.rr(), -1));
        paramContextMenu.add(localAdapterContextMenuInfo.position, 2, 0, 2131166181);
        return;
      }
    }
    while (com.tencent.mm.model.w.cH(this.gSG));
    paramContextMenu.setHeaderTitle(com.tencent.mm.ao.b.e(paramView.getContext(), locali.rr(), -1));
    paramContextMenu.add(localAdapterContextMenuInfo.position, 1, 0, 2131166180);
  }

  public final void wI(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0));
    Intent localIntent;
    do
    {
      return;
      if (com.tencent.mm.model.w.cT(paramString))
      {
        com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.AddressUI", "error, 4.5 do not contain this contact %s", new Object[] { paramString });
        return;
      }
      localIntent = new Intent();
      localIntent.setClass(aal(), ContactInfoUI.class);
      localIntent.putExtra("Contact_User", paramString);
      if (com.tencent.mm.model.w.cr(paramString))
        localIntent.putExtra("Is_group_card", true);
    }
    while ((paramString == null) || (paramString.length() <= 0));
    bh.b(localIntent, paramString);
    startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.m
 * JD-Core Version:    0.6.2
 */