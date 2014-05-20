package com.tencent.mm.ui.contact.profile;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import com.tencent.mm.m.af;
import com.tencent.mm.model.at;
import com.tencent.mm.model.co;
import com.tencent.mm.p.p;
import com.tencent.mm.p.x;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.protocal.a.dl;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.storage.RegionCodeDecoder;
import com.tencent.mm.storage.ce;
import com.tencent.mm.storage.cf;
import com.tencent.mm.storage.ch;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import java.io.IOException;
import junit.framework.Assert;

public class ContactInfoUI extends MMPreference
  implements com.tencent.mm.sdk.e.al, com.tencent.mm.sdk.e.ar, ch
{
  private com.tencent.mm.ui.base.preference.n cIG;
  private i cQI;
  private boolean dNx;
  private int edN;
  private com.tencent.mm.pluginsdk.b.a gVT;
  private boolean gVU;
  private byte[] gVV;
  private boolean gVW = false;
  private String ghP = "";

  private void wW(String paramString)
  {
    if (com.tencent.mm.model.w.cy(this.cQI.getUsername()))
      this.gVT = com.tencent.mm.ak.a.C(this, "qqmail");
    while (true)
    {
      if (this.gVT != null)
        this.gVT.a(this.cIG, this.cQI, this.dNx, this.edN);
      return;
      if (com.tencent.mm.model.w.cz(this.cQI.getUsername()))
      {
        this.gVT = new w(this);
        mn(2131165864);
        continue;
      }
      if (com.tencent.mm.model.w.cB(this.cQI.getUsername()))
      {
        this.gVT = com.tencent.mm.ak.a.C(this, "bottle");
        mn(2131165864);
        continue;
      }
      if (com.tencent.mm.model.w.cA(this.cQI.getUsername()))
      {
        this.gVT = com.tencent.mm.ak.a.C(this, "tmessage");
        mn(2131165864);
        continue;
      }
      if (com.tencent.mm.model.w.cC(this.cQI.getUsername()))
      {
        this.gVT = com.tencent.mm.ak.a.n(this, "qmessage", "widget_type_plugin");
        mn(2131165864);
        continue;
      }
      if (i.tA(this.cQI.getUsername()))
      {
        this.gVT = com.tencent.mm.ak.a.n(this, "qmessage", "widget_type_contact");
        continue;
      }
      if (com.tencent.mm.model.w.cr(this.cQI.getUsername()))
      {
        this.gVT = new al(this);
        continue;
      }
      if (com.tencent.mm.model.w.cG(this.cQI.getUsername()))
      {
        this.gVT = com.tencent.mm.ak.a.C(this, "qqsync");
        continue;
      }
      if (i.tC(this.cQI.getUsername()))
      {
        this.gVT = new v(this);
        continue;
      }
      if (com.tencent.mm.model.w.cI(this.cQI.getUsername()))
      {
        this.gVT = com.tencent.mm.ak.a.C(this, "nearby");
        continue;
      }
      if (com.tencent.mm.model.w.cJ(this.cQI.getUsername()))
      {
        this.gVT = com.tencent.mm.ak.a.C(this, "shake");
        continue;
      }
      if (com.tencent.mm.model.w.cK(this.cQI.getUsername()))
      {
        this.gVT = new aq(this);
        continue;
      }
      if (com.tencent.mm.model.w.cL(this.cQI.getUsername()))
      {
        this.gVT = com.tencent.mm.ak.a.n(this, "readerapp", "widget_type_news");
        continue;
      }
      if (com.tencent.mm.model.w.cS(this.cQI.getUsername()))
      {
        this.gVT = com.tencent.mm.ak.a.n(this, "readerapp", "widget_type_weibo");
        continue;
      }
      if (com.tencent.mm.model.w.cM(this.cQI.getUsername()))
      {
        this.gVT = new bn(this);
        continue;
      }
      if (com.tencent.mm.model.w.cD(this.cQI.getUsername()))
      {
        this.gVT = new aa(this);
        continue;
      }
      if (com.tencent.mm.model.w.cV(this.cQI.getUsername()))
      {
        this.gVT = new be(this);
        continue;
      }
      if (com.tencent.mm.model.w.cW(this.cQI.getUsername()))
      {
        this.gVT = new ag(this);
        if (!com.tencent.mm.modelfriend.ab.O(this))
          continue;
        startActivityForResult(new Intent("com.tencent.mm.gms.CHECK_GP_SERVICES"), 1005);
        continue;
      }
      if (com.tencent.mm.model.w.cE(this.cQI.getUsername()))
      {
        this.gVT = com.tencent.mm.ak.a.C(this, "masssend");
        continue;
      }
      if (com.tencent.mm.model.w.cF(this.cQI.getUsername()))
      {
        this.gVT = new ae(this);
        continue;
      }
      if (this.cQI.aAp());
      try
      {
        byte[] arrayOfByte = this.gVV;
        localObject = null;
        if (arrayOfByte == null);
        while (true)
        {
          this.gVT = new e(this, paramString, (dl)localObject);
          break;
          dl localdl = new dl().aM(this.gVV);
          localObject = localdl;
        }
        if (com.tencent.mm.model.w.cN(this.cQI.getUsername()))
        {
          this.gVT = new br(this);
          continue;
        }
        if (com.tencent.mm.model.w.cO(this.cQI.getUsername()))
        {
          this.gVT = new bj(this);
          continue;
        }
        if (com.tencent.mm.model.w.cP(this.cQI.getUsername()))
        {
          this.gVT = new an(this);
          continue;
        }
        this.gVT = new ay(this);
      }
      catch (IOException localIOException)
      {
        while (true)
          Object localObject = null;
      }
    }
  }

  protected final void FR()
  {
    this.cIG = aIj();
    this.cIG.removeAll();
    this.edN = getIntent().getIntExtra("Contact_Scene", 9);
    this.dNx = getIntent().getBooleanExtra("Chat_Readonly", false);
    this.gVU = getIntent().getBooleanExtra("User_Verify", false);
    String str1 = au.hW(getIntent().getStringExtra("Contact_User"));
    String str2 = au.hW(getIntent().getStringExtra("Contact_Alias"));
    String str3 = au.hW(getIntent().getStringExtra("Contact_Encryptusername"));
    if (str1.endsWith("@stranger"))
      str3 = str1;
    this.cQI = com.tencent.mm.model.be.uz().su().tO(str1);
    com.tencent.mm.z.n.r(this.cQI);
    String str4 = getIntent().getStringExtra("Contact_Nick");
    int i = getIntent().getIntExtra("Contact_Sex", 0);
    String str5 = getIntent().getStringExtra("Contact_Province");
    String str6 = getIntent().getStringExtra("Contact_City");
    String str7 = getIntent().getStringExtra("Contact_Signature");
    int j = getIntent().getIntExtra("Contact_VUser_Info_Flag", 0);
    String str8 = getIntent().getStringExtra("Contact_VUser_Info");
    String str9 = getIntent().getStringExtra("Contact_Distance");
    int k = getIntent().getIntExtra("Contact_KWeibo_flag", 0);
    String str10 = getIntent().getStringExtra("Contact_KWeibo");
    String str11 = getIntent().getStringExtra("Contact_KWeiboNick");
    String str12 = getIntent().getStringExtra("Contact_KFacebookName");
    long l1 = getIntent().getLongExtra("Contact_KFacebookId", 0L);
    this.ghP = getIntent().getStringExtra("Contact_BrandIconURL");
    String str13 = getIntent().getStringExtra("Contact_RegionCode");
    this.gVV = getIntent().getByteArrayExtra("Contact_customInfo");
    if (getIntent().getBooleanExtra("force_get_contact", false))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ContactInfoUI", "initView, forceAddContact, user = " + str1);
      com.tencent.mm.model.ar.tZ().jdMethod_do(str1);
    }
    com.tencent.mm.p.a locala;
    int m;
    label760: boolean bool;
    if ((this.cQI != null) && (this.cQI.rj() > 0) && ((!com.tencent.mm.model.w.dc(this.cQI.getUsername())) || ((i.tA(this.cQI.getUsername())) && (!com.tencent.mm.model.w.cs(this.cQI.getUsername())))))
    {
      locala = p.eI(this.cQI.getUsername());
      if ((locala == null) || (locala.xA()))
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(j);
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ContactInfoUI", "update contact, verifyFlag %d.", arrayOfObject1);
        com.tencent.mm.model.ar.tZ().jdMethod_do(this.cQI.getUsername());
        com.tencent.mm.m.c.dX(this.cQI.getUsername());
      }
    }
    else
    {
      m = getIntent().getIntExtra("Contact_verify_Scene", 9);
      if ((this.cQI != null) && (this.cQI.rj() != 0) && (au.hW(this.cQI.getUsername()).length() > 0))
        break label1364;
      this.cQI = new i();
      this.cQI.setUsername(str1);
      this.cQI.bx(str2);
      this.cQI.bt(str4);
      this.cQI.bv(getIntent().getStringExtra("Contact_PyInitial"));
      this.cQI.bw(getIntent().getStringExtra("Contact_QuanPin"));
      this.cQI.bL(i);
      this.cQI.bA(str5);
      this.cQI.bB(str6);
      this.cQI.bz(str7);
      this.cQI.bV(j);
      this.cQI.bN(str8);
      this.cQI.bC(str9);
      this.cQI.bO(m);
      this.cQI.bD(str10);
      this.cQI.bP(k);
      this.cQI.bE(str11);
      this.cQI.n(l1);
      this.cQI.bu(str12);
      this.cQI.bO(str13);
      if (!au.hX(str3))
        this.cQI.tF(str3);
      if (this.cQI != null)
        break label1580;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ContactInfoUI", "contact = null");
      label791: getIntent().putExtra("Contact_User", this.cQI.getUsername());
      if (this.cQI.getUsername().equals(com.tencent.mm.model.v.th()))
      {
        long l2 = au.hY((String)com.tencent.mm.model.be.uz().sr().get(65825));
        if (l2 > 0L)
        {
          this.cQI.n(l2);
          this.cQI.bu((String)com.tencent.mm.model.be.uz().sr().get(65826));
        }
        this.cQI.bUl = ((String)com.tencent.mm.model.be.uz().sr().get(286721));
        this.cQI.bUm = ((String)com.tencent.mm.model.be.uz().sr().get(286722));
        this.cQI.bUn = ((String)com.tencent.mm.model.be.uz().sr().get(286723));
      }
      if (this.cQI.getUsername().equals(i.tE(com.tencent.mm.model.v.th())))
      {
        co localco = co.vw();
        String str14 = au.hW(localco.rC());
        String str15 = au.hW(localco.rD());
        if (!au.hX(str14))
          this.cQI.bA(str14);
        if (!au.hX(str15))
          this.cQI.bB(str15);
        if (!au.hX(localco.getCountryCode()))
          this.cQI.bO(RegionCodeDecoder.w(localco.getCountryCode(), localco.vA(), localco.vz()));
        int i1 = au.a(Integer.valueOf(localco.rk()), 0);
        String str16 = au.hW(localco.rB());
        this.cQI.bL(i1);
        this.cQI.bz(str16);
      }
      if (au.hW(this.cQI.getUsername()).length() <= 0)
        break label1680;
      bool = true;
      label1124: Assert.assertTrue("initView: contact username is null", bool);
      if (!com.tencent.mm.model.w.db(this.cQI.getUsername()))
        break label1686;
    }
    label1680: label1686: for (int n = 2131165864; ; n = 2131166229)
    {
      mn(n);
      if (com.tencent.mm.model.w.cp(this.cQI.getUsername()))
        mn(2131166231);
      wW(this.ghP);
      a(new b(this));
      af.wo().dZ(this.cQI.getUsername());
      if ((!com.tencent.mm.model.w.cK(this.cQI.getUsername())) || (!com.tencent.mm.model.v.tx()))
        break label1694;
      this.gVW = true;
      return;
      if (this.cQI.aAl())
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(this.cQI.rM());
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ContactInfoUI", "update contact, last check time=%d", arrayOfObject2);
        com.tencent.mm.model.ar.tZ().jdMethod_do(this.cQI.getUsername());
        com.tencent.mm.m.c.dX(this.cQI.getUsername());
        break;
      }
      if ((locala == null) || (!this.cQI.rb()) || (this.cQI.aAp()) || (com.tencent.mm.model.w.cZ(this.cQI.getUsername())) || (!locala.xw()))
        break;
      com.tencent.mm.p.ab.yg().eQ(this.cQI.getUsername());
      break;
      label1364: if (this.cQI.rk() == 0)
        this.cQI.bL(i);
      if ((str5 != null) && (!str5.equals("")))
        this.cQI.bA(str5);
      if ((str6 != null) && (!str6.equals("")))
        this.cQI.bB(str6);
      if ((str13 != null) && (!str13.equals("")))
        this.cQI.bO(str13);
      if ((str7 != null) && (!str7.equals("")))
        this.cQI.bz(str7);
      if (j != 0)
        this.cQI.bV(j);
      if ((str8 != null) && (!str8.equals("")))
        this.cQI.bN(str8);
      if ((str4 != null) && (!str4.equals("")))
        this.cQI.bt(str4);
      this.cQI.bC(str9);
      this.cQI.bO(m);
      this.cQI.n(l1);
      this.cQI.bu(str12);
      break label760;
      label1580: if (!au.hX(str3))
      {
        ce localce2 = com.tencent.mm.model.be.uz().sv().vF(str3);
        if ((localce2 != null) && (!au.hX(localce2.aAs())))
        {
          this.cQI.bH(localce2.ru());
          break label791;
        }
      }
      if (au.hX(str1))
        break label791;
      ce localce1 = com.tencent.mm.model.be.uz().sv().vF(str1);
      if ((localce1 == null) || (au.hX(localce1.aAs())))
        break label791;
      this.cQI.bH(localce1.ru());
      break label791;
      bool = false;
      break label1124;
    }
    label1694: if ((com.tencent.mm.model.w.cC(this.cQI.getUsername())) && (com.tencent.mm.model.v.tt()))
    {
      this.gVW = true;
      return;
    }
    if ((com.tencent.mm.model.w.cE(this.cQI.getUsername())) && (com.tencent.mm.model.v.tD()))
    {
      this.gVW = true;
      return;
    }
    if ((com.tencent.mm.model.w.cy(this.cQI.getUsername())) && (com.tencent.mm.model.v.tF()))
    {
      this.gVW = true;
      return;
    }
    this.gVW = false;
  }

  public final int Gc()
  {
    return 2131034147;
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    ca((String)paramObject);
  }

  public final void a(ce paramce)
  {
    new Handler().post(new d(this, paramce));
  }

  public final boolean a(com.tencent.mm.ui.base.preference.n paramn, Preference paramPreference)
  {
    String str = paramPreference.getKey();
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.ContactInfoUI", str + " item has been clicked!");
    if (this.gVT != null)
      this.gVT.iO(str);
    return false;
  }

  protected final String aEZ()
  {
    if (this.cQI.aAp())
      return "_bizContact";
    return "";
  }

  public final void ca(String paramString)
  {
    new Handler().post(new c(this, paramString));
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (this.gVT != null)
      this.gVT.onActivityResult(paramInt1, paramInt2, paramIntent);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    com.tencent.mm.model.be.uz().su().a(this);
    FR();
  }

  public void onDestroy()
  {
    com.tencent.mm.model.be.uz().su().b(this);
    if (this.gVT != null)
      this.gVT.Ji();
    if (com.tencent.mm.pluginsdk.aq.apy() != null)
      com.tencent.mm.pluginsdk.aq.apy().i(this);
    super.onDestroy();
  }

  public void onPause()
  {
    com.tencent.mm.model.be.uz().sv().b(this);
    com.tencent.mm.p.ab.ye().f(this);
    super.onPause();
  }

  public void onResume()
  {
    com.tencent.mm.model.be.uz().sv().a(this);
    com.tencent.mm.p.ab.ye().e(this);
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.ContactInfoUI
 * JD-Core Version:    0.6.2
 */