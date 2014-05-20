package com.tencent.mm.ui;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.protocal.a.nx;
import com.tencent.mm.protocal.a.ny;
import com.tencent.mm.sdk.e.al;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.az;
import com.tencent.mm.storage.bm;
import com.tencent.mm.storage.c;
import com.tencent.mm.storage.k;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.CheckBoxPreference;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.contact.ModRemarkNameUI;
import com.tencent.mm.ui.setting.SettingsChattingBackgroundUI;
import com.tencent.mm.ui.setting.SignaturePreference;

@Deprecated
public class RoomInfoDetailUI extends MMPreference
  implements al
{
  private boolean bOk;
  private n cIG;
  private com.tencent.mm.storage.i cQI;
  private boolean cQb = false;
  private String cWy;
  private String goF;
  private int goG;
  private SignaturePreference goH;
  private CheckBoxPreference goI;
  private CheckBoxPreference goJ;
  private CheckBoxPreference goK;
  private boolean goL = false;

  private void Jc()
  {
    new Handler(Looper.getMainLooper()).post(new dt(this));
  }

  private String aFu()
  {
    com.tencent.mm.storage.b localb = be.uz().sA().ts(this.cWy);
    if (localb == null)
      return "";
    return localb.field_selfDisplayName;
  }

  private void aFv()
  {
    if ((this.cQI != null) && (this.goH != null))
    {
      String str = aFu();
      if (com.tencent.mm.platformtools.au.hX(str))
        str = v.tj();
      if (!com.tencent.mm.platformtools.au.hX(str))
      {
        SignaturePreference localSignaturePreference = this.goH;
        if (str.length() <= 0)
          str = getString(2131167805);
        localSignaturePreference.setSummary(com.tencent.mm.ao.b.e(this, str, -2));
      }
    }
    else
    {
      return;
    }
    this.goH.setSummary("");
  }

  private void aFw()
  {
    int i = 1;
    if (!this.bOk)
      return;
    SharedPreferences localSharedPreferences = getSharedPreferences(this.goF, 0);
    n localn;
    if (this.goG == 0)
    {
      mG(0);
      if (this.goI != null)
      {
        this.goI.setChecked(i);
        localSharedPreferences.edit().putBoolean("room_msg_notify", i).commit();
      }
      if (this.goK != null)
        this.goK.setChecked(rg());
      localn = this.cIG;
      if (this.goG != i)
        break label162;
    }
    while (true)
    {
      localn.O("room_show_msg_count", i);
      return;
      if (this.goG != i)
        break;
      mG(8);
      if (this.goI == null)
        break;
      this.goI.setChecked(false);
      localSharedPreferences.edit().putBoolean("room_msg_notify", false).commit();
      break;
      label162: int j = 0;
    }
  }

  private boolean rg()
  {
    return (0x2 & be.uz().sA().ts(this.cWy).aAi()) == 0;
  }

  protected final void FR()
  {
    mn(2131167536);
    this.cIG = aIj();
    this.goF = (getPackageName() + "_preferences");
    this.bOk = getIntent().getBooleanExtra("Is_Chatroom", true);
    this.cWy = getIntent().getStringExtra("RoomInfo_Id");
    if (this.cWy == null)
      this.cWy = getIntent().getStringExtra("Single_Chat_Talker");
    this.cQI = be.uz().su().tO(this.cWy);
    if (this.bOk)
    {
      this.goG = this.cQI.ry();
      this.goH = ((SignaturePreference)this.cIG.wn("room_name"));
      this.goI = ((CheckBoxPreference)this.cIG.wn("room_msg_notify"));
      this.goK = ((CheckBoxPreference)this.cIG.wn("room_show_msg_count"));
      this.goJ = ((CheckBoxPreference)this.cIG.wn("room_msg_show_username"));
      this.goK.aIs();
    }
    while (true)
    {
      a(new dp(this));
      return;
      this.goG = 1;
    }
  }

  public final int Gc()
  {
    return 2131034162;
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    int i = 1;
    String str1 = paramPreference.getKey();
    Object[] arrayOfObject1 = new Object[i];
    arrayOfObject1[0] = str1;
    aa.e("MicroMsg.RoomInfoDetailUI", "click key : %s", arrayOfObject1);
    if (str1.equals("room_name"))
    {
      Intent localIntent1 = new Intent();
      localIntent1.setClass(this, ModRemarkNameUI.class);
      localIntent1.putExtra("Contact_mode_name_type", 4);
      String str2 = v.th();
      localIntent1.putExtra("Contact_Nick", aFu());
      localIntent1.putExtra("Contact_User", str2);
      localIntent1.putExtra("MMActivity.OverrideEnterAnimation", 2130968606);
      localIntent1.putExtra("MMActivity.OverrideExitAnimation", 2130968621);
      aal().startActivityForResult(localIntent1, 2);
    }
    label203: String str4;
    label414: label508: com.tencent.mm.storage.b localb1;
    label619: int n;
    label645: label731: CheckBoxPreference localCheckBoxPreference;
    if (str1.equals("room_msg_show_username"))
    {
      com.tencent.mm.storage.b localb2 = be.uz().sA().ts(this.cWy);
      if (!localb2.aAk())
      {
        int i3 = i;
        localb2.cS(i3);
        this.goL = i;
      }
    }
    else
    {
      if (str1.equals("room_msg_notify"))
      {
        if (this.goG != 0)
          break label814;
        int i1 = i;
        this.goG = i1;
        be.uz().st().a(new bm(this.cWy, this.goG));
        this.cQI = be.uz().su().tO(this.cWy);
        this.cQI.bT(this.goG);
        be.uz().su().a(this.cWy, this.cQI);
        be.uA().d(new com.tencent.mm.z.i(5));
        aFw();
        this.cQI = be.uz().su().tO(this.cWy);
        this.cIG.notifyDataSetChanged();
      }
      if (str1.equals("room_set_chatting_background"))
      {
        Intent localIntent2 = new Intent();
        localIntent2.setClass(this, SettingsChattingBackgroundUI.class);
        localIntent2.putExtra("isApplyToAll", false);
        localIntent2.putExtra("username", this.cQI.getUsername());
        startActivityForResult(localIntent2, i);
      }
      if (str1.equals("room_clear_chatting_history"))
      {
        if (!this.bOk)
          break label820;
        str4 = getString(2131165286);
        String[] arrayOfString = new String[i];
        arrayOfString[0] = getString(2131167583);
        h.b(this, str4, arrayOfString, null, new dq(this));
      }
      if (str1.equals("room_placed_to_the_top"))
      {
        SharedPreferences localSharedPreferences = getSharedPreferences(this.goF, 0);
        if (this.cQI != null)
        {
          if (!be.uz().sx().ud(this.cQI.getUsername()))
            break label851;
          w.f(this.cQI.getUsername(), i);
          localSharedPreferences.edit().putBoolean("room_placed_to_the_top", be.uz().sx().ud(this.cQI.getUsername())).commit();
          be.uA().d(new com.tencent.mm.z.i(5));
        }
      }
      if ("room_show_msg_count".equals(str1))
      {
        boolean bool = rg();
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Boolean.valueOf(bool);
        arrayOfObject2[i] = Boolean.valueOf(bool);
        aa.e("MicroMsg.RoomInfoDetailUI", "old value undeliver[%B], now set show msg count[%B]", arrayOfObject2);
        if (bool)
          break label865;
        int k = i;
        localb1 = be.uz().sA().ts(this.cWy);
        if (k == 0)
          break label871;
        localb1.bW(0);
        Object[] arrayOfObject3 = new Object[i];
        arrayOfObject3[0] = Boolean.valueOf(k);
        aa.e("MicroMsg.RoomInfoDetailUI", "update show msg count[%B]", arrayOfObject3);
        be.uz().sA().a(localb1, new String[0]);
        String str3 = v.th();
        ny localny = new ny();
        localny.fEJ = this.cWy;
        localny.eBo = str3;
        localny.fOV = 2;
        if (k == 0)
          break label880;
        n = 2;
        localny.fOW = n;
        be.uz().st().a(new az(49, localny));
        be.uA().d(new com.tencent.mm.z.i(5));
        if (this.goK != null)
        {
          localCheckBoxPreference = this.goK;
          if (bool)
            break label886;
        }
      }
    }
    while (true)
    {
      localCheckBoxPreference.setChecked(i);
      this.cIG.notifyDataSetChanged();
      return false;
      int i4 = 0;
      break;
      label814: int i2 = 0;
      break label203;
      label820: Object[] arrayOfObject4 = new Object[i];
      arrayOfObject4[0] = this.cQI.rr();
      str4 = getString(2131165284, arrayOfObject4);
      break label414;
      label851: w.e(this.cQI.getUsername(), i);
      break label508;
      label865: int m = 0;
      break label619;
      label871: localb1.bW(2);
      break label645;
      label880: n = i;
      break label731;
      label886: int j = 0;
    }
  }

  public final void ca(String paramString)
  {
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 != -1);
    String str1;
    do
    {
      do
      {
        do
        {
          return;
          switch (paramInt1)
          {
          default:
            return;
          case 1:
          case 2:
          }
        }
        while (paramInt2 != -1);
        setResult(-1);
        finish();
        return;
      }
      while (paramIntent == null);
      str1 = com.tencent.mm.platformtools.au.R(paramIntent.getStringExtra("Contact_Nick"), "");
    }
    while (com.tencent.mm.platformtools.au.hX(str1));
    String str2 = v.th();
    com.tencent.mm.storage.b localb = be.uz().sA().ts(this.cWy);
    if (localb == null)
      localb = new com.tencent.mm.storage.b();
    localb.field_chatroomname = this.cWy;
    localb.field_selfDisplayName = str1;
    be.uz().sA().a(localb, new String[0]);
    nx localnx = new nx();
    localnx.fEJ = this.cWy;
    localnx.eBo = str2;
    localnx.fDf = com.tencent.mm.platformtools.au.hW(str1);
    be.uz().st().a(new az(48, localnx));
    Jc();
    aFv();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  public void onPause()
  {
    int i = 1;
    super.onPause();
    ny localny;
    if (this.goL)
    {
      com.tencent.mm.storage.b localb = be.uz().sA().ts(this.cWy);
      be.uz().sA().a(localb, new String[0]);
      String str = v.th();
      boolean bool = localb.aAk();
      localny = new ny();
      localny.fEJ = this.cWy;
      localny.eBo = str;
      localny.fOV = i;
      if (!bool)
        break label131;
    }
    while (true)
    {
      localny.fOW = i;
      be.uz().st().a(new az(49, localny));
      be.uA().d(new com.tencent.mm.z.i(5));
      return;
      label131: i = 0;
    }
  }

  public void onResume()
  {
    super.onResume();
    aFw();
    aFv();
    SharedPreferences localSharedPreferences;
    if ((this.cQI != null) && (this.goJ != null))
    {
      com.tencent.mm.storage.b localb = be.uz().sA().tt(this.cWy);
      localSharedPreferences = getSharedPreferences(this.goF, 0);
      if (!localb.aAk())
        break label96;
      this.goJ.setChecked(true);
      localSharedPreferences.edit().putBoolean("room_msg_show_username", true).commit();
    }
    while (true)
    {
      this.cIG.notifyDataSetChanged();
      return;
      label96: this.goJ.setChecked(false);
      localSharedPreferences.edit().putBoolean("room_msg_show_username", false).commit();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.RoomInfoDetailUI
 * JD-Core Version:    0.6.2
 */