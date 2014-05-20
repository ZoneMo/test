package com.tencent.mm.ui;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.ListView;
import android.widget.Toast;
import com.tencent.mm.c.a.dr;
import com.tencent.mm.c.a.gy;
import com.tencent.mm.c.a.ha;
import com.tencent.mm.model.at;
import com.tencent.mm.model.be;
import com.tencent.mm.model.r;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.pluginsdk.ai;
import com.tencent.mm.pluginsdk.aj;
import com.tencent.mm.pluginsdk.ui.applet.ContactListExpandPreference;
import com.tencent.mm.pluginsdk.ui.e;
import com.tencent.mm.protocal.a.mp;
import com.tencent.mm.protocal.a.nx;
import com.tencent.mm.protocal.a.ny;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.az;
import com.tencent.mm.storage.bm;
import com.tencent.mm.storage.c;
import com.tencent.mm.storage.k;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.base.preference.CheckBoxPreference;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.PreferenceCategory;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.chatting.ChattingUI;
import com.tencent.mm.ui.contact.ModRemarkNameUI;
import com.tencent.mm.ui.setting.SelfQRCodeUI;
import com.tencent.mm.ui.setting.SettingsChattingBackgroundUI;
import com.tencent.mm.ui.setting.SignaturePreference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

public class RoomInfoUI extends MMPreference
  implements m, ai, com.tencent.mm.sdk.e.al, com.tencent.mm.sdk.e.ar
{
  private String bNl;
  private boolean bOk;
  private n cIG;
  private ProgressDialog cIr = null;
  private com.tencent.mm.storage.i cQI;
  private boolean cQb = false;
  private com.tencent.mm.storage.b cWL = null;
  private String cWy;
  private SharedPreferences chz = null;
  private String dLR;
  private com.tencent.mm.pluginsdk.c.b dgd = new eg(this);
  private ContactListExpandPreference eHm;
  private String goF = "";
  private SignaturePreference goH;
  private CheckBoxPreference goI;
  private boolean goL = false;
  private boolean goO;
  private CheckBoxPreference goP;
  private CheckBoxPreference goQ;
  private SignaturePreference goR;
  private CheckBoxPreference goS;
  private Preference goT;
  private boolean goU;
  private boolean goV = false;
  private int goW;
  private boolean goX;
  private e goY = new e(new ei(this));
  boolean goZ = false;
  private Handler handler = new du(this, Looper.getMainLooper());

  private void Jc()
  {
    this.handler.post(new ek(this));
  }

  private void a(int paramInt1, int paramInt2, com.tencent.mm.plugin.chatroom.a.a parama)
  {
    boolean bool1;
    String str1;
    String str2;
    String str3;
    com.tencent.mm.storage.b localb;
    if (paramInt2 != 0)
    {
      bool1 = true;
      Assert.assertTrue(bool1);
      str1 = "";
      str2 = "";
      str3 = com.tencent.mm.sdk.platformtools.al.getContext().getString(2131166738);
      localb = be.uz().sA().tt(this.cWy);
      if ((paramInt2 != -116) || (!com.tencent.mm.plugin.a.FK()) || (com.tencent.mm.platformtools.au.hX(localb.field_roomowner)))
        break label825;
      str1 = getString(2131167600);
      str2 = getString(2131167599);
    }
    label819: label825: for (int i = 1; ; i = 0)
    {
      if (paramInt2 == -23)
      {
        str1 = getString(2131167598);
        str2 = getString(2131167596);
      }
      if (paramInt2 == -109)
      {
        str1 = getString(2131167602);
        str2 = getString(2131167601);
      }
      com.tencent.mm.storage.i locali;
      if (paramInt2 == -122)
      {
        str1 = getString(2131167598);
        locali = be.uz().su().tO(localb.field_roomowner);
        if ((locali == null) || (locali.rj() <= 0))
          break label819;
      }
      for (String str6 = locali.ru(); ; str6 = null)
      {
        String str7;
        label206: List localList1;
        boolean bool2;
        label322: String str4;
        Object[] arrayOfObject6;
        if (com.tencent.mm.platformtools.au.hX(str6))
        {
          str7 = localb.field_roomowner;
          if (this.cWL == null)
            str6 = null;
        }
        else
        {
          if ((com.tencent.mm.platformtools.au.hX(str6)) && (locali != null) && (locali.rj() > 0))
            str6 = locali.rq();
          if (com.tencent.mm.platformtools.au.hX(str6))
            str6 = localb.field_roomowner;
          Object[] arrayOfObject7 = new Object[2];
          arrayOfObject7[0] = str6;
          arrayOfObject7[1] = Integer.valueOf(localb.aAj());
          str2 = getString(2131167597, arrayOfObject7);
          localList1 = parama.Kj();
          if ((localList1 == null) || (localList1.size() <= 0))
            break label486;
          if ((localList1 == null) || (localList1.size() <= 0))
            break label446;
          bool2 = true;
          Assert.assertTrue(bool2);
          str4 = com.tencent.mm.sdk.platformtools.al.getContext().getString(2131166738);
          if (localList1.size() != 1)
            break label452;
          arrayOfObject6 = new Object[1];
          arrayOfObject6[0] = com.tencent.mm.platformtools.au.a(aA(localList1), str4);
        }
        label446: label452: Object[] arrayOfObject5;
        for (String str5 = getString(2131165301, arrayOfObject6); ; str5 = getString(2131165300, arrayOfObject5))
        {
          com.tencent.mm.ui.base.h.a(this, str5, getString(2131167539), new ed(this, localList1), new ee(this));
          return;
          bool1 = false;
          break;
          if (!this.cWL.aAk())
          {
            str6 = null;
            break label206;
          }
          str6 = this.cWL.cu(str7);
          break label206;
          bool2 = false;
          break label322;
          arrayOfObject5 = new Object[1];
          arrayOfObject5[0] = com.tencent.mm.platformtools.au.a(aA(localList1), str4);
        }
        label486: List localList2 = parama.Ki();
        if ((localList2 != null) && (localList2.size() > 0))
        {
          str1 = getString(2131167539);
          StringBuilder localStringBuilder3 = new StringBuilder().append(str2);
          Object[] arrayOfObject4 = new Object[1];
          arrayOfObject4[0] = com.tencent.mm.platformtools.au.a(aA(localList2), str3);
          str2 = getString(2131165292, arrayOfObject4);
        }
        List localList3 = parama.Kh();
        if ((localList3 != null) && (localList3.size() > 0))
        {
          str1 = getString(2131167539);
          StringBuilder localStringBuilder2 = new StringBuilder().append(str2);
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = com.tencent.mm.platformtools.au.a(aA(localList3), str3);
          str2 = getString(2131165290, arrayOfObject3);
        }
        List localList4 = parama.Kg();
        if ((localList4 != null) && (localList4.size() > 0))
        {
          str1 = getString(2131167539);
          StringBuilder localStringBuilder1 = new StringBuilder().append(str2);
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = com.tencent.mm.platformtools.au.a(aA(localList4), str3);
          str2 = getString(2131165291, arrayOfObject2);
        }
        if ((str1 != null) && (str1.length() > 0))
        {
          if (i != 0)
          {
            com.tencent.mm.ui.base.h.a(this, str2, str1, new ec(this), null);
            return;
          }
          com.tencent.mm.ui.base.h.p(this, str2, str1);
          return;
        }
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = Integer.valueOf(paramInt1);
        arrayOfObject1[1] = Integer.valueOf(paramInt2);
        Toast.makeText(this, getString(2131165281, arrayOfObject1), 0).show();
        return;
      }
    }
  }

  public static void a(String paramString, com.tencent.mm.storage.b paramb, boolean paramBoolean)
  {
    int i = 1;
    paramb.cS(paramBoolean);
    be.uz().sA().a(paramb, new String[0]);
    String str = v.th();
    ny localny = new ny();
    localny.fEJ = paramString;
    localny.eBo = str;
    localny.fOV = i;
    if (paramBoolean);
    while (true)
    {
      localny.fOW = i;
      be.uz().st().a(new az(49, localny));
      be.uA().d(new com.tencent.mm.z.i(5));
      return;
      i = 2;
    }
  }

  private static List aA(List paramList)
  {
    LinkedList localLinkedList = new LinkedList();
    if (!be.se())
      return localLinkedList;
    if (paramList == null)
      return localLinkedList;
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      com.tencent.mm.storage.i locali = be.uz().su().tO(str);
      if ((locali != null) && (locali.rj() != 0))
        str = locali.rr();
      localLinkedList.add(str);
    }
    return localLinkedList;
  }

  private void aFA()
  {
    if (this.eHm != null)
    {
      if (!this.bOk)
        break label35;
      aFy();
    }
    while (true)
    {
      this.eHm.notifyChanged();
      this.cIG.notifyDataSetChanged();
      return;
      label35: if (!this.goO)
      {
        LinkedList localLinkedList = new LinkedList();
        localLinkedList.add(this.cWy);
        this.eHm.d(this.cWy, localLinkedList);
      }
    }
  }

  private String aFu()
  {
    if (this.cWL == null)
      return "";
    return this.cWL.field_selfDisplayName;
  }

  private void aFw()
  {
    if (this.chz == null)
      this.chz = getSharedPreferences(getPackageName() + "_preferences", 0);
    boolean bool;
    if (this.bOk)
      if (this.cQI.ry() == 0)
      {
        bool = true;
        this.goX = bool;
        label63: if (!this.goX)
          break label142;
        mG(0);
        if (this.goI != null)
          this.chz.edit().putBoolean("room_notify_new_msg", false).commit();
      }
    while (true)
    {
      this.cIG.notifyDataSetChanged();
      return;
      bool = false;
      break;
      if (this.goO)
        break label63;
      this.goX = this.cQI.rf();
      break label63;
      label142: mG(8);
      if (this.goI != null)
        this.chz.edit().putBoolean("room_notify_new_msg", true).commit();
    }
  }

  private void aFx()
  {
    if (!com.tencent.mm.plugin.a.FK())
    {
      this.cIG.O("room_upgrade_entry", true);
      return;
    }
    long l1 = System.currentTimeMillis();
    if (this.cWL != null)
    {
      int i = this.cWL.aAj();
      if (i > 0)
      {
        Preference localPreference2 = this.goT;
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Integer.valueOf(i);
        localPreference2.setSummary(getString(2131167610, arrayOfObject3));
        if ((!com.tencent.mm.platformtools.au.hX(this.cWL.field_roomowner)) && (i != 0))
          break label192;
        this.goT.setEnabled(false);
        label106: this.cIG.notifyDataSetChanged();
      }
    }
    while (true)
    {
      long l2 = System.currentTimeMillis() - l1;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Long.valueOf(l2);
      aa.e("MicroMsg.RoomInfoUI", "updateChatroomUpgraderEntry during : %s", arrayOfObject1);
      return;
      Preference localPreference1 = this.goT;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(Math.max(this.goW, 40));
      localPreference1.setSummary(getString(2131167610, arrayOfObject2));
      break;
      label192: this.goT.setEnabled(true);
      break label106;
      this.cIG.O("room_upgrade_entry", true);
    }
  }

  private void aFy()
  {
    List localList;
    if (this.eHm != null)
    {
      if (!this.bOk)
        break label97;
      localList = r.cg(this.cWy);
      if (localList == null)
        break label70;
      this.goW = localList.size();
      if (this.goW > 1)
        break label78;
      this.eHm.ct(true).cu(false);
    }
    while (true)
    {
      this.eHm.d(this.cWy, localList);
      return;
      label70: this.goW = 0;
      break;
      label78: this.eHm.ct(true).cu(this.goV);
    }
    label97: LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(this.cWy);
    this.eHm.d(this.cWy, localLinkedList);
  }

  private void aFz()
  {
    if (this.cQI != null)
    {
      String str = aFu();
      if (com.tencent.mm.platformtools.au.hX(str))
        str = v.tj();
      if (!com.tencent.mm.platformtools.au.hX(str))
      {
        SignaturePreference localSignaturePreference = this.goR;
        if (str.length() <= 0)
          str = getString(2131167805);
        localSignaturePreference.setSummary(com.tencent.mm.ao.b.e(this, str, -2));
      }
    }
    else
    {
      return;
    }
    this.goR.setSummary("");
  }

  private void aiA()
  {
    if (this.bOk)
    {
      this.goW = r.ci(this.cWy);
      if (this.goW == 0)
        vT(getString(2131167535));
    }
    else
    {
      return;
    }
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = getString(2131167535);
    arrayOfObject[1] = Integer.valueOf(this.goW);
    vT(getString(2131165299, arrayOfObject));
  }

  public static ArrayList az(List paramList)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramList == null)
      return localArrayList;
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      mp localmp = (mp)localIterator.next();
      com.tencent.mm.storage.i locali = new com.tencent.mm.storage.i();
      locali.setUsername(localmp.eBo);
      locali.bt(localmp.fDe);
      localArrayList.add(locali);
    }
    return localArrayList;
  }

  protected final void FR()
  {
    this.cIG = aIj();
    String str2;
    label85: com.tencent.mm.storage.i locali;
    label262: label479: com.tencent.mm.storage.b localb2;
    if (this.bOk)
      if (this.goW == 0)
      {
        vT(getString(2131167535));
        com.tencent.mm.storage.b localb1 = this.cWL;
        str2 = null;
        if (localb1 != null)
        {
          str2 = this.cWL.field_roomowner;
          this.goW = this.cWL.aAe().size();
        }
        if (!com.tencent.mm.platformtools.au.hX(str2))
          break label685;
        this.goV = false;
        aa.d("MicroMsg.RoomInfoUI", "initBaseChatRoomView()");
        this.eHm = ((ContactListExpandPreference)this.cIG.wn("roominfo_contact_anchor"));
        this.eHm.a(this.cIG, this.eHm.getKey());
        this.goH = ((SignaturePreference)this.cIG.wn("room_name"));
        this.goI = ((CheckBoxPreference)this.cIG.wn("room_notify_new_msg"));
        this.goP = ((CheckBoxPreference)this.cIG.wn("room_save_to_contact"));
        this.goQ = ((CheckBoxPreference)this.cIG.wn("room_placed_to_the_top"));
        this.goR = ((SignaturePreference)this.cIG.wn("room_nickname"));
        this.goT = this.cIG.wn("room_upgrade_entry");
        if (!this.goV)
          break label700;
        this.eHm.ct(true).cu(true);
        this.eHm.arX();
        this.eHm.qH(this.cWL.field_roomowner);
        this.eHm.arY();
        this.eHm.arV();
        aa.d("MicroMsg.RoomInfoUI", "updatePlaceTop()");
        if (this.chz == null)
          this.chz = getSharedPreferences(getPackageName() + "_preferences", 0);
        if (this.goQ != null)
        {
          if (this.cQI == null)
            break label758;
          if (be.uz().sx().tZ(this.cQI.getUsername()) != null)
            break label716;
          this.goQ.setEnabled(false);
        }
        label386: this.cIG.notifyDataSetChanged();
        aa.d("MicroMsg.RoomInfoUI", "updateSaveToContact()");
        if (this.chz == null)
          this.chz = getSharedPreferences(getPackageName() + "_preferences", 0);
        if (this.goP == null)
          break label813;
        locali = be.uz().su().tO(this.cWy);
        if (locali != null)
          break label785;
        aa.e("MicroMsg.RoomInfoUI", "contact == null !!!");
        aa.d("MicroMsg.RoomInfoUI", "updateDisplayNickname()");
        if (this.chz == null)
          this.chz = getSharedPreferences(getPackageName() + "_preferences", 0);
        localb2 = be.uz().sA().ts(this.cWy);
        if (localb2 != null)
          break label825;
        aa.e("MicroMsg.RoomInfoUI", "members == null !!!");
        label556: if (this.eHm != null)
          if (!this.bOk)
          {
            if (!this.goO)
              break label1467;
            this.eHm.z(new ArrayList());
          }
      }
    while (true)
    {
      getListView().setOnScrollListener(this.goY);
      this.eHm.a(this.goY);
      this.eHm.a(new er(this));
      a(new es(this));
      return;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = getString(2131167535);
      arrayOfObject[1] = Integer.valueOf(this.goW);
      vT(getString(2131165299, arrayOfObject));
      break;
      label685: this.goV = str2.equals(v.th());
      break label85;
      label700: this.eHm.ct(true).cu(false);
      break label262;
      label716: this.chz.edit().putBoolean("room_placed_to_the_top", be.uz().sx().ud(this.cQI.getUsername())).commit();
      break label386;
      label758: this.chz.edit().putBoolean("room_placed_to_the_top", false).commit();
      break label386;
      label785: this.chz.edit().putBoolean("room_save_to_contact", locali.rb()).commit();
      label813: this.cIG.notifyDataSetChanged();
      break label479;
      label825: this.goU = localb2.aAk();
      this.goS = ((CheckBoxPreference)this.cIG.wn("room_msg_show_username"));
      if (this.goS != null)
        this.chz.edit().putBoolean("room_msg_show_username", this.goU).commit();
      this.cIG.notifyDataSetChanged();
      break label556;
      RoomInfoUI localRoomInfoUI;
      if (this.goO)
      {
        this.goV = false;
        vT(getString(2131167653));
        this.eHm = ((ContactListExpandPreference)this.cIG.wn("roominfo_contact_anchor"));
        this.eHm.a(this.cIG, this.eHm.getKey());
        this.eHm.ct(false).cu(false);
        this.eHm.a(new et(this));
        this.cIG.removeAll();
        this.cIG.b(new PreferenceCategory(this));
        this.cIG.b(this.eHm);
        String str1 = this.cWy;
        dr localdr = new dr();
        localdr.bOH.bOe = str1;
        com.tencent.mm.sdk.b.a.ayH().f(localdr);
        getString(2131167675);
        this.cIr = com.tencent.mm.ui.base.h.a(this, getString(2131167650), true, new ej(this, localdr));
        localRoomInfoUI = this;
      }
      while (true)
      {
        localRoomInfoUI.cIG.notifyDataSetChanged();
        break;
        vT(getString(2131167535));
        this.cIG.removeAll();
        this.cIG.addPreferencesFromResource(2131034164);
        this.eHm = ((ContactListExpandPreference)this.cIG.wn("roominfo_contact_anchor"));
        this.eHm.a(this.cIG, this.eHm.getKey());
        this.eHm.ct(true).cu(false);
        if ((this.cQI != null) && (this.cQI.field_deleteFlag == 1))
          this.eHm.ct(false);
        this.goI = ((CheckBoxPreference)this.cIG.wn("room_notify_new_msg"));
        this.goQ = ((CheckBoxPreference)this.cIG.wn("room_placed_to_the_top"));
        if (this.chz == null)
          this.chz = getSharedPreferences(getPackageName() + "_preferences", 0);
        if (this.cQI != null)
        {
          label1330: SharedPreferences.Editor localEditor;
          if (be.uz().sx().tZ(this.cQI.getUsername()) == null)
          {
            this.goQ.setEnabled(false);
            this.goX = this.cQI.rf();
            localEditor = this.chz.edit();
            if (this.goX)
              break label1427;
          }
          label1427: for (boolean bool = true; ; bool = false)
          {
            localEditor.putBoolean("room_notify_new_msg", bool).commit();
            localRoomInfoUI = this;
            break;
            this.chz.edit().putBoolean("room_placed_to_the_top", be.uz().sx().ud(this.cQI.getUsername())).commit();
            break label1330;
          }
        }
        this.chz.edit().putBoolean("room_notify_new_msg", true).commit();
        this.goX = false;
        localRoomInfoUI = this;
      }
      label1467: LinkedList localLinkedList = new LinkedList();
      localLinkedList.add(this.cWy);
      this.eHm.d(this.cWy, localLinkedList);
    }
  }

  public final int Gc()
  {
    return 2131034163;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    aa.i("MicroMsg.RoomInfoUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    aa.d("MicroMsg.RoomInfoUI", "pre is " + this.goW);
    this.goW = r.ci(this.cWy);
    aa.d("MicroMsg.RoomInfoUI", "now is " + this.goW);
    if (this.cIr != null)
      this.cIr.dismiss();
    if ((paramInt1 != 0) || (paramInt2 != 0))
    {
      if (paramx.getType() == 120)
      {
        a(paramInt1, paramInt2, (com.tencent.mm.plugin.chatroom.a.a)paramx);
        aFA();
      }
      if ((paramx.getType() == 179) && (paramInt2 == -66))
      {
        com.tencent.mm.ui.base.h.p(this, getString(2131167541), getString(2131167675));
        aFA();
      }
      return;
    }
    if ((paramInt1 == 0) && (paramInt2 == 0))
      switch (paramx.getType())
      {
      default:
      case 120:
      case 179:
      }
    while (true)
    {
      aiA();
      return;
      aFA();
      continue;
      aFA();
    }
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    ca((String)paramObject);
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    int i = 1;
    String str1 = paramPreference.getKey();
    if (str1.equals("room_name"))
    {
      Intent localIntent1 = new Intent();
      localIntent1.setClass(this, ModRemarkNameUI.class);
      localIntent1.putExtra("Contact_mode_name_type", i);
      localIntent1.putExtra("Contact_User", this.cWy);
      startActivity(localIntent1);
    }
    label300: label321: boolean bool1;
    label440: label602: 
    do
    {
      SharedPreferences localSharedPreferences;
      do
      {
        com.tencent.mm.storage.i locali;
        do
        {
          do
          {
            return false;
            if (!str1.equals("room_upgrade_entry"))
              break;
          }
          while ((com.tencent.mm.platformtools.au.hX(this.cWL.field_roomowner)) && (this.cWL.aAj() <= 40));
          com.tencent.mm.plugin.a.y(this, this.cWy);
          return false;
          if (str1.equals("room_qr_code"))
          {
            Intent localIntent2 = new Intent();
            localIntent2.setClass(this, SelfQRCodeUI.class);
            localIntent2.putExtra("from_userName", this.cWy);
            startActivity(localIntent2);
            return false;
          }
          if (str1.equals("room_notify_new_msg"))
          {
            if (!this.goX)
            {
              int j = i;
              this.goX = j;
              if (!this.bOk)
                break label300;
              if (this.goX)
                i = 0;
              be.uz().st().a(new bm(this.cWy, i));
              this.cQI = be.uz().su().tO(this.cWy);
              this.cQI.bT(i);
              be.uz().su().a(this.cWy, this.cQI);
              be.uA().d(new com.tencent.mm.z.i(5));
            }
            while (this.goO)
            {
              aFw();
              return false;
              int k = 0;
              break;
            }
            SharedPreferences.Editor localEditor3;
            if (this.goX)
            {
              w.i(this.cQI);
              this.cQI = be.uz().su().tO(this.cWy);
              be.uA().d(new com.tencent.mm.z.i(5));
              if (this.chz == null)
                this.chz = getSharedPreferences(getPackageName() + "_preferences", 0);
              localEditor3 = this.chz.edit();
              if (this.goX)
                break label440;
            }
            while (true)
            {
              localEditor3.putBoolean("room_notify_new_msg", i).commit();
              break;
              w.j(this.cQI);
              break label321;
              bool1 = false;
            }
          }
          if (!str1.equals("room_save_to_contact"))
            break;
          if (this.chz == null)
            this.chz = getSharedPreferences(getPackageName() + "_preferences", 0);
          locali = be.uz().su().tO(this.cWy);
        }
        while (locali == null);
        boolean bool4 = locali.rb();
        SharedPreferences.Editor localEditor2 = this.chz.edit();
        if (!bool4)
        {
          localEditor2.putBoolean("room_save_to_contact", bool1).commit();
          if (!bool4)
            break label602;
          locali.qJ();
          w.n(locali);
          com.tencent.mm.ui.base.h.an(this, getString(2131167561));
        }
        while (true)
        {
          Jc();
          this.cIG.notifyDataSetChanged();
          return false;
          bool1 = false;
          break;
          w.l(locali);
          com.tencent.mm.ui.base.h.an(this, getString(2131167560));
        }
        if (!str1.equals("room_placed_to_the_top"))
          break;
        localSharedPreferences = getSharedPreferences(this.goF, 0);
      }
      while (this.cQI == null);
      if (be.uz().sx().ud(this.cQI.getUsername()))
        w.f(this.cQI.getUsername(), bool1);
      while (true)
      {
        localSharedPreferences.edit().putBoolean("room_placed_to_the_top", be.uz().sx().ud(this.cQI.getUsername())).commit();
        be.uA().d(new com.tencent.mm.z.i(5));
        return false;
        w.e(this.cQI.getUsername(), bool1);
      }
      if (str1.equals("room_nickname"))
      {
        Intent localIntent3 = new Intent();
        localIntent3.setClass(this, ModRemarkNameUI.class);
        localIntent3.putExtra("Contact_mode_name_type", 4);
        String str2 = v.th();
        String str3 = aFu();
        if (com.tencent.mm.platformtools.au.hX(str3))
          str3 = v.tj();
        localIntent3.putExtra("Contact_Nick", str3);
        localIntent3.putExtra("Contact_User", str2);
        aal().startActivityForResult(localIntent3, 3);
        return false;
      }
      if (str1.equals("room_msg_show_username"))
      {
        SharedPreferences.Editor localEditor1 = getSharedPreferences(this.goF, 0).edit();
        boolean bool2;
        if (!this.goU)
        {
          bool2 = bool1;
          localEditor1.putBoolean("room_msg_show_username", bool2).commit();
          if (this.goU)
            break label931;
        }
        for (boolean bool3 = bool1; ; bool3 = false)
        {
          this.goU = bool3;
          this.goL = bool1;
          return false;
          bool2 = false;
          break;
        }
      }
      if (str1.equals("room_set_chatting_background"))
      {
        Intent localIntent4 = new Intent();
        localIntent4.setClass(this, SettingsChattingBackgroundUI.class);
        localIntent4.putExtra("isApplyToAll", false);
        localIntent4.putExtra("username", this.cQI.getUsername());
        startActivityForResult(localIntent4, 2);
        return false;
      }
      if (str1.equals("room_search_chatting_content"))
      {
        Intent localIntent5 = new Intent(this, ChattingUI.class);
        localIntent5.putExtra("Chat_User", this.bNl);
        localIntent5.putExtra("search_chat_content", bool1);
        localIntent5.putExtra("finish_direct", bool1);
        startActivity(localIntent5);
        return false;
      }
      if (str1.equals("room_clear_chatting_history"))
      {
        if (this.bOk);
        Object[] arrayOfObject;
        for (String str4 = getString(2131165286); ; str4 = getString(2131165284, arrayOfObject))
        {
          com.tencent.mm.ui.base.h.a(aal(), bool1, str4, "", getString(2131167690), getString(2131167681), new dv(this), null);
          return false;
          arrayOfObject = new Object[bool1];
          arrayOfObject[0] = this.cQI.rr();
        }
      }
      if (str1.equals("room_report_it"))
      {
        Intent localIntent6 = new Intent(this, ExposeUI.class);
        localIntent6.putExtra("k_username", this.cWy);
        localIntent6.putExtra("k_expose_scene", 36);
        startActivity(localIntent6);
        return false;
      }
    }
    while (!str1.equals("room_del_quit"));
    label931: aa.d("MicroMsg.RoomInfoUI", " quit " + this.cWy);
    gy localgy = new gy();
    localgy.bQS.bQU = bool1;
    com.tencent.mm.sdk.b.a.ayH().f(localgy);
    if ((!com.tencent.mm.platformtools.au.hX(this.cWy)) && (this.cWy.equals(localgy.bQT.bQW)));
    while (true)
    {
      if (bool1)
        aa.d("MicroMsg.RoomInfoUI", " quit talkroom" + this.cWy);
      com.tencent.mm.ui.base.h.a(aal(), getString(2131167542), "", new dy(this, bool1), null);
      return false;
      bool1 = false;
    }
  }

  public final com.tencent.mm.ui.base.preference.x c(SharedPreferences paramSharedPreferences)
  {
    return new com.tencent.mm.ui.base.preference.b(this, paramSharedPreferences);
  }

  public final void ca(String paramString)
  {
    if (com.tencent.mm.platformtools.au.hX(paramString));
    do
    {
      return;
      if (!paramString.endsWith("@chatroom"))
      {
        aa.d("MicroMsg.RoomInfoUI", "event:" + paramString + " cancel");
        return;
      }
      aa.d("MicroMsg.RoomInfoUI", "event:" + paramString);
    }
    while ((!this.bOk) || (!paramString.equals(this.cWy)));
    new Thread(new el(this)).start();
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 != -1);
    do
    {
      return;
      switch (paramInt1)
      {
      default:
        return;
      case 1:
      case 2:
      case 3:
      }
    }
    while (paramIntent == null);
    String str3 = paramIntent.getStringExtra("Select_Contact");
    if (!w.co(str3))
    {
      com.tencent.mm.ui.base.h.p(this, getString(2131167605), getString(2131167675));
      return;
    }
    int i;
    if (com.tencent.mm.platformtools.au.hW(v.th()).equals(str3))
      i = 1;
    while (i != 0)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(0);
      arrayOfObject[1] = Integer.valueOf(0);
      com.tencent.mm.ui.base.h.p(this, getString(2131167544, arrayOfObject), getString(2131167675));
      return;
      List localList1 = r.cg(this.cWy);
      if (localList1 == null)
      {
        i = 0;
      }
      else
      {
        Iterator localIterator = localList1.iterator();
        i = 0;
        label180: if (localIterator.hasNext())
          if (!((String)localIterator.next()).equals(str3))
            break label445;
      }
    }
    label445: for (int j = 1; ; j = i)
    {
      i = j;
      break label180;
      List localList2 = com.tencent.mm.platformtools.au.c(str3.split(","));
      if (localList2 == null)
        break;
      com.tencent.mm.plugin.chatroom.a.a locala = new com.tencent.mm.plugin.chatroom.a.a(this.cWy, localList2);
      getString(2131167675);
      this.cIr = com.tencent.mm.ui.base.h.a(this, getString(2131167538), true, new eq(this, locala));
      be.uA().d(locala);
      return;
      if (paramInt2 != -1)
        break;
      finish();
      return;
      if (paramIntent == null)
        break;
      String str1 = com.tencent.mm.platformtools.au.R(paramIntent.getStringExtra("Contact_Nick"), "");
      if (com.tencent.mm.platformtools.au.hX(str1))
        break;
      String str2 = v.th();
      if (this.cWL == null)
        break;
      this.cWL.field_chatroomname = this.cWy;
      this.cWL.field_selfDisplayName = str1;
      be.uz().sA().a(this.cWL, new String[0]);
      nx localnx = new nx();
      localnx.fEJ = this.cWy;
      localnx.eBo = str2;
      localnx.fDf = com.tencent.mm.platformtools.au.hW(str1);
      be.uz().st().a(new az(48, localnx));
      Jc();
      aFz();
      return;
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    be.uA().a(120, this);
    be.uA().a(179, this);
    be.uA().a(480, this);
    com.tencent.mm.pluginsdk.c.b.a("NetSceneLbsRoomGetMember", this.dgd);
    be.uz().su().a(this);
    be.uz().sA().e(this);
    if (com.tencent.mm.pluginsdk.h.apl() != null)
      com.tencent.mm.pluginsdk.h.apl().a(this);
    this.dLR = getIntent().getStringExtra("Chat_User");
    this.cWy = getIntent().getStringExtra("RoomInfo_Id");
    if (this.cWy == null)
      this.cWy = getIntent().getStringExtra("Single_Chat_Talker");
    em localem;
    label296: 
    do
      for (this.bNl = this.cWy; ; this.bNl = this.dLR)
      {
        this.cQI = be.uz().su().tO(this.cWy);
        this.bOk = getIntent().getBooleanExtra("Is_Chatroom", true);
        this.goO = getIntent().getBooleanExtra("Is_Lbsroom", false);
        this.goF = (getPackageName() + "_preferences");
        if (this.bOk)
          this.cWL = be.uz().sA().ts(this.cWy);
        FR();
        if (this.bOk)
        {
          localem = new em(this);
          if (this.cWL != null)
            break label296;
          com.tencent.mm.model.ar.tZ().a(this.cWy, localem);
        }
        return;
        if (com.tencent.mm.platformtools.au.hX(this.dLR))
          break;
      }
    while (System.currentTimeMillis() - this.cWL.field_modifytime < 86400000L);
    new Thread(new eo(this, localem)).start();
  }

  public void onDestroy()
  {
    if (this.eHm != null)
      ContactListExpandPreference.onDetach();
    com.tencent.mm.ui.b.a.dismiss();
    be.uA().b(120, this);
    be.uA().b(179, this);
    be.uA().b(480, this);
    com.tencent.mm.pluginsdk.c.b.b("NetSceneLbsRoomGetMember", this.dgd);
    if (be.se())
    {
      be.uz().su().b(this);
      be.uz().sA().f(this);
    }
    if (com.tencent.mm.pluginsdk.h.apl() != null)
      com.tencent.mm.pluginsdk.h.apl().b(this);
    super.onDestroy();
  }

  public void onPause()
  {
    super.onPause();
    if ((!this.goL) || (!this.bOk) || (this.cWL == null))
      return;
    a(this.cWy, this.cWL, this.goU);
  }

  public void onResume()
  {
    int j;
    if ((this.cQI != null) && (this.goH != null))
    {
      this.cQI = be.uz().su().tO(this.cWy);
      String str2 = this.cQI.kn();
      if ((!com.tencent.mm.platformtools.au.hX(str2)) && (str2.length() <= 50))
        break label220;
      j = 0;
      if (j == 0)
        break label226;
      String str3 = this.cQI.rr();
      SignaturePreference localSignaturePreference = this.goH;
      if (str3.length() <= 0)
        str3 = getString(2131167805);
      localSignaturePreference.setSummary(com.tencent.mm.ao.b.e(this, str3, -2));
    }
    while (true)
    {
      aiA();
      aFw();
      if (this.bOk)
      {
        aFx();
        aFz();
      }
      aFy();
      this.cIG.notifyDataSetChanged();
      super.onResume();
      if (!this.goZ)
      {
        String str1 = getIntent().getStringExtra("need_matte_high_light_item");
        if (!com.tencent.mm.platformtools.au.hX(str1))
        {
          int i = this.cIG.wp(str1);
          setSelection(i - 3);
          aFa().postDelayed(new ep(this, i), 10L);
        }
        this.goZ = true;
      }
      return;
      label220: j = 1;
      break;
      label226: this.goH.setSummary(getString(2131167552));
    }
  }

  public final void r(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1.equals(this.cWy)) && (this.eHm != null))
      this.eHm.notifyChanged();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.RoomInfoUI
 * JD-Core Version:    0.6.2
 */