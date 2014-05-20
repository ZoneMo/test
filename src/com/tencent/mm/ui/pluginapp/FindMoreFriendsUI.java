package com.tencent.mm.ui.pluginapp;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.CheckBox;
import com.tencent.mm.ah.j;
import com.tencent.mm.ah.k;
import com.tencent.mm.c.a.da;
import com.tencent.mm.c.a.dc;
import com.tencent.mm.c.a.fe;
import com.tencent.mm.c.a.hl;
import com.tencent.mm.e.d;
import com.tencent.mm.i.c;
import com.tencent.mm.i.i;
import com.tencent.mm.model.az;
import com.tencent.mm.model.ba;
import com.tencent.mm.model.be;
import com.tencent.mm.model.co;
import com.tencent.mm.model.v;
import com.tencent.mm.modelfriend.ab;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.pluginsdk.ag;
import com.tencent.mm.pluginsdk.aq;
import com.tencent.mm.protocal.a.uj;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.e.al;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.LauncherUI;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.account.FacebookFriendUI;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.ui.base.preference.IconPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.bindgooglecontact.BindGoogleContactIntroUI;
import com.tencent.mm.ui.bindgooglecontact.GoogleFriendUI;
import com.tencent.mm.ui.bindmobile.BindMContactIntroUI;
import com.tencent.mm.ui.bindmobile.MobileFriendUI;
import com.tencent.mm.ui.bindqq.QQGroupUI;
import com.tencent.mm.ui.friend.FriendSnsPreference;

public class FindMoreFriendsUI extends com.tencent.mm.ui.b
  implements az, ba, al, ar
{
  private n cIG;
  private CheckBox dMh;
  private com.tencent.mm.ui.base.x dMj = null;
  private com.tencent.mm.pluginsdk.c.a fry = new p(this);
  private c gmd = new r(this);
  private View hdl;
  private boolean hdm = false;
  private String hdn = "";
  private int hdo = 0;
  private com.tencent.mm.pluginsdk.c.a hdp = new q(this);

  private void aLX()
  {
    if (!com.tencent.mm.ak.a.qc("emoji"))
      this.cIG.O("settings_emoji_store", true);
    boolean bool1;
    boolean bool2;
    IconPreference localIconPreference;
    do
    {
      return;
      this.cIG.O("settings_emoji_store", false);
      bool1 = i.rX().x(262147, 266244);
      bool2 = i.rX().x(262149, 266244);
      localIconPreference = (IconPreference)this.cIG.wn("settings_emoji_store");
    }
    while (localIconPreference == null);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Boolean.valueOf(bool1);
    arrayOfObject[1] = Boolean.valueOf(bool2);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.FindMoreFriendsUI", "NewBandage.hasNew(), NEW_BANDAGE_WATCHER_SETTING_EMOJI_ENTRY isNewEmoji : %s, isFreeEmoji : %s", arrayOfObject);
    if (bool2)
    {
      localIconPreference.np(0);
      localIconPreference.aq(getString(2131167731), 2130838937);
      return;
    }
    if (bool1)
    {
      localIconPreference.np(0);
      localIconPreference.aq(getString(2131167730), 2130838937);
      return;
    }
    localIconPreference.np(8);
    localIconPreference.aq("", -1);
  }

  private void aLY()
  {
    boolean bool1 = true;
    Object localObject1;
    String str1;
    boolean bool3;
    label34: n localn2;
    String str2;
    boolean bool5;
    label89: label100: Object localObject2;
    String str3;
    boolean bool7;
    label121: boolean bool10;
    label132: label152: label172: label192: label215: boolean bool11;
    label233: n localn5;
    if (!com.tencent.mm.ak.a.qc("sns"))
    {
      localObject1 = this.cIG;
      str1 = "album_dyna_photo_ui_title";
      bool3 = bool1;
      ((n)localObject1).O(str1, bool3);
      if ((IconPreference)this.cIG.wn("add_more_friends") != null)
        this.cIG.O("add_more_friends", d.qB().qs());
      if (com.tencent.mm.ak.a.qc("nearby"))
        break label607;
      localn2 = this.cIG;
      str2 = "find_friends_by_near";
      bool5 = bool1;
      localn2.O(str2, bool5);
      if (com.tencent.mm.ak.a.qc("shake"))
        break label806;
      localObject2 = this.cIG;
      str3 = "find_friends_by_shake";
      bool7 = bool1;
      ((n)localObject2).O(str3, bool7);
      if (com.tencent.mm.ak.a.qc("bottle"))
        break label996;
      this.cIG.O("voice_bottle", bool1);
      if (com.tencent.mm.ak.a.qc("game"))
        break label1170;
      this.cIG.O("more_tab_game_recommend", bool1);
      if (com.tencent.mm.ak.a.qc("scanner"))
        break label1228;
      this.cIG.O("find_friends_by_qrcode", bool1);
      if (com.tencent.mm.sdk.platformtools.cj.c((Integer)be.uz().sr().get(9)) == 0)
        break label1243;
      bool10 = bool1;
      if ((bool10) && ((0x1000 & v.tq()) == 0))
        break label1249;
      bool11 = bool1;
      this.cIG.O("find_friends_by_qq", bool11);
      com.tencent.mm.x.b.Bg();
      this.cIG.O("find_friends_by_facebook", bool1);
      localn5 = this.cIG;
      if (com.tencent.mm.sdk.platformtools.cj.Bj())
        break label1255;
    }
    while (true)
    {
      localn5.O("find_friends_by_google_account", bool1);
      this.cIG.notifyDataSetChanged();
      return;
      this.cIG.O("album_dyna_photo_ui_title", false);
      FriendSnsPreference localFriendSnsPreference = (FriendSnsPreference)this.cIG.wn("album_dyna_photo_ui_title");
      if (localFriendSnsPreference == null)
        break label34;
      boolean bool2;
      label336: int n;
      if ((0x8000 & v.tq()) == 0)
      {
        bool2 = bool1;
        if (bool2)
        {
          localFriendSnsPreference.setIconDrawable(com.tencent.mm.an.a.k(aal(), 2130838534));
          boolean bool12 = com.tencent.mm.sdk.platformtools.cj.c((Boolean)be.uz().sr().get(48));
          localFriendSnsPreference.np(8);
          localFriendSnsPreference.nP(8);
          if (bool12)
          {
            localFriendSnsPreference.np(0);
            localFriendSnsPreference.aq(getString(2131167730), 2130838937);
          }
          this.hdn = ((String)be.uz().sr().get(68377));
          if (com.tencent.mm.sdk.platformtools.cj.hX(this.hdn))
            break label584;
          localFriendSnsPreference.nr(0);
          if (!com.tencent.mm.sdk.platformtools.cj.a((Boolean)be.uz().sr().get(68384), bool1))
            break label577;
          n = 0;
          label464: localFriendSnsPreference.nP(n);
          localFriendSnsPreference.xm(this.hdn);
        }
      }
      n localn1;
      while (true)
      {
        if (aq.apA() != null)
          this.hdo = aq.apA().Dr();
        if (this.hdo != 0)
        {
          localFriendSnsPreference.np(0);
          localFriendSnsPreference.aq(this.hdo, 2130839580);
        }
        com.tencent.mm.sdk.b.a.ayH().f(new hl());
        localn1 = this.cIG;
        if (bool2)
          break label593;
        localObject1 = localn1;
        str1 = "album_dyna_photo_ui_title";
        bool3 = bool1;
        break;
        bool2 = false;
        break label336;
        label577: n = 8;
        break label464;
        label584: localFriendSnsPreference.nr(8);
      }
      label593: localObject1 = localn1;
      str1 = "album_dyna_photo_ui_title";
      bool3 = false;
      break;
      label607: this.cIG.O("find_friends_by_near", false);
      IconPreference localIconPreference1 = (IconPreference)this.cIG.wn("find_friends_by_near");
      if (localIconPreference1 == null)
        break label100;
      da localda = new da();
      localda.bOb.bOd = 7;
      com.tencent.mm.sdk.b.a.ayH().f(localda);
      if (localda.bOc.bMh)
      {
        localIconPreference1.nr(8);
        label688: int i = k.Dz().Dr();
        if (i <= 0)
          break label776;
        localIconPreference1.np(0);
        localIconPreference1.aq(String.valueOf(i), 2130839580);
        label720: if ((0x200 & v.tq()) != 0)
          break label794;
      }
      label776: label794: for (boolean bool4 = bool1; ; bool4 = false)
      {
        localn2 = this.cIG;
        str2 = "find_friends_by_near";
        if (bool4)
          break label800;
        bool5 = bool1;
        break;
        localIconPreference1.nr(0);
        localIconPreference1.nq(2130838825);
        localIconPreference1.aIc();
        break label688;
        localIconPreference1.np(8);
        localIconPreference1.aq("", -1);
        break label720;
      }
      label800: bool5 = false;
      break label89;
      label806: this.cIG.O("find_friends_by_shake", false);
      IconPreference localIconPreference2 = (IconPreference)this.cIG.wn("find_friends_by_shake");
      if (localIconPreference2 == null)
        break label132;
      boolean bool6;
      if ((0x100 & v.tq()) == 0)
      {
        bool6 = bool1;
        label852: if (bool6)
        {
          int m = k.DA().Dr();
          if (m <= 0)
            break label954;
          localIconPreference2.np(0);
          localIconPreference2.aq(String.valueOf(m), 2130839580);
          label889: if ((!be.se()) || (!be.uz().sn()))
            break label972;
          localIconPreference2.nr(0);
          localIconPreference2.nq(2130839273);
          localIconPreference2.aIc();
        }
      }
      n localn3;
      while (true)
      {
        localn3 = this.cIG;
        if (bool6)
          break label982;
        localObject2 = localn3;
        str3 = "find_friends_by_shake";
        bool7 = bool1;
        break;
        bool6 = false;
        break label852;
        label954: localIconPreference2.np(8);
        localIconPreference2.aq("", -1);
        break label889;
        label972: localIconPreference2.nr(8);
      }
      label982: localObject2 = localn3;
      str3 = "find_friends_by_shake";
      bool7 = false;
      break label121;
      label996: this.cIG.O("voice_bottle", false);
      if ((IconPreference)this.cIG.wn("voice_bottle") == null)
        break label152;
      boolean bool8;
      label1037: n localn4;
      if ((0x40 & v.tq()) == 0)
      {
        bool8 = bool1;
        this.hdm = bool8;
        localn4 = this.cIG;
        if (this.hdm)
          break label1154;
      }
      IconPreference localIconPreference3;
      label1154: for (boolean bool9 = bool1; ; bool9 = false)
      {
        localn4.O("voice_bottle", bool9);
        if (!this.hdm)
          break;
        localIconPreference3 = (IconPreference)this.cIG.wn("voice_bottle");
        if (localIconPreference3 == null)
          break;
        int j = com.tencent.mm.model.x.tU();
        if (j > 0)
          localIconPreference3.aq(String.valueOf(j), 2130839580);
        int k = v.tl();
        if ((j <= 0) || ((0x8000 & k) != 0))
          break label1160;
        localIconPreference3.np(0);
        break;
        bool8 = false;
        break label1037;
      }
      label1160: localIconPreference3.np(8);
      break label152;
      label1170: this.cIG.O("more_tab_game_recommend", false);
      ag localag = com.tencent.mm.pluginsdk.h.apq();
      if (localag == null)
        break label172;
      if (!localag.az(aal()))
      {
        this.cIG.O("more_tab_game_recommend", bool1);
        break label172;
      }
      aLZ();
      break label172;
      label1228: this.cIG.O("find_friends_by_qrcode", false);
      break label192;
      label1243: bool10 = false;
      break label215;
      label1249: bool11 = false;
      break label233;
      label1255: bool1 = false;
    }
  }

  private void aLZ()
  {
    ag localag = com.tencent.mm.pluginsdk.h.apq();
    if (localag == null)
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.FindMoreFriendsUI", "get subcoregamecenter is null ,return");
    int i;
    int j;
    IconPreference localIconPreference;
    do
    {
      return;
      i = localag.Pd();
      j = localag.Pe();
      localIconPreference = (IconPreference)this.cIG.wn("more_tab_game_recommend");
    }
    while (localIconPreference == null);
    if (j > 0)
    {
      localIconPreference.aq(getString(2131167730), 2130838937);
      localIconPreference.np(0);
      return;
    }
    if (i > 0)
    {
      localIconPreference.aq("", 2130839581);
      localIconPreference.np(0);
      return;
    }
    localIconPreference.np(8);
    localIconPreference.aq("", -1);
    com.tencent.mm.c.a.cj localcj = new com.tencent.mm.c.a.cj();
    localcj.bNM.bNN = false;
    com.tencent.mm.sdk.b.a.ayH().f(localcj);
  }

  protected final void FR()
  {
    aFo();
    this.cIG = aIj();
  }

  public final int Gc()
  {
    com.tencent.mm.ak.a.avr();
    return 2131034152;
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    aLY();
  }

  public final void a(uj paramuj)
  {
    if ((0x8000 & v.tq()) != 0)
      return;
    this.hdo = (1 + this.hdo);
    aLY();
  }

  protected final void aDG()
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.FindMoreFriendsUI", "on tab create");
    FR();
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.FindMoreFriendsUI", "on tab create end");
  }

  protected final void aDH()
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.FindMoreFriendsUI", "on tab resume");
    i.rX().a(this.gmd);
    com.tencent.mm.pluginsdk.c.a.a("LBSVerifyStorageNotify", this.fry);
    com.tencent.mm.pluginsdk.c.a.a("GameMessageStorageNotify", this.hdp);
    k.DA().e(this);
    be.uz().sx().a(this);
    be.uz().a(this);
    if (aq.apC() != null)
      aq.apC().a(this);
    aLX();
    if (!com.tencent.mm.ak.a.qc("card"))
      this.cIG.O("settings_mm_card_package", true);
    while (true)
    {
      aLY();
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.FindMoreFriendsUI", "on tab resume end");
      View localView = findViewById(2131363964);
      if ((localView != null) && (localView.getVisibility() != 8))
        new Handler(Looper.getMainLooper()).post(new u(this, localView));
      return;
      this.cIG.O("settings_mm_card_package", false);
    }
  }

  protected final void aDI()
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.FindMoreFriendsUI", "on tab start");
  }

  protected final void aDJ()
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.FindMoreFriendsUI", "on tab pause");
    if (be.se())
    {
      com.tencent.mm.pluginsdk.c.a.b("LBSVerifyStorageNotify", this.fry);
      com.tencent.mm.pluginsdk.c.a.b("GameMessageStorageNotify", this.hdp);
      k.DA().f(this);
      be.uz().sx().b(this);
      be.uz().b(this);
      i.rX().b(this.gmd);
    }
    if (aq.apC() != null)
      aq.apC().b(this);
  }

  protected final void aDK()
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.FindMoreFriendsUI", "on tab stop");
  }

  protected final void aDL()
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.FindMoreFriendsUI", "on tab destroy");
  }

  public final void aDN()
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.FindMoreFriendsUI", "turn to bg");
    if (this.cIG != null)
      this.cIG.removeAll();
    arP();
  }

  public final void aDO()
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.FindMoreFriendsUI", "turn to fg");
    if (this.cIG != null)
      this.cIG.addPreferencesFromResource(2131034152);
    aIo();
  }

  public final void aDQ()
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.FindMoreFriendsUI", "on tab recreate ui");
  }

  protected final boolean aFq()
  {
    return true;
  }

  public final void ca(String paramString)
  {
    aLY();
  }

  public final boolean f(Preference paramPreference)
  {
    Intent localIntent4;
    if ("album_dyna_photo_ui_title".equals(paramPreference.getKey()))
    {
      if (!be.uz().isSDCardAvailable())
      {
        dn.bW(aal());
        return true;
      }
      m.dZN.hx(10);
      this.hdn = ((String)be.uz().sr().get(68377));
      be.uz().sr().set(68377, "");
      localIntent4 = new Intent();
      localIntent4.putExtra("sns_timeline_NeedFirstLoadint", true);
      if (com.tencent.mm.sdk.platformtools.cj.hX(this.hdn))
        break label1168;
    }
    label1168: for (boolean bool1 = false; ; bool1 = true)
    {
      boolean bool2;
      if (aq.apA() != null)
      {
        this.hdo = aq.apA().Dr();
        int j = this.hdo;
        bool2 = false;
        if (j <= 0);
      }
      while (true)
      {
        localIntent4.putExtra("sns_resume_state", bool2);
        com.tencent.mm.ak.a.b(aal(), "sns", ".ui.SnsTimeLineUI", localIntent4);
        m.dZN.j(10958, "1");
        return true;
        bool2 = bool1;
        continue;
        if ("add_more_friends".equals(paramPreference.getKey()))
        {
          startActivity(new Intent(aal(), AddMoreFriendsUI.class));
          m.dZN.j(10240, "1");
          return true;
        }
        if ("find_friends_by_near".equals(paramPreference.getKey()))
        {
          m.dZN.j(10958, "4");
          if (!com.tencent.mm.sdk.platformtools.cj.c((Boolean)be.uz().sr().get(4103)))
          {
            com.tencent.mm.ak.a.l(aal(), "nearby", ".ui.NearbyFriendsIntroUI");
            return true;
          }
          co localco2 = co.vx();
          if (localco2 == null)
          {
            com.tencent.mm.ak.a.l(aal(), "nearby", ".ui.NearbyPersonalInfoUI");
            return true;
          }
          String str = com.tencent.mm.sdk.platformtools.cj.hW(localco2.rC());
          int i = com.tencent.mm.sdk.platformtools.cj.a(Integer.valueOf(localco2.rk()), 0);
          if ((com.tencent.mm.sdk.platformtools.cj.hX(str)) || (i == 0))
          {
            com.tencent.mm.ak.a.l(aal(), "nearby", ".ui.NearbyPersonalInfoUI");
            return true;
          }
          Boolean localBoolean = (Boolean)be.uz().sr().get(4104);
          if ((localBoolean == null) || (!localBoolean.booleanValue()))
          {
            LauncherUI.aEA().vS("tab_find_friend");
            if (k.Dz().Dr() > 0)
            {
              com.tencent.mm.ak.a.l(aal(), "nearby", ".ui.NearbyFriendShowSayHiUI");
              return true;
            }
            com.tencent.mm.ak.a.l(aal(), "nearby", ".ui.NearbyFriendsUI");
            return true;
          }
          if (this.hdl == null)
          {
            this.hdl = View.inflate(aal(), 2130903383, null);
            this.dMh = ((CheckBox)this.hdl.findViewById(2131362893));
            this.dMh.setChecked(false);
          }
          if (this.dMj == null)
          {
            this.dMj = com.tencent.mm.ui.base.h.a(aal(), getString(2131167675), this.hdl, new t(this), null);
            return true;
          }
          this.dMj.show();
          return true;
        }
        if ("find_friends_by_shake".equals(paramPreference.getKey()))
        {
          m.dZN.j(10958, "3");
          com.tencent.mm.sdk.b.a.ayH().f(new fe());
          com.tencent.mm.ak.a.l(aal(), "shake", ".ui.ShakeReportUI");
          return true;
        }
        if ("voice_bottle".equals(paramPreference.getKey()))
        {
          m.dZN.j(10958, "5");
          co localco1 = co.vw();
          if ((com.tencent.mm.sdk.platformtools.cj.a(Integer.valueOf(localco1.rk()), 0) <= 0) || (com.tencent.mm.sdk.platformtools.cj.hX(localco1.rC())))
          {
            com.tencent.mm.ak.a.l(aal(), "bottle", ".ui.BottleWizardStep1");
            return true;
          }
          com.tencent.mm.ak.a.l(aal(), "bottle", ".ui.BottleBeachUI");
          return true;
        }
        if ("find_friends_by_qrcode".equals(paramPreference.getKey()))
        {
          m.dZN.j(10958, "2");
          com.tencent.mm.ak.a.l(aal(), "scanner", ".ui.BaseScanUI");
          return true;
        }
        if (paramPreference.getKey().equals("more_tab_game_recommend"))
        {
          m.dZN.j(10958, "6");
          if (!be.uz().isSDCardAvailable())
          {
            dn.bW(aal());
            return true;
          }
          com.tencent.mm.ak.a.l(aal(), "game", ".ui.GameCenterUI");
          ag localag = com.tencent.mm.pluginsdk.h.apq();
          if (localag != null)
            localag.Po();
          new Handler().postDelayed(new s(this), 100L);
          return true;
        }
        if ("find_friends_by_micromsg".equals(paramPreference.getKey()))
        {
          startActivity(new Intent(aal(), ContactSearchUI.class));
          return true;
        }
        if ("find_friends_by_qq".equals(paramPreference.getKey()))
        {
          startActivity(new Intent(aal(), QQGroupUI.class));
          return true;
        }
        if ("find_friends_by_mobile".equals(paramPreference.getKey()))
        {
          if (z.zp() != com.tencent.mm.modelfriend.aa.crc)
          {
            MMWizardActivity.j(aal(), new Intent(aal(), BindMContactIntroUI.class));
            return true;
          }
          startActivity(new Intent(aal(), MobileFriendUI.class));
          return true;
        }
        if ("find_friends_by_facebook".equals(paramPreference.getKey()))
        {
          startActivity(new Intent(aal(), FacebookFriendUI.class));
          return true;
        }
        if ("find_friends_by_google_account".equals(paramPreference.getKey()))
        {
          aal();
          if (!ab.zy())
          {
            Intent localIntent2 = new Intent(aal(), BindGoogleContactIntroUI.class);
            localIntent2.putExtra("enter_scene", 1);
            MMWizardActivity.j(aal(), localIntent2);
            return true;
          }
          Intent localIntent3 = new Intent(aal(), GoogleFriendUI.class);
          localIntent3.putExtra("enter_scene", 1);
          startActivity(localIntent3);
          return true;
        }
        if ("settings_mm_card_package".equals(paramPreference.getKey()))
        {
          com.tencent.mm.ak.a.l(aal(), "card", ".ui.CardIndexUI");
          return true;
        }
        if (paramPreference.getKey().equals("settings_emoji_store"))
        {
          m.dZN.j(10958, "7");
          i.rX().y(262147, 266244);
          i.rX().y(262149, 266244);
          Intent localIntent1 = new Intent();
          localIntent1.putExtra("preceding_scence", 2);
          com.tencent.mm.ak.a.b(aal(), "emoji", ".ui.EmojiStoreUI", localIntent1);
          return true;
        }
        return false;
        bool2 = bool1;
      }
    }
  }

  public final void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.FindMoreFriendsUI", "onActivityCreated");
    this.cIG = aIj();
  }

  public final void ue()
  {
    if ((0x8000 & v.tq()) != 0)
      return;
    aLY();
  }

  public final void uf()
  {
    if (this.cIG == null)
      return;
    aLY();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.pluginapp.FindMoreFriendsUI
 * JD-Core Version:    0.6.2
 */