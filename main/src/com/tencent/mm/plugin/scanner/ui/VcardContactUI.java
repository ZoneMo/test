package com.tencent.mm.plugin.scanner.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.plugin.scanner.a.j;
import com.tencent.mm.plugin.scanner.a.m;
import com.tencent.mm.q;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.KeyValuePreference;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class VcardContactUI extends MMPreference
{
  private static ArrayList eft = new ArrayList();
  private static int efv = 1;
  private static int efw = 1;
  private com.tencent.mm.ui.base.preference.n cIG;
  private j efs;
  private bx efu;

  private static void a(List paramList, Intent paramIntent, int paramInt1, int paramInt2)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (paramInt2 == 1)
      {
        paramIntent.putExtra("phone", str);
        paramIntent.putExtra("phone_type", paramInt1);
      }
      else if (paramInt2 == 2)
      {
        paramIntent.putExtra("secondary_phone", str);
        paramIntent.putExtra("phone_type", paramInt1);
      }
      else if (paramInt2 == 3)
      {
        paramIntent.putExtra("tertiary_phone", str);
        paramIntent.putExtra("phone_type", paramInt1);
      }
    }
  }

  private void a(List paramList, String paramString1, String paramString2)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        VcardContactLinkPreference localVcardContactLinkPreference = new VcardContactLinkPreference(this);
        localVcardContactLinkPreference.setKey(paramString1 + String.valueOf(str));
        if (!eft.contains(paramString1 + String.valueOf(str)))
          eft.add(paramString1 + String.valueOf(str));
        localVcardContactLinkPreference.setTitle(paramString2);
        localVcardContactLinkPreference.setLayoutResource(com.tencent.mm.k.aWC);
        localVcardContactLinkPreference.setSummary(str);
        localVcardContactLinkPreference.dC(false);
        localVcardContactLinkPreference.dB(true);
        this.cIG.a(localVcardContactLinkPreference, efv);
      }
    }
  }

  private void ak(String paramString1, String paramString2)
  {
    KeyValuePreference localKeyValuePreference = new KeyValuePreference(this);
    localKeyValuePreference.setTitle(paramString2);
    localKeyValuePreference.setLayoutResource(com.tencent.mm.k.aWC);
    localKeyValuePreference.dC(false);
    localKeyValuePreference.setSummary(paramString1);
    localKeyValuePreference.dB(false);
    this.cIG.a(localKeyValuePreference, efw);
  }

  protected final void FR()
  {
    this.efu = new bx(this);
    this.cIG = aIj();
    this.efs = j.ZY();
    a(new bv(this));
    vT("");
    this.cIG.removeAll();
    this.cIG.addPreferencesFromResource(q.bKb);
    VcardContactUserHeaderPreference localVcardContactUserHeaderPreference = (VcardContactUserHeaderPreference)this.cIG.wn("v_contact_info_header");
    if (localVcardContactUserHeaderPreference != null)
      localVcardContactUserHeaderPreference.b(this.efs);
    this.cIG.wo("c_contact_info_wx_id");
    if (!cj.hX(this.efs.ZH()))
    {
      VcardContactLinkPreference localVcardContactLinkPreference4 = (VcardContactLinkPreference)this.cIG.wn("v_contact_info_photo_uri");
      if (localVcardContactLinkPreference4 != null)
      {
        localVcardContactLinkPreference4.setSummary(this.efs.ZH());
        localVcardContactLinkPreference4.dC(false);
        localVcardContactLinkPreference4.dB(false);
        efv = 2 + efv;
        efw = 2 + efw;
      }
      com.tencent.mm.plugin.scanner.a.k localk1 = this.efs.ZM();
      if ((localk1 != null) && (localk1.ZZ().length() > 0))
        ak(localk1.ZZ(), aal().getString(com.tencent.mm.n.bDP));
      com.tencent.mm.plugin.scanner.a.k localk2 = this.efs.ZN();
      if ((localk2 != null) && (localk2.ZZ().length() > 0))
        ak(localk2.ZZ(), aal().getString(com.tencent.mm.n.bDW));
      com.tencent.mm.plugin.scanner.a.k localk3 = this.efs.ZK();
      if ((localk3 != null) && (localk3.ZZ().length() > 0))
        ak(localk3.ZZ(), aal().getString(com.tencent.mm.n.bDN));
      com.tencent.mm.plugin.scanner.a.k localk4 = this.efs.ZL();
      if ((localk4 != null) && (localk4.ZZ().length() > 0))
        ak(localk4.ZZ(), aal().getString(com.tencent.mm.n.bDN));
      List localList1 = this.efs.ZR();
      if ((localList1 != null) && (localList1.size() > 0))
        a(localList1, "WorkTel", aal().getString(com.tencent.mm.n.bDX));
      List localList2 = this.efs.ZQ();
      if ((localList2 != null) && (localList2.size() > 0))
        a(localList2, "HomeTel", aal().getString(com.tencent.mm.n.bDQ));
      List localList3 = this.efs.ZS();
      if ((localList3 != null) && (localList3.size() > 0))
        a(localList3, "VideoTEL", aal().getString(com.tencent.mm.n.bDV));
      List localList4 = this.efs.ZT();
      if ((localList4 != null) && (localList4.size() > 0))
        a(localList4, "NormalTel", aal().getString(com.tencent.mm.n.bDS));
      List localList5 = this.efs.ZP();
      if ((localList5 != null) && (localList5.size() > 0))
        a(localList5, "CellTel", aal().getString(com.tencent.mm.n.bDO));
      if (cj.hX(this.efs.ZX()))
        break label1030;
      KeyValuePreference localKeyValuePreference4 = (KeyValuePreference)this.cIG.wn("v_contact_info_org");
      if (localKeyValuePreference4 != null)
      {
        localKeyValuePreference4.setSummary(this.efs.ZX());
        localKeyValuePreference4.dC(false);
        localKeyValuePreference4.dB(true);
      }
      label632: if (cj.hX(this.efs.ZV()))
        break label1046;
      KeyValuePreference localKeyValuePreference3 = (KeyValuePreference)this.cIG.wn("v_contact_info_agent");
      if (localKeyValuePreference3 != null)
      {
        localKeyValuePreference3.setSummary(this.efs.ZV());
        localKeyValuePreference3.dC(false);
        localKeyValuePreference3.dB(true);
      }
      label691: if (cj.hX(this.efs.getUrl()))
        break label1062;
      VcardContactLinkPreference localVcardContactLinkPreference3 = (VcardContactLinkPreference)this.cIG.wn("v_contact_info_home_page");
      if (localVcardContactLinkPreference3 != null)
      {
        localVcardContactLinkPreference3.setSummary(this.efs.getUrl());
        localVcardContactLinkPreference3.dC(false);
        localVcardContactLinkPreference3.dB(true);
      }
      label750: if (cj.hX(this.efs.yT()))
        break label1091;
      VcardContactLinkPreference localVcardContactLinkPreference2 = (VcardContactLinkPreference)this.cIG.wn("v_contact_info_email");
      if (localVcardContactLinkPreference2 != null)
      {
        localVcardContactLinkPreference2.setSummary(this.efs.yT());
        localVcardContactLinkPreference2.dC(false);
        localVcardContactLinkPreference2.dB(true);
      }
      label809: if (cj.hX(this.efs.ZJ()))
        break label1107;
      KeyValuePreference localKeyValuePreference2 = (KeyValuePreference)this.cIG.wn("v_contact_info_birthday");
      if (localKeyValuePreference2 != null)
      {
        localKeyValuePreference2.setSummary(this.efs.ZJ());
        localKeyValuePreference2.dC(false);
        localKeyValuePreference2.dB(true);
      }
      label868: if (cj.hX(this.efs.ZW()))
        break label1136;
      KeyValuePreference localKeyValuePreference1 = (KeyValuePreference)this.cIG.wn("v_contact_info_remark");
      if (localKeyValuePreference1 != null)
      {
        localKeyValuePreference1.setSummary(this.efs.ZW());
        localKeyValuePreference1.dC(false);
        localKeyValuePreference1.dB(true);
      }
    }
    while (true)
    {
      if ((this.efs.ZI() == null) || (!this.efs.ZI().aaa().contains("uri")))
        break label1165;
      VcardContactLinkPreference localVcardContactLinkPreference1 = (VcardContactLinkPreference)this.cIG.wn("v_contact_info_logo");
      localVcardContactLinkPreference1.setSummary(this.efs.ZI().aab());
      localVcardContactLinkPreference1.dB(false);
      localVcardContactLinkPreference1.dC(false);
      return;
      this.cIG.wo("v_contact_info_photo_uri");
      this.cIG.wo("v_category_photo_uri");
      break;
      label1030: this.cIG.wo("v_contact_info_org");
      break label632;
      label1046: this.cIG.wo("v_contact_info_agent");
      break label691;
      label1062: this.cIG.wo("v_contact_info_home_page");
      this.cIG.wo("v_category_home_page");
      break label750;
      label1091: this.cIG.wo("v_contact_info_email");
      break label809;
      label1107: this.cIG.wo("v_contact_info_birthday");
      this.cIG.wo("v_category_birthday");
      break label868;
      label1136: this.cIG.wo("v_contact_info_remark");
      this.cIG.wo("v_category_remark");
    }
    label1165: this.cIG.wo("v_contact_info_logo");
    this.cIG.wo("v_category_logo");
  }

  public final int Gc()
  {
    return -1;
  }

  public final boolean a(com.tencent.mm.ui.base.preference.n paramn, Preference paramPreference)
  {
    if (paramPreference.getKey().equals("add_vcard_contact"))
    {
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = getString(com.tencent.mm.n.bDM);
      arrayOfString3[1] = getString(com.tencent.mm.n.bDL);
      h.b(this, "", arrayOfString3, "", new bw(this));
      return true;
    }
    if ((paramPreference.getKey().equals("v_contact_info_photo_uri")) || (paramPreference.getKey().equals("v_contact_info_home_page")) || (paramPreference.getKey().equals("v_contact_info_logo")))
    {
      String str1 = paramPreference.getSummary().toString();
      if ((str1 != null) && (str1.length() > 0))
      {
        this.efu.mD(str1);
        return true;
      }
    }
    else if ((eft.contains(paramPreference.getKey())) && (!paramPreference.getKey().toLowerCase().contains("fax")))
    {
      String str3 = paramPreference.getSummary().toString().trim();
      if ((str3 != null) && (str3.length() > 0))
      {
        String[] arrayOfString2 = new String[1];
        arrayOfString2[0] = getString(com.tencent.mm.n.bgY);
        h.b(this, "", arrayOfString2, "", new bt(this, str3));
        return true;
      }
    }
    else if (paramPreference.getKey().equals("v_contact_info_email"))
    {
      String str2 = paramPreference.getSummary().toString();
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = aal().getString(com.tencent.mm.n.bxW);
      arrayOfString1[1] = aal().getString(com.tencent.mm.n.bxV);
      h.b(this, "", arrayOfString1, "", new bu(this, str2));
    }
    return false;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.VcardContactUI
 * JD-Core Version:    0.6.2
 */