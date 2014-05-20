package com.tencent.mm.ui.contact.profile;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Looper;
import android.text.TextUtils;
import com.tencent.mm.e.c;
import com.tencent.mm.e.d;
import com.tencent.mm.model.ar;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.modelfriend.aw;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.aq;
import com.tencent.mm.pluginsdk.model.j;
import com.tencent.mm.pluginsdk.ui.preference.NormalUserHeaderPreference;
import com.tencent.mm.pluginsdk.y;
import com.tencent.mm.pluginsdk.z;
import com.tencent.mm.protocal.a.vp;
import com.tencent.mm.sdk.e.am;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.KeyValuePreference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.base.preference.o;
import com.tencent.mm.ui.contact.ContactRemarkInfoViewUI;
import com.tencent.mm.ui.contact.FriendPreference;
import com.tencent.mm.ui.contact.RemarkInfoPreference;
import java.util.List;
import junit.framework.Assert;

public final class ay
  implements m, com.tencent.mm.pluginsdk.b.a, z
{
  private int bNc = 0;
  private Activity bOt;
  private n cIG;
  private i cQI;
  private boolean dNx;
  private String dsv;
  private int edN;
  private String frx;
  private boolean fsh;
  private boolean fst = false;
  private boolean gVU;
  private boolean gWA = false;
  private String gWB;
  private boolean gWC;
  private boolean gWD = false;
  private int gWq;
  private vp gWw = new vp();
  private String gWx = "";
  private int gWy = -1;
  private boolean gWz = false;

  public ay(Activity paramActivity)
  {
    this.bOt = paramActivity;
  }

  private void aLc()
  {
    Ji();
    this.cIG.removeAll();
    this.cIG.addPreferencesFromResource(2131034132);
    if (aq.apD() != null)
      aq.apD().a(3, this.cQI.getUsername(), this);
    be.uA().a(30, this);
    NormalUserHeaderPreference localNormalUserHeaderPreference = (NormalUserHeaderPreference)this.cIG.wn("contact_info_header_normal");
    String str5;
    label209: label230: RemarkInfoPreference localRemarkInfoPreference;
    label326: label460: int i;
    label564: label576: label635: FriendPreference localFriendPreference1;
    label701: label858: FriendPreference localFriendPreference2;
    label953: int k;
    label968: KeyValuePreference localKeyValuePreference3;
    label1053: KeyValuePreference localKeyValuePreference4;
    label1178: label1436: NormalUserFooterPreference localNormalUserFooterPreference;
    if (localNormalUserHeaderPreference != null)
    {
      localNormalUserHeaderPreference.a(this.cQI, this.edN, this.frx);
      localNormalUserHeaderPreference.I(this.cQI.getUsername(), this.gWz);
      localNormalUserHeaderPreference.J(this.cQI.getUsername(), this.gWA);
      if (au.hX(this.cQI.rC()))
        break label1707;
      KeyValuePreference localKeyValuePreference9 = (KeyValuePreference)this.cIG.wn("contact_info_district");
      if (localKeyValuePreference9 != null)
      {
        localKeyValuePreference9.setTitle(this.bOt.getString(2131166315));
        StringBuilder localStringBuilder2 = new StringBuilder().append(w.dj(this.cQI.rC()));
        if (!au.hX(this.cQI.rD()))
          break label1679;
        str5 = "";
        localKeyValuePreference9.setSummary(str5);
        localKeyValuePreference9.dC(false);
      }
      if ((this.cQI.rB() == null) || (this.cQI.rB().trim().equals("")))
        break label1722;
      KeyValuePreference localKeyValuePreference8 = (KeyValuePreference)this.cIG.wn("contact_info_signature");
      if (localKeyValuePreference8 != null)
      {
        localKeyValuePreference8.dB(false);
        localKeyValuePreference8.setTitle(this.bOt.getString(2131166317));
        localKeyValuePreference8.setSummary(com.tencent.mm.ao.b.e(this.bOt, this.cQI.rB(), -2));
        localKeyValuePreference8.dC(false);
      }
      if ((!w.p(this.cQI)) || (this.cQI.rG() == null) || (this.cQI.rG().equals("")))
        break label1737;
      KeyValuePreference localKeyValuePreference7 = (KeyValuePreference)this.cIG.wn("contact_info_weibo");
      if (localKeyValuePreference7 != null)
      {
        StringBuilder localStringBuilder1 = new StringBuilder().append(au.R(this.cQI.rI(), ""));
        Activity localActivity = this.bOt;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = w.di(this.cQI.rG());
        localKeyValuePreference7.setSummary(localActivity.getString(2131165841, arrayOfObject));
        localKeyValuePreference7.dC(false);
      }
      if ((au.hX(this.cQI.bUk)) && (au.hX(this.cQI.bUj)))
        break label1770;
      localRemarkInfoPreference = (RemarkInfoPreference)this.cIG.wn("contact_info_remarkinfo");
      if (localRemarkInfoPreference != null)
      {
        if (!au.hX(this.cQI.bUk))
          localRemarkInfoPreference.aKQ();
        localRemarkInfoPreference.setTitle(this.bOt.getString(2131166232));
        if (au.hX(this.cQI.bUj))
          break label1752;
        localRemarkInfoPreference.lg(this.cQI.bUj);
      }
      this.cIG.O("contact_info_remarkinfo", false);
      this.cIG.wn("contact_info_facebook");
      this.cIG.wo("contact_info_facebook");
      String str1 = d.qA().getValue("LinkedinPluginClose");
      if ((!au.hX(str1)) && (Integer.valueOf(str1).intValue() != 0))
        break label1785;
      i = 1;
      if ((i == 0) || (au.hX(this.cQI.bUl)))
        break label1791;
      KeyValuePreference localKeyValuePreference6 = (KeyValuePreference)this.cIG.wn("contact_info_linkedin");
      localKeyValuePreference6.setSummary(this.cQI.bUm);
      localKeyValuePreference6.dC(false);
      this.cIG.O("contact_info_linkedin", false);
      int j = au.c((Integer)be.uz().sr().get(9));
      long l1 = this.bOt.getIntent().getLongExtra("Contact_Uin", 0L);
      String str2 = this.bOt.getIntent().getStringExtra("Contact_QQNick");
      localFriendPreference1 = (FriendPreference)this.cIG.wn("contact_info_friend_qq");
      if ((l1 == 0L) || (j == 0))
        break label1807;
      if ((str2 == null) || (str2.length() == 0))
      {
        com.tencent.mm.modelfriend.av localav = ax.Aq().C(l1);
        if (localav == null)
          localav = null;
        if (localav != null)
          str2 = localav.getDisplayName();
      }
      if ((localFriendPreference1 != null) && (!localFriendPreference1.a(this.cQI, null, null, l1, str2)))
        this.cIG.c(localFriendPreference1);
      String str3 = this.bOt.getIntent().getStringExtra("Contact_Mobile_MD5");
      String str4 = this.bOt.getIntent().getStringExtra("Contact_full_Mobile_MD5");
      localFriendPreference2 = (FriendPreference)this.cIG.wn("contact_info_friend_mobile");
      if ((str3 == null) || (str3.length() <= 0))
        break label1830;
      if (localFriendPreference2 != null)
      {
        if (localFriendPreference2.a(this.cQI, str3, str4, 0L, null))
          break label1822;
        this.cIG.c(localFriendPreference2);
      }
      if ((0x1 & this.gWw.cqz) <= 0)
        break label1845;
      k = 1;
      if (((k & com.tencent.mm.ak.a.qc("sns")) == 0) || (i.tz(this.cQI.getUsername())) || (this.cQI.rd()))
        break label1851;
      o localo = (o)this.cIG.wn("contact_info_sns");
      if ((localo != null) && (aq.apz() != null))
        localo.qS(aq.apz().oo(this.cQI.getUsername()));
      if (au.hX(this.cQI.rK()))
        break label1867;
      KeyValuePreference localKeyValuePreference5 = (KeyValuePreference)this.cIG.wn("contact_info_verifyuser");
      if (localKeyValuePreference5 != null)
      {
        localKeyValuePreference5.dB(false);
        localKeyValuePreference5.ws(this.bOt.getString(2131166318));
        Bitmap localBitmap = com.tencent.mm.platformtools.b.e(ar.ub().cp(this.cQI.rJ()), 2.0F);
        localKeyValuePreference5.h(new BitmapDrawable(this.bOt.getResources(), localBitmap));
        localKeyValuePreference5.setSummary(com.tencent.mm.ao.b.e(this.bOt, this.cQI.rK(), -2));
        localKeyValuePreference5.dC(false);
      }
      int m = this.bOt.getIntent().getIntExtra("Contact_Source_FMessage", 0);
      aa.d("MicroMsg.ContactWidgetNormal", "initFriendSource, contact source = " + this.cQI.getSource() + ", sourceFMessage = " + m);
      if (m == 0)
        break label2595;
      localKeyValuePreference3 = (KeyValuePreference)this.cIG.wn("contact_info_source");
      localKeyValuePreference4 = (KeyValuePreference)this.cIG.wn("contact_info_google_contact");
      if (((m == 13) || (m == 10)) && (!this.gWD))
        m = 3;
      switch (m)
      {
      default:
        this.cIG.c(localKeyValuePreference4);
        this.cIG.c(localKeyValuePreference3);
        localNormalUserFooterPreference = (NormalUserFooterPreference)this.cIG.wn("contact_info_footer_normal");
        boolean bool1 = this.bOt.getIntent().getBooleanExtra("User_From_Fmessage", false);
        boolean bool2 = this.bOt.getIntent().getBooleanExtra("Contact_FMessageCard", false);
        this.bOt.getIntent().getBooleanExtra("Contact_KHideExpose", false);
        long l2 = this.bOt.getIntent().getLongExtra("Contact_Uin", -1L);
        if ((localNormalUserFooterPreference != null) && (localNormalUserFooterPreference.a(this.cQI, this.frx, this.dNx, this.gVU, this.fsh, this.edN, this.gWq, bool2, bool1, l2, this.gWx)))
        {
          localNormalUserFooterPreference.ckD.removeAll();
          localNormalUserFooterPreference.ckD.a(new ba(this, localNormalUserHeaderPreference), Looper.getMainLooper());
        }
        break;
      case 3:
      case 14:
      case 17:
      case 4:
      case 12:
      case 10:
      case 13:
      case 25:
      case 30:
      case 58:
      case 59:
      case 60:
      case 48:
      }
    }
    while (true)
    {
      this.cQI.rF();
      this.cIG.wo("clear_lbs_info");
      if (this.fst)
      {
        this.cIG.removeAll();
        if (localNormalUserHeaderPreference != null)
          this.cIG.b(localNormalUserHeaderPreference);
        if (localNormalUserFooterPreference != null)
          this.cIG.b(localNormalUserFooterPreference);
      }
      return;
      this.cIG.c(localNormalUserHeaderPreference);
      break;
      label1679: str5 = "  " + this.cQI.rD();
      break label209;
      label1707: this.cIG.wo("contact_info_district");
      break label230;
      label1722: this.cIG.wo("contact_info_signature");
      break label326;
      label1737: this.cIG.wo("contact_info_weibo");
      break label460;
      label1752: localRemarkInfoPreference.lg(this.bOt.getString(2131166236));
      break label564;
      label1770: this.cIG.O("contact_info_remarkinfo", true);
      break label576;
      label1785: i = 0;
      break label635;
      label1791: this.cIG.O("contact_info_linkedin", true);
      break label701;
      label1807: this.cIG.c(localFriendPreference1);
      break label858;
      label1822: this.gWD = true;
      break label953;
      label1830: this.cIG.c(localFriendPreference2);
      break label953;
      label1845: k = 0;
      break label968;
      label1851: this.cIG.wo("contact_info_sns");
      break label1053;
      label1867: this.cIG.wo("contact_info_verifyuser");
      break label1178;
      if (localKeyValuePreference3 != null)
      {
        localKeyValuePreference3.dB(true);
        localKeyValuePreference3.setTitle(this.bOt.getString(2131166323));
        localKeyValuePreference3.g(this.bOt.getResources().getDrawable(2130837908));
        localKeyValuePreference3.setSummary(this.bOt.getString(2131166217));
        localKeyValuePreference3.dC(false);
      }
      if (localKeyValuePreference4 == null)
        break label1436;
      this.cIG.c(localKeyValuePreference4);
      break label1436;
      if (localKeyValuePreference3 != null)
      {
        localKeyValuePreference3.dB(true);
        localKeyValuePreference3.setTitle(this.bOt.getString(2131166323));
        localKeyValuePreference3.g(this.bOt.getResources().getDrawable(2130838535));
        localKeyValuePreference3.setSummary(this.bOt.getString(2131166218));
        localKeyValuePreference3.dC(false);
      }
      if (localKeyValuePreference4 == null)
        break label1436;
      this.cIG.c(localKeyValuePreference4);
      break label1436;
      if (localKeyValuePreference3 != null)
      {
        localKeyValuePreference3.dB(true);
        localKeyValuePreference3.setTitle(this.bOt.getString(2131166323));
        localKeyValuePreference3.g(this.bOt.getResources().getDrawable(2130838532));
        localKeyValuePreference3.setSummary(this.bOt.getString(2131166219));
        localKeyValuePreference3.dC(false);
      }
      if (localKeyValuePreference4 == null)
        break label1436;
      this.cIG.c(localKeyValuePreference4);
      break label1436;
      if (localKeyValuePreference3 != null)
      {
        localKeyValuePreference3.dB(true);
        localKeyValuePreference3.setTitle(this.bOt.getString(2131166323));
        localKeyValuePreference3.g(this.bOt.getResources().getDrawable(2130837904));
        localKeyValuePreference3.setSummary(this.bOt.getString(2131166791));
        localKeyValuePreference3.dC(false);
      }
      if (localKeyValuePreference4 == null)
        break label1436;
      this.cIG.c(localKeyValuePreference4);
      break label1436;
      if (localKeyValuePreference3 != null)
      {
        localKeyValuePreference3.dB(true);
        localKeyValuePreference3.setTitle(this.bOt.getString(2131166323));
        localKeyValuePreference3.g(this.bOt.getResources().getDrawable(2130839175));
        localKeyValuePreference3.setSummary(this.bOt.getString(2131168417));
        localKeyValuePreference3.dC(false);
      }
      if (localKeyValuePreference4 == null)
        break label1436;
      this.cIG.c(localKeyValuePreference4);
      break label1436;
      this.gWC = true;
      if (localKeyValuePreference3 != null)
      {
        localKeyValuePreference3.dB(true);
        localKeyValuePreference3.setTitle(this.bOt.getString(2131166323));
        localKeyValuePreference3.g(this.bOt.getResources().getDrawable(2130838621));
        localKeyValuePreference3.setSummary(this.bOt.getString(2131166579));
        localKeyValuePreference3.dC(false);
      }
      if (localKeyValuePreference4 == null)
        break label1436;
      localKeyValuePreference4.dB(false);
      localKeyValuePreference4.setTitle(this.bOt.getString(2131166559));
      if (this.gWC)
      {
        if (TextUtils.isEmpty(this.gWB))
          this.gWB = cj.tb(this.dsv);
        localKeyValuePreference4.setSummary(this.gWB + "\n" + this.dsv);
      }
      while (true)
      {
        localKeyValuePreference4.dC(false);
        if (!TextUtils.isEmpty(this.dsv))
          break;
        this.cIG.c(localKeyValuePreference4);
        break;
        localKeyValuePreference4.setSummary(this.dsv);
      }
      if (localKeyValuePreference3 != null)
      {
        localKeyValuePreference3.dB(true);
        localKeyValuePreference3.setTitle(this.bOt.getString(2131166323));
        localKeyValuePreference3.g(this.bOt.getResources().getDrawable(2130838536));
        localKeyValuePreference3.setSummary(this.bOt.getString(2131166325));
        localKeyValuePreference3.dC(false);
      }
      if (localKeyValuePreference4 == null)
        break label1436;
      this.cIG.c(localKeyValuePreference4);
      break label1436;
      label2595: KeyValuePreference localKeyValuePreference1 = (KeyValuePreference)this.cIG.wn("contact_info_source");
      KeyValuePreference localKeyValuePreference2 = (KeyValuePreference)this.cIG.wn("contact_info_google_contact");
      if (localKeyValuePreference2 != null)
        this.cIG.c(localKeyValuePreference2);
      switch (this.cQI.getSource())
      {
      default:
        this.cIG.c(localKeyValuePreference1);
        break;
      case 18:
        if (localKeyValuePreference1 == null)
          break;
        localKeyValuePreference1.dB(true);
        localKeyValuePreference1.setTitle(this.bOt.getString(2131166323));
        localKeyValuePreference1.g(this.bOt.getResources().getDrawable(2130837906));
        localKeyValuePreference1.setSummary(this.bOt.getString(2131166324));
        localKeyValuePreference1.dC(false);
        break;
      case 30:
        if (localKeyValuePreference1 == null)
          break;
        localKeyValuePreference1.dB(true);
        localKeyValuePreference1.setTitle(this.bOt.getString(2131166323));
        localKeyValuePreference1.g(this.bOt.getResources().getDrawable(2130839175));
        localKeyValuePreference1.setSummary(this.bOt.getString(2131168417));
        localKeyValuePreference1.dC(false);
        break;
      case 48:
        if (localKeyValuePreference1 == null)
          break;
        localKeyValuePreference1.dB(true);
        localKeyValuePreference1.setTitle(this.bOt.getString(2131166323));
        localKeyValuePreference1.g(this.bOt.getResources().getDrawable(2130838536));
        localKeyValuePreference1.setSummary(this.bOt.getString(2131166325));
        localKeyValuePreference1.dC(false);
        break;
      case 14:
        if (localKeyValuePreference1 == null)
          break;
        localKeyValuePreference1.dB(true);
        localKeyValuePreference1.setTitle(this.bOt.getString(2131166323));
        localKeyValuePreference1.g(this.bOt.getResources().getDrawable(2130839175));
        localKeyValuePreference1.setSummary(this.bOt.getString(2131166329));
        localKeyValuePreference1.dC(false);
        break;
      case 22:
      case 23:
      case 24:
      case 26:
      case 27:
      case 28:
      case 29:
        if (localKeyValuePreference1 == null)
          break;
        localKeyValuePreference1.dB(true);
        localKeyValuePreference1.setTitle(this.bOt.getString(2131166323));
        localKeyValuePreference1.g(this.bOt.getResources().getDrawable(2130837907));
        localKeyValuePreference1.setSummary(this.bOt.getString(2131166326));
        localKeyValuePreference1.dC(false);
        break;
      case 34:
        if (localKeyValuePreference1 == null)
          break;
        localKeyValuePreference1.dB(true);
        localKeyValuePreference1.setTitle(this.bOt.getString(2131166323));
        localKeyValuePreference1.g(this.bOt.getResources().getDrawable(2130837907));
        localKeyValuePreference1.setSummary(this.bOt.getString(2131167130));
        localKeyValuePreference1.dC(false);
        break;
      case 58:
      case 59:
      case 60:
        if (localKeyValuePreference1 == null)
          break;
        localKeyValuePreference1.dB(true);
        localKeyValuePreference1.setTitle(this.bOt.getString(2131166323));
        localKeyValuePreference1.g(this.bOt.getResources().getDrawable(2130838621));
        localKeyValuePreference1.setSummary(this.bOt.getString(2131166579));
        localKeyValuePreference1.dC(false);
        break;
        this.cIG.wo("contact_info_footer_normal");
      }
    }
  }

  public final boolean Ji()
  {
    if (aq.apD() != null)
      aq.apD().a(this, 3);
    be.uA().b(30, this);
    NormalUserHeaderPreference localNormalUserHeaderPreference = (NormalUserHeaderPreference)this.cIG.wn("contact_info_header_normal");
    if (localNormalUserHeaderPreference != null)
      localNormalUserHeaderPreference.onDetach();
    NormalUserFooterPreference localNormalUserFooterPreference = (NormalUserFooterPreference)this.cIG.wn("contact_info_footer_normal");
    if (localNormalUserFooterPreference != null)
      localNormalUserFooterPreference.Ji();
    FriendPreference localFriendPreference1 = (FriendPreference)this.cIG.wn("contact_info_friend_qq");
    if (localFriendPreference1 != null)
      localFriendPreference1.Ji();
    FriendPreference localFriendPreference2 = (FriendPreference)this.cIG.wn("contact_info_friend_mobile");
    if (localFriendPreference2 != null)
      localFriendPreference2.Ji();
    FriendPreference localFriendPreference3 = (FriendPreference)this.cIG.wn("contact_info_facebook");
    if (localFriendPreference3 != null)
      localFriendPreference3.Ji();
    this.cIG.wn("contact_info_sns");
    return true;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    if ((paramx.getType() != 30) && (paramx.getType() != 458))
      aa.w("MicroMsg.ContactWidgetNormal", "not expected scene,  type = " + paramx.getType());
    NormalUserHeaderPreference localNormalUserHeaderPreference;
    NormalUserFooterPreference localNormalUserFooterPreference;
    do
    {
      j localj;
      do
      {
        do
          return;
        while ((paramInt1 != 0) || (paramInt2 != 0) || (paramx.getType() != 30));
        localj = (j)paramx;
      }
      while (((localj.apI() != 1) && (localj.apI() != 3)) || ((localj.apH() != null) && (!localj.apH().contains(this.cQI.getUsername()))));
      localNormalUserHeaderPreference = (NormalUserHeaderPreference)this.cIG.wn("contact_info_header_normal");
      localNormalUserFooterPreference = (NormalUserFooterPreference)this.cIG.wn("contact_info_footer_normal");
    }
    while ((localNormalUserHeaderPreference == null) || (localNormalUserFooterPreference == null) || (!localNormalUserFooterPreference.gXj));
    aa.d("MicroMsg.ContactWidgetNormal", "happy update remark change");
    this.gWz = true;
    this.gWA = true;
    localNormalUserHeaderPreference.I(this.cQI.getUsername(), true);
    localNormalUserHeaderPreference.J(this.cQI.getUsername(), true);
    localNormalUserHeaderPreference.ei(this.cQI.getUsername());
    this.bOt.getIntent().putExtra("Contact_NeedShowChangeRemarkButton", this.gWz);
    this.bOt.getIntent().putExtra("Contact_NeedShowChangeSnsPreButton", this.gWA);
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2, String paramString, boolean paramBoolean3)
  {
    o localo = (o)this.cIG.wn("contact_info_sns");
    if ((localo != null) && (aq.apz() != null))
      localo.qS(aq.apz().oo(this.cQI.getUsername()));
    this.gWw = aq.apz().b(this.cQI.getUsername(), this.gWw);
    aLc();
    this.cIG.notifyDataSetChanged();
    if (paramBoolean3)
    {
      aa.d("MicroMsg.ContactWidgetNormal", "bg Change!");
      if (aq.apD() != null)
        aq.apD().nR(this.cQI.getUsername());
    }
  }

  public final boolean a(n paramn, i parami, boolean paramBoolean, int paramInt)
  {
    boolean bool1;
    boolean bool2;
    label28: boolean bool3;
    if (parami != null)
    {
      bool1 = true;
      Assert.assertTrue(bool1);
      if (au.hW(parami.getUsername()).length() <= 0)
        break label495;
      bool2 = true;
      Assert.assertTrue(bool2);
      if (paramn == null)
        break label501;
      bool3 = true;
      label40: Assert.assertTrue(bool3);
      this.cIG = paramn;
      this.cQI = parami;
      this.dNx = paramBoolean;
      this.edN = paramInt;
      this.gVU = this.bOt.getIntent().getBooleanExtra("User_Verify", false);
      this.frx = au.hW(this.bOt.getIntent().getStringExtra("Verify_ticket"));
      this.fsh = this.bOt.getIntent().getBooleanExtra("Contact_IsLBSFriend", false);
      this.gWq = this.bOt.getIntent().getIntExtra("Kdel_from", -1);
      this.gWx = this.bOt.getIntent().getStringExtra("Contact_RemarkName");
      this.bNc = this.bOt.getIntent().getIntExtra("Sns_from_Scene", 0);
      this.gWz = this.bOt.getIntent().getBooleanExtra("Contact_NeedShowChangeRemarkButton", false);
      this.gWA = this.bOt.getIntent().getBooleanExtra("Contact_NeedShowChangeSnsPreButton", false);
      this.gWy = this.bOt.getIntent().getIntExtra("Contact_KSnsIFlag", -1);
      long l = this.bOt.getIntent().getLongExtra("Contact_KSnsBgId", -1L);
      String str = au.R(this.bOt.getIntent().getStringExtra("Contact_KSnsBgUrl"), "");
      this.dsv = au.R(this.bOt.getIntent().getStringExtra("verify_gmail"), "");
      this.gWB = au.R(this.bOt.getIntent().getStringExtra("profileName"), cj.tb(this.dsv));
      this.gWw.cqz = this.gWy;
      this.gWw.cqB = l;
      this.gWw.cqA = str;
      if (aq.apz() != null)
        this.gWw = aq.apz().b(parami.getUsername(), this.gWw);
      if (parami.field_deleteFlag != 1)
        break label507;
    }
    label495: label501: label507: for (boolean bool4 = true; ; bool4 = false)
    {
      this.fst = bool4;
      aLc();
      be.uz().su().tK(parami.getUsername());
      boolean bool5 = com.tencent.mm.model.v.th().equals(parami.getUsername());
      int i = 0x1 & this.gWw.cqz;
      int j = 0;
      if (i > 0)
        j = 1;
      if ((!parami.rd()) && (!i.tz(parami.getUsername())) && (j != 0) && (aq.apD() != null))
        aq.apD().b(2, parami.getUsername(), bool5, this.bNc);
      return true;
      bool1 = false;
      break;
      bool2 = false;
      break label28;
      bool3 = false;
      break label40;
    }
  }

  public final void b(boolean paramBoolean1, String paramString, boolean paramBoolean2)
  {
  }

  public final boolean iO(String paramString)
  {
    if (paramString.equals("contact_info_weibo"))
    {
      new com.tencent.mm.ui.applet.x(this.bOt).bb(this.cQI.rG(), this.cQI.getUsername());
      return true;
    }
    if (paramString.equals("contact_info_remarkinfo"))
    {
      Intent localIntent1 = new Intent();
      localIntent1.setClass(this.bOt, ContactRemarkInfoViewUI.class);
      localIntent1.putExtra("Contact_Scene", this.edN);
      localIntent1.putExtra("Contact_User", this.cQI.getUsername());
      this.bOt.startActivity(localIntent1);
      return true;
    }
    if (paramString.equals("contact_info_friend_qq"))
    {
      String str4 = ((FriendPreference)this.cIG.wn("contact_info_friend_qq")).aKI();
      if ((str4 == null) || (str4.length() == 0))
        return true;
      String[] arrayOfString1 = str4.split(" ");
      if (arrayOfString1.length > 1)
      {
        String str5 = arrayOfString1[1];
        String str6 = arrayOfString1[0];
        String[] arrayOfString2 = new String[2];
        arrayOfString2[0] = this.bOt.getResources().getString(2131166367);
        arrayOfString2[1] = this.bOt.getResources().getString(2131166368);
        h.b(this.bOt, null, arrayOfString2, null, new az(this, str5, str6));
      }
      return true;
    }
    if (paramString.equals("contact_info_friend_mobile"))
    {
      FriendPreference localFriendPreference = (FriendPreference)this.cIG.wn("contact_info_friend_mobile");
      if ((localFriendPreference != null) && (localFriendPreference.aKH() == 1))
      {
        String str2 = localFriendPreference.aKI();
        if ((str2 == null) || (str2.length() == 0))
          return false;
        int i = 1 + str2.lastIndexOf(' ');
        if (i > 0)
        {
          String str3 = str2.substring(i);
          Intent localIntent4 = new Intent("android.intent.action.DIAL");
          localIntent4.setFlags(268435456);
          localIntent4.setData(Uri.parse("tel:" + str3));
          this.bOt.startActivity(localIntent4);
        }
      }
      return true;
    }
    Intent localIntent3;
    if (paramString.equals("contact_info_sns"))
    {
      if (!be.uz().isSDCardAvailable())
      {
        dn.bW(this.bOt);
        return true;
      }
      localIntent3 = this.bOt.getIntent();
      localIntent3.putExtra("sns_source", this.bNc);
      localIntent3.putExtra("sns_signature", this.cQI.rB());
      localIntent3.putExtra("sns_nickName", this.cQI.rq());
      localIntent3.putExtra("sns_title", this.cQI.rr());
      if (aq.apD() != null)
        localIntent3 = aq.apD().a(localIntent3, this.cQI.getUsername());
      if (localIntent3 != null)
        break label568;
      ((MMActivity)this.bOt).finish();
    }
    while (paramString.equals("contact_info_linkedin"))
    {
      String str1 = this.cQI.bUn;
      if (au.hX(str1))
      {
        aa.e("MicroMsg.ContactWidgetNormal", "this liurl is null!");
        return true;
        label568: com.tencent.mm.ak.a.b(this.bOt, "sns", ".ui.SnsUserUI", localIntent3);
      }
      else
      {
        Intent localIntent2 = new Intent();
        localIntent2.putExtra("rawUrl", str1);
        localIntent2.putExtra("geta8key_username", com.tencent.mm.model.v.th());
        com.tencent.mm.ak.a.b(this.bOt, "webview", "com.tencent.mm.ui.tools.WebViewUI", localIntent2);
      }
    }
    return true;
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.ay
 * JD-Core Version:    0.6.2
 */