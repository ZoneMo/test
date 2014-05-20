package com.tencent.mm.ui.contact.profile;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.model.ar;
import com.tencent.mm.model.av;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.p.ab;
import com.tencent.mm.p.j;
import com.tencent.mm.p.p;
import com.tencent.mm.protocal.a.dl;
import com.tencent.mm.protocal.a.nv;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.az;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.CheckBoxPreference;
import com.tencent.mm.ui.base.preference.KeyValuePreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.chatting.ChattingUI;
import com.tencent.mm.ui.tools.WebViewUI;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

public final class e
  implements com.tencent.mm.pluginsdk.b.a
{
  private MMActivity bLH;
  private ch cHU = null;
  private n cIG;
  private com.tencent.mm.storage.i cQI;
  private boolean cQb = false;
  private com.tencent.mm.p.a cSY;
  private List cnb;
  private com.tencent.mm.p.f cnc;
  private boolean cnl = false;
  private String cnn;
  private boolean dNx;
  private int edN;
  com.tencent.mm.ui.base.x gOJ = null;
  private dl gVY = null;
  private boolean gVZ = false;
  private boolean gWa = false;
  private boolean gWb = false;
  private String ghP;

  private e(MMActivity paramMMActivity)
  {
    this.bLH = paramMMActivity;
  }

  public e(MMActivity paramMMActivity, String paramString, dl paramdl)
  {
    this(paramMMActivity);
    this.ghP = paramString;
    this.gVY = paramdl;
  }

  private void a(com.tencent.mm.p.a parama, boolean paramBoolean)
  {
    CheckBoxPreference localCheckBoxPreference1 = (CheckBoxPreference)this.cIG.wn("contact_info_subscribe_bizinfo");
    CheckBoxPreference localCheckBoxPreference2 = (CheckBoxPreference)this.cIG.wn("contact_info_locate");
    nv localnv = new nv();
    localnv.cqC = parama.field_brandFlag;
    localnv.eBo = this.cQI.getUsername();
    be.uz().st().a(new az(47, localnv));
    be.uA().d(new com.tencent.mm.z.i(5));
    ab.ye().a(parama, new String[0]);
    localCheckBoxPreference1.setChecked(parama.xx());
    if (localCheckBoxPreference2 != null)
      localCheckBoxPreference2.setChecked(parama.xz());
    if (paramBoolean)
      aLc();
  }

  private void aLc()
  {
    Ji();
    this.cIG.removeAll();
    this.cIG.addPreferencesFromResource(2131034119);
    if (this.gWb)
      this.cIG.O("contact_info_time_expired", true);
    BizInfoHeaderPreference localBizInfoHeaderPreference = (BizInfoHeaderPreference)this.cIG.wn("contact_info_header_bizinfo");
    com.tencent.mm.p.a locala1;
    com.tencent.mm.p.a locala2;
    if (localBizInfoHeaderPreference != null)
    {
      localBizInfoHeaderPreference.c(this.cQI, this.ghP);
      locala1 = p.eI(this.cQI.getUsername());
      this.cnb = null;
      this.cnc = null;
      if (((locala1 != null) && (locala1.xu() != null)) || (this.gVY == null))
        break label1958;
      locala2 = new com.tencent.mm.p.a();
      locala2.field_username = this.cQI.getUsername();
      locala2.field_brandFlag = this.gVY.cqC;
      locala2.field_brandIconURL = this.gVY.cqF;
      locala2.field_brandInfo = this.gVY.cqE;
      locala2.field_extInfo = this.gVY.cqD;
    }
    label291: label676: label1958: for (com.tencent.mm.p.a locala3 = locala2; ; locala3 = locala1)
    {
      label308: label353: boolean bool3;
      label476: KeyValuePreference localKeyValuePreference3;
      String str2;
      boolean bool1;
      label711: boolean bool2;
      if (locala3 != null)
      {
        this.cSY = locala3;
        this.cnb = locala3.xF();
        this.cnc = locala3.xu();
        if (this.cnc.cno != null)
        {
          this.gWa = true;
          if (wX(this.cnc.cno))
          {
            this.gVZ = true;
            if (!this.cQI.rb())
            {
              Object[] arrayOfObject6 = new Object[1];
              arrayOfObject6[0] = this.cQI.getUsername();
              aa.c("MicroMsg.ContactWidgetBizInfo", "expireTime not null, and %s is not my contact", arrayOfObject6);
              aLd();
              if (w.da(this.cQI.field_username))
                aLd();
              if ((this.cnc.cnn != null) && (this.cnc.cnn.length() > 0))
                this.cnn = this.cnc.cnn;
              this.cnl = this.cnc.cnl;
              if (cj.hX(this.cQI.rB()))
                break label1095;
              KeyValuePreference localKeyValuePreference4 = (KeyValuePreference)this.cIG.wn("contact_info_user_desc");
              if (localKeyValuePreference4 != null)
              {
                localKeyValuePreference4.aIh();
                localKeyValuePreference4.dB(false);
                localKeyValuePreference4.ws(this.bLH.getString(2131166319));
                localKeyValuePreference4.setSummary(com.tencent.mm.ao.b.e(this.bLH, this.cQI.rB(), -2));
                localKeyValuePreference4.dC(false);
                Bitmap localBitmap2 = com.tencent.mm.platformtools.b.e(ar.ub().cp(this.cQI.rJ()), 2.0F);
                Object[] arrayOfObject5 = new Object[1];
                if (localBitmap2 != null)
                  break label1089;
                bool3 = true;
                arrayOfObject5[0] = Boolean.valueOf(bool3);
                aa.d("MicroMsg.ContactWidgetBizInfo", "verify bmp is null ? %B", arrayOfObject5);
                localKeyValuePreference4.g(new BitmapDrawable(this.bLH.getResources(), localBitmap2));
                localKeyValuePreference4.aIf();
              }
              if ((this.cnc == null) || (this.cnc.cnq == null))
                break label1235;
              localKeyValuePreference3 = (KeyValuePreference)this.cIG.wn("contact_info_verifyuser");
              if (localKeyValuePreference3 != null)
              {
                localKeyValuePreference3.aIh();
                localKeyValuePreference3.dB(false);
                if (!cj.hX(this.cnc.cnq.cnM))
                  break label1193;
                int k = this.cnc.cnq.cnK;
                switch (k)
                {
                default:
                  Object[] arrayOfObject4 = new Object[1];
                  arrayOfObject4[0] = Integer.valueOf(k);
                  aa.c("MicroMsg.ContactWidgetBizInfo", "getVerifyStr, error type %d", arrayOfObject4);
                  str2 = this.bLH.getResources().getString(2131166319);
                  localKeyValuePreference3.ws(str2);
                  Bitmap localBitmap1 = com.tencent.mm.platformtools.b.e(ar.ub().cp(this.cQI.rJ()), 2.0F);
                  Object[] arrayOfObject3 = new Object[1];
                  if (localBitmap1 == null)
                  {
                    bool1 = true;
                    arrayOfObject3[0] = Boolean.valueOf(bool1);
                    aa.d("MicroMsg.ContactWidgetBizInfo", "verify bmp is null ? %B", arrayOfObject3);
                    localKeyValuePreference3.g(new BitmapDrawable(this.bLH.getResources(), localBitmap1));
                    if (this.cnc.cnq.cnL == null)
                      break label1217;
                    localKeyValuePreference3.setSummary(com.tencent.mm.ao.b.e(this.bLH, this.cnc.cnq.cnL.trim(), -2));
                    if (cj.hX(this.cnc.cnq.cnN))
                      break label1229;
                    bool2 = true;
                    label811: localKeyValuePreference3.dC(bool2);
                  }
                  break;
                case 0:
                case 1:
                case 2:
                }
              }
            }
          }
        }
      }
      while (true)
      {
        if ((this.cnc == null) || (this.cnc.cnp == null) || (this.cnc.cnp.size() <= 0))
          break label1260;
        KeyValuePreference localKeyValuePreference2 = (KeyValuePreference)this.cIG.wn("contact_info_privilege");
        localKeyValuePreference2.aIh();
        localKeyValuePreference2.dC(false);
        localKeyValuePreference2.aIg();
        Iterator localIterator = this.cnc.cnp.iterator();
        while (localIterator.hasNext())
        {
          j localj = (j)localIterator.next();
          LinearLayout localLinearLayout = (LinearLayout)View.inflate(this.bLH, 2130903380, null);
          ((ImageView)localLinearLayout.findViewById(2131362591)).setImageDrawable(new t(this.bLH.getResources(), localj.cnh));
          ((TextView)localLinearLayout.findViewById(2131362266)).setText(ab.yi().getString(localj.cnO, localj.description).trim());
          localKeyValuePreference2.ak(localLinearLayout);
        }
        aa.w("MicroMsg.ContactWidgetBizInfo", "head pref is null");
        this.cIG.O("contact_info_header_bizinfo", true);
        break;
        this.cIG.O("contact_info_time_expired", true);
        break label291;
        this.cIG.O("contact_info_time_expired", true);
        break label308;
        this.cIG.O("contact_info_time_expired", true);
        aa.e("MicroMsg.ContactWidgetBizInfo", "get biz info from storage, but return null");
        break label353;
        label1089: bool3 = false;
        break label476;
        label1095: aa.w("MicroMsg.ContactWidgetBizInfo", "has not desc info");
        this.cIG.O("contact_info_user_desc", true);
        if (this.gVZ)
          break label522;
        this.cIG.O("contact_info_time_expired", true);
        break label522;
        str2 = this.bLH.getResources().getString(2131167230);
        break label669;
        str2 = this.bLH.getResources().getString(2131167232);
        break label669;
        str2 = this.bLH.getResources().getString(2131167231);
        break label669;
        label1193: localKeyValuePreference3.ws(this.cnc.cnq.cnM);
        break label676;
        bool1 = false;
        break label711;
        label1217: aa.e("MicroMsg.ContactWidgetBizInfo", "[arthurdan.emojiSpan] Notice!!!! extInfo.verifyInfo.verifySourceDescription is null");
        break label792;
        label1229: bool2 = false;
        break label811;
        label1235: aa.w("MicroMsg.ContactWidgetBizInfo", "has not verify info");
        this.cIG.O("contact_info_verifyuser", true);
      }
      label1260: this.cIG.O("contact_info_privilege", true);
      int i = this.cIG.indexOf("contact_info_subscribe_bizinfo");
      int j;
      if ((i >= 0) && (this.cnb != null))
        j = -1 + this.cnb.size();
      while (j >= 0)
      {
        if ((!this.bLH.getString(2131166396).equals(((com.tencent.mm.p.b)this.cnb.get(j)).title)) || (this.cnl))
        {
          Preference localPreference2 = new Preference(this.bLH);
          localPreference2.setKey("contact_info_bizinfo_external#" + j);
          localPreference2.setTitle(ab.yi().getString(((com.tencent.mm.p.b)this.cnb.get(j)).cnd, ((com.tencent.mm.p.b)this.cnb.get(j)).title));
          if (!cj.hX(((com.tencent.mm.p.b)this.cnb.get(j)).description))
            localPreference2.setSummary(((com.tencent.mm.p.b)this.cnb.get(j)).description);
          this.cIG.a(localPreference2, i);
        }
        j--;
        continue;
        aa.d("MicroMsg.ContactWidgetBizInfo", "pos no more");
      }
      CheckBoxPreference localCheckBoxPreference2;
      if ((!this.gVZ) && (w.p(this.cQI)) && (this.cQI.rG() != null) && (!this.cQI.rG().equals("")))
      {
        KeyValuePreference localKeyValuePreference1 = (KeyValuePreference)this.cIG.wn("contact_info_verifyuser_weibo");
        if (localKeyValuePreference1 != null)
        {
          StringBuilder localStringBuilder = new StringBuilder().append(cj.R(this.cQI.rI(), ""));
          MMActivity localMMActivity = this.bLH;
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = w.di(this.cQI.rG());
          localKeyValuePreference1.setSummary(localMMActivity.getString(2131165841, arrayOfObject2));
          localKeyValuePreference1.dC(false);
        }
        if (!this.cQI.rb())
          break label1883;
        if (locala3 == null)
          break label1856;
        CheckBoxPreference localCheckBoxPreference1 = (CheckBoxPreference)this.cIG.wn("contact_info_subscribe_bizinfo");
        localCheckBoxPreference2 = (CheckBoxPreference)this.cIG.wn("contact_info_locate");
        localCheckBoxPreference1.setChecked(locala3.xx());
        if (!locala3.xu().cns)
          break label1831;
        localCheckBoxPreference2.setChecked(locala3.xz());
      }
      while (true)
      {
        this.cIG.O("contact_info_biz_read_msg_online", true);
        this.cIG.O("contact_info_biz_add", true);
        String str1 = this.cQI.rr();
        if (str1 != null)
          this.bLH.vT(str1);
        if (!w.da(this.cQI.field_username))
          this.bLH.a(0, 2130838841, new l(this));
        return;
        this.cIG.O("contact_info_verifyuser_weibo", true);
        break;
        label1831: this.cIG.O("contact_info_locate", true);
        localCheckBoxPreference2.setChecked(locala3.xz());
        continue;
        label1856: this.cIG.O("contact_info_subscribe_bizinfo", true);
        this.cIG.O("contact_info_locate", true);
      }
      label1883: Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = this.cQI.getUsername();
      aa.c("MicroMsg.ContactWidgetBizInfo", "%s is not my contact", arrayOfObject1);
      aLd();
      Preference localPreference1 = this.cIG.wn("contact_info_biz_add");
      if ((localPreference1 != null) && (this.gWa))
        localPreference1.setTitle(2131166394);
      this.bLH.dh(false);
      return;
    }
  }

  private void aLd()
  {
    this.cIG.O("contact_info_verifyuser_weibo", true);
    this.cIG.O("contact_info_subscribe_bizinfo", true);
    this.cIG.O("contact_info_locate", true);
    if (!this.cQI.rb())
      this.cIG.O("contact_info_biz_view", true);
    if (!this.gVZ)
      this.cIG.O("contact_info_time_expired", true);
    while (true)
    {
      this.cIG.O("contact_info_biz_remove", true);
      return;
      this.cIG.O("contact_info_biz_add", true);
    }
  }

  private static boolean wX(String paramString)
  {
    try
    {
      long l1 = Long.parseLong(paramString);
      long l2 = System.currentTimeMillis() / 1000L;
      boolean bool1 = l1 - l2 < 0L;
      boolean bool2 = false;
      if (bool1)
        bool2 = true;
      return bool2;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public final boolean Ji()
  {
    BizInfoHeaderPreference localBizInfoHeaderPreference = (BizInfoHeaderPreference)this.cIG.wn("contact_info_header_bizinfo");
    if (localBizInfoHeaderPreference != null)
      localBizInfoHeaderPreference.onDetach();
    return true;
  }

  public final boolean a(n paramn, com.tencent.mm.storage.i parami, boolean paramBoolean, int paramInt)
  {
    boolean bool1;
    if (parami != null)
    {
      bool1 = true;
      Assert.assertTrue(bool1);
      if (cj.hW(parami.getUsername()).length() <= 0)
        break label81;
    }
    label81: for (boolean bool2 = true; ; bool2 = false)
    {
      Assert.assertTrue(bool2);
      boolean bool3 = false;
      if (paramn != null)
        bool3 = true;
      Assert.assertTrue(bool3);
      this.cIG = paramn;
      this.cQI = parami;
      this.dNx = paramBoolean;
      this.edN = paramInt;
      aLc();
      return true;
      bool1 = false;
      break;
    }
  }

  public final boolean iO(String paramString)
  {
    if (paramString == null)
      return false;
    if (paramString.equals("contact_info_verifyuser_weibo"))
    {
      new com.tencent.mm.ui.applet.x(this.bLH).bb(this.cQI.rG(), this.cQI.getUsername());
      return true;
    }
    if ("contact_info_biz_remove".endsWith(paramString))
    {
      MMActivity localMMActivity4;
      Object[] arrayOfObject3;
      if (this.cSY.xE())
      {
        localMMActivity4 = this.bLH;
        arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = this.cQI.rr();
      }
      MMActivity localMMActivity3;
      Object[] arrayOfObject2;
      for (String str2 = localMMActivity4.getString(2131167481, arrayOfObject3); ; str2 = localMMActivity3.getString(2131167480, arrayOfObject2))
      {
        h.a(this.bLH, str2, "", this.bLH.getString(2131166381), this.bLH.getString(2131167681), new q(this), null);
        return true;
        localMMActivity3 = this.bLH;
        arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = this.cQI.rr();
      }
    }
    if ("contact_info_biz_add".endsWith(paramString))
    {
      com.tencent.mm.pluginsdk.ui.applet.a locala = new com.tencent.mm.pluginsdk.ui.applet.a(this.bLH, new r(this));
      LinkedList localLinkedList = new LinkedList();
      localLinkedList.add(Integer.valueOf(this.edN));
      if (this.cnn != null)
        locala.qF(this.cnn);
      locala.e(this.cQI.getUsername(), localLinkedList);
      return true;
    }
    if ("contact_info_biz_view".endsWith(paramString))
    {
      Intent localIntent1 = new Intent(this.bLH, ChattingUI.class);
      localIntent1.addFlags(67108864);
      if (this.dNx)
      {
        localIntent1.putExtra("Chat_User", this.cQI.getUsername());
        localIntent1.putExtra("Chat_Mode", 1);
        this.bLH.setResult(-1, localIntent1);
      }
      while (true)
      {
        this.bLH.finish();
        return true;
        localIntent1.putExtra("Chat_User", this.cQI.getUsername());
        localIntent1.putExtra("Chat_Mode", 1);
        this.bLH.startActivity(localIntent1);
      }
    }
    if ("contact_info_biz_read_msg_online".endsWith(paramString))
      return true;
    if (paramString.startsWith("contact_info_bizinfo_external#"))
    {
      int i = cj.getInt(paramString.replace("contact_info_bizinfo_external#", ""), -1);
      if ((i >= 0) && (i < this.cnb.size()))
      {
        String str1 = ((com.tencent.mm.p.b)this.cnb.get(i)).url;
        Intent localIntent3 = new Intent();
        localIntent3.setClass(this.bLH, WebViewUI.class);
        localIntent3.putExtra("rawUrl", str1);
        localIntent3.putExtra("useJs", true);
        localIntent3.putExtra("vertical_scroll", true);
        localIntent3.putExtra("geta8key_scene", 3);
        this.bLH.startActivity(localIntent3);
        return true;
      }
    }
    if (("contact_info_subscribe_bizinfo".endsWith(paramString)) || ("contact_info_show_brand".endsWith(paramString)) || ("contact_info_locate".endsWith(paramString)))
    {
      com.tencent.mm.p.a locala1 = p.eI(this.cQI.getUsername());
      if (locala1 == null)
        return true;
      if ("contact_info_subscribe_bizinfo".endsWith(paramString))
        if (locala1.xx())
          locala1.field_brandFlag = (0x1 | locala1.field_brandFlag);
      while (true)
      {
        a(locala1, false);
        return true;
        locala1.field_brandFlag = (0xFFFFFFFE & locala1.field_brandFlag);
        continue;
        if ("contact_info_show_brand".endsWith(paramString))
        {
          if (locala1.xy())
            locala1.field_brandFlag = (0x2 | locala1.field_brandFlag);
          else
            locala1.field_brandFlag = (0xFFFFFFFD & locala1.field_brandFlag);
        }
        else if ("contact_info_locate".endsWith(paramString))
          if (locala1.xz())
          {
            locala1.field_brandFlag = (0xFFFFFFFB & locala1.field_brandFlag);
          }
          else
          {
            MMActivity localMMActivity1 = this.bLH;
            MMActivity localMMActivity2 = this.bLH;
            Object[] arrayOfObject1 = new Object[1];
            arrayOfObject1[0] = this.cQI.rr();
            this.gOJ = h.a(localMMActivity1, localMMActivity2.getString(2131165795, arrayOfObject1), this.bLH.getString(2131167675), new f(this, locala1), new k(this, locala1));
          }
      }
    }
    if ("contact_info_verifyuser".endsWith(paramString))
    {
      com.tencent.mm.p.a locala2 = p.eI(this.cQI.getUsername());
      if (locala2 == null)
        return true;
      if ((locala2.xu().cnq != null) && (!cj.hX(locala2.xu().cnq.cnN)))
      {
        Intent localIntent2 = new Intent();
        localIntent2.setClass(this.bLH, WebViewUI.class);
        localIntent2.putExtra("rawUrl", locala2.xu().cnq.cnN);
        localIntent2.putExtra("useJs", true);
        localIntent2.putExtra("vertical_scroll", true);
        localIntent2.putExtra("geta8key_scene", 3);
        this.bLH.startActivity(localIntent2);
      }
      return true;
    }
    return true;
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.e
 * JD-Core Version:    0.6.2
 */