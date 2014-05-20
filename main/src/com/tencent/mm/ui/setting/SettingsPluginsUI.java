package com.tencent.mm.ui.setting;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.e.c;
import com.tencent.mm.e.d;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.preference.CheckBoxPreference;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.PluginTextPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.PreferenceCategory;
import com.tencent.mm.ui.base.preference.PreferenceSmallCategory;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SettingsPluginsUI extends MMPreference
{
  private n cIG;
  private boolean hfN;
  private boolean hfO;
  private boolean hfP;

  protected final void FR()
  {
    mn(2131165857);
    a(new dt(this));
  }

  public final int Gc()
  {
    return 2131034181;
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    String str1 = paramPreference.getKey();
    boolean bool2;
    if ((str1 != null) && (str1.equals("display_in_addr_book")))
    {
      boolean bool3 = ((CheckBoxPreference)paramn.wn(str1)).isChecked();
      be.uz().sr().set(35, Boolean.valueOf(bool3));
      bool2 = true;
    }
    boolean bool1;
    do
    {
      return bool2;
      bool1 = paramPreference instanceof PluginPreference;
      bool2 = false;
    }
    while (!bool1);
    String str2 = ((PluginPreference)paramPreference).aMk();
    if (("meishiapp".equals(str2)) && (this.hfN))
      be.uz().sr().set(-2046825370, Boolean.valueOf(false));
    if (("feedsapp".equals(str2)) && (this.hfO))
      be.uz().sr().set(-2046825369, Boolean.valueOf(false));
    if (("voipapp".equals(str2)) && (this.hfP))
      be.uz().sr().set(-2046825368, Boolean.valueOf(false));
    aal().startActivity(new Intent(this, ContactInfoUI.class).putExtra("Contact_User", str2));
    return true;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.cIG = aIj();
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  public void onPause()
  {
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
    this.cIG.removeAll();
    PreferenceSmallCategory localPreferenceSmallCategory = new PreferenceSmallCategory(this);
    this.cIG.b(localPreferenceSmallCategory);
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    PluginPreference localPluginPreference1;
    int i13;
    if (com.tencent.mm.ak.a.qc("qqmail"))
    {
      localPluginPreference1 = new PluginPreference(this);
      if (localPluginPreference1.xt("qqmail"))
      {
        localPluginPreference1.setTitle(localPluginPreference1.aMj());
        if ((0x1 & v.tq()) != 0)
          break label1502;
        i13 = 1;
        if (i13 == 0)
          break label1508;
        localArrayList1.add(localPluginPreference1);
      }
    }
    label111: PluginPreference localPluginPreference21;
    int i12;
    if ((com.tencent.mm.ak.a.qc("tmessage")) && (w.tR()))
    {
      localPluginPreference21 = new PluginPreference(this);
      if (localPluginPreference21.xt("tmessage"))
      {
        localPluginPreference21.setTitle(localPluginPreference21.aMj());
        if ((0x2 & v.tq()) != 0)
          break label1526;
        i12 = 1;
        label166: if (i12 == 0)
          break label1532;
        localArrayList1.add(localPluginPreference21);
      }
    }
    label180: PluginPreference localPluginPreference2;
    int i11;
    if (com.tencent.mm.ak.a.qc("qmessage"))
    {
      localPluginPreference2 = new PluginPreference(this);
      if (localPluginPreference2.xt("qmessage"))
      {
        localPluginPreference2.setTitle(localPluginPreference2.aMj());
        if ((0x20 & v.tq()) != 0)
          break label1550;
        i11 = 1;
        label230: if (i11 == 0)
          break label1556;
        localArrayList1.add(localPluginPreference2);
      }
    }
    label244: PluginPreference localPluginPreference3;
    if (com.tencent.mm.ak.a.qc("qqsync"))
    {
      localPluginPreference3 = new PluginPreference(this);
      if (localPluginPreference3.xt("qqsync"))
      {
        localPluginPreference3.setTitle(localPluginPreference3.aMj());
        if (!v.ty())
          break label1574;
        localArrayList1.add(localPluginPreference3);
      }
    }
    label297: PluginPreference localPluginPreference4;
    int i10;
    if (com.tencent.mm.ak.a.qc("bottle"))
    {
      localPluginPreference4 = new PluginPreference(this);
      if (localPluginPreference4.xt("floatbottle"))
      {
        localPluginPreference4.setTitle(localPluginPreference4.aMj());
        if ((0x40 & v.tq()) != 0)
          break label1592;
        i10 = 1;
        label347: if (i10 == 0)
          break label1598;
        localArrayList1.add(localPluginPreference4);
      }
    }
    label361: PluginPreference localPluginPreference5;
    int i9;
    if (com.tencent.mm.ak.a.qc("nearby"))
    {
      localPluginPreference5 = new PluginPreference(this);
      if (localPluginPreference5.xt("lbsapp"))
      {
        localPluginPreference5.setTitle(localPluginPreference5.aMj());
        if ((0x200 & v.tq()) != 0)
          break label1610;
        i9 = 1;
        label412: if (i9 == 0)
          break label1616;
        localArrayList1.add(localPluginPreference5);
      }
    }
    label426: PluginPreference localPluginPreference6;
    int i8;
    if (com.tencent.mm.ak.a.qc("shake"))
    {
      localPluginPreference6 = new PluginPreference(this);
      if (localPluginPreference6.xt("shakeapp"))
      {
        localPluginPreference6.setTitle(localPluginPreference6.aMj());
        if ((0x100 & v.tq()) != 0)
          break label1628;
        i8 = 1;
        label477: if (i8 == 0)
          break label1634;
        localArrayList1.add(localPluginPreference6);
      }
    }
    label491: PluginPreference localPluginPreference7 = new PluginPreference(this);
    int i7;
    label533: label547: PluginPreference localPluginPreference8;
    int i6;
    label597: label611: PluginPreference localPluginPreference9;
    int i5;
    label659: label673: PluginPreference localPluginPreference10;
    int i4;
    label716: label730: PluginPreference localPluginPreference11;
    int i3;
    label777: label791: PluginPreference localPluginPreference12;
    int i2;
    label839: label853: PluginPreference localPluginPreference13;
    int i1;
    label903: label917: PluginPreference localPluginPreference14;
    int n;
    label967: label981: PluginPreference localPluginPreference20;
    label1031: int m;
    label1087: label1101: label1151: PluginPreference localPluginPreference15;
    int k;
    label1205: label1219: PluginPreference localPluginPreference19;
    int j;
    label1286: label1300: PluginPreference localPluginPreference16;
    int i;
    if (localPluginPreference7.xt("medianote"))
    {
      localPluginPreference7.setTitle(localPluginPreference7.aMj());
      if ((0x10 & v.tq()) == 0)
      {
        i7 = 1;
        if (i7 == 0)
          break label1652;
        localArrayList1.add(localPluginPreference7);
      }
    }
    else
    {
      if (com.tencent.mm.ak.a.qc("readerapp"))
      {
        localPluginPreference8 = new PluginPreference(this);
        if (localPluginPreference8.xt("newsapp"))
        {
          localPluginPreference8.setTitle(localPluginPreference8.aMj());
          if ((0x80000 & v.tq()) != 0)
            break label1670;
          i6 = 1;
          if (i6 == 0)
            break label1676;
          localArrayList1.add(localPluginPreference8);
        }
        localPluginPreference9 = new PluginPreference(this);
        if (localPluginPreference9.xt("blogapp"))
        {
          localPluginPreference9.setTitle(localPluginPreference9.aMj());
          if (((0x40000 & v.tq()) != 0) || (!w.tQ()))
            break label1694;
          i5 = 1;
          if (i5 == 0)
            break label1700;
          localArrayList1.add(localPluginPreference9);
        }
      }
      localPluginPreference10 = new PluginPreference(this);
      if (localPluginPreference10.xt("facebookapp"))
      {
        localPluginPreference10.setTitle(localPluginPreference10.aMj());
        if ((0x2000 & v.tq()) != 0)
          break label1718;
        i4 = 1;
        if (i4 == 0)
          break label1724;
        localArrayList1.add(localPluginPreference10);
      }
      com.tencent.mm.ak.a.avr();
      localPluginPreference11 = new PluginPreference(this);
      if (localPluginPreference11.xt("qqfriend"))
      {
        localPluginPreference11.setTitle(localPluginPreference11.aMj());
        if ((0x1000 & v.tq()) != 0)
          break label1742;
        i3 = 1;
        if (i3 == 0)
          break label1748;
        localArrayList1.add(localPluginPreference11);
      }
      if (cj.Bj())
      {
        localPluginPreference12 = new PluginPreference(this);
        if (localPluginPreference12.xt("googlecontact"))
        {
          localPluginPreference12.setTitle(localPluginPreference12.aMj());
          if ((0x800000 & v.tq()) != 0)
            break label1760;
          i2 = 1;
          if (i2 == 0)
            break label1766;
          localArrayList1.add(localPluginPreference12);
        }
      }
      if (com.tencent.mm.ak.a.qc("masssend"))
      {
        localPluginPreference13 = new PluginPreference(this);
        if (localPluginPreference13.xt("masssendapp"))
        {
          localPluginPreference13.setTitle(localPluginPreference13.aMj());
          if ((0x10000 & v.tq()) != 0)
            break label1784;
          i1 = 1;
          if (i1 == 0)
            break label1790;
          localArrayList1.add(localPluginPreference13);
        }
      }
      if (com.tencent.mm.ak.a.qc("sns"))
      {
        localPluginPreference14 = new PluginPreference(this);
        if (localPluginPreference14.xt("feedsapp"))
        {
          localPluginPreference14.setTitle(localPluginPreference14.aMj());
          if ((0x8000 & v.tq()) != 0)
            break label1802;
          n = 1;
          if (n == 0)
            break label1808;
          localArrayList1.add(localPluginPreference14);
          this.hfO = au.a((Boolean)be.uz().sr().get(-2046825369), false);
          if (!this.hfO)
            break label1820;
          localPluginPreference14.np(0);
          localPluginPreference14.aq(getString(2131167730), 2130838937);
        }
      }
      if (com.tencent.mm.ak.a.qc("voip"))
      {
        com.tencent.mm.ak.a.avr();
        localPluginPreference20 = new PluginPreference(this);
        if (localPluginPreference20.xt("voipapp"))
        {
          localPluginPreference20.setTitle(localPluginPreference20.aMj());
          if ((0x100000 & v.tq()) != 0)
            break label1839;
          m = 1;
          if (m == 0)
            break label1845;
          localArrayList1.add(localPluginPreference20);
          this.hfP = au.a((Boolean)be.uz().sr().get(-2046825368), false);
          if (!this.hfP)
            break label1857;
          localPluginPreference20.np(0);
          localPluginPreference20.aq(getString(2131167730), 2130838937);
        }
      }
      com.tencent.mm.ak.a.avr();
      if (!com.tencent.mm.x.b.Bc())
      {
        localPluginPreference15 = new PluginPreference(this);
        if (localPluginPreference15.xt("voiceinputapp"))
        {
          localPluginPreference15.setTitle(localPluginPreference15.aMj());
          if ((0x2000000 & v.tq()) != 0)
            break label1876;
          k = 1;
          if (k == 0)
            break label1882;
          localArrayList1.add(localPluginPreference15);
        }
      }
      if (com.tencent.mm.ak.a.qc("voip"))
      {
        com.tencent.mm.ak.a.avr();
        d.qB();
        if (!com.tencent.mm.e.a.qn())
        {
          localPluginPreference19 = new PluginPreference(this);
          if (localPluginPreference19.xt("voicevoipapp"))
          {
            localPluginPreference19.setTitle(localPluginPreference19.aMj());
            if ((0x400000 & v.tq()) != 0)
              break label1894;
            j = 1;
            if (j == 0)
              break label1900;
            localArrayList1.add(localPluginPreference19);
            localPluginPreference19.np(8);
            localPluginPreference19.aq("", -1);
          }
        }
      }
      String str = d.qA().getValue("LinkedinPluginClose");
      if ((au.hX(str)) || (Integer.valueOf(str).intValue() == 0))
      {
        localPluginPreference16 = new PluginPreference(this);
        if (localPluginPreference16.xt("linkedinplugin"))
        {
          localPluginPreference16.setTitle(localPluginPreference16.aMj());
          if ((0x1000000 & v.tq()) != 0)
            break label1912;
          i = 1;
          label1390: if (i == 0)
            break label1918;
          localArrayList1.add(localPluginPreference16);
        }
      }
    }
    while (true)
    {
      if (!localArrayList1.isEmpty())
      {
        PluginTextPreference localPluginTextPreference1 = new PluginTextPreference(this);
        localPluginTextPreference1.setImageResource(2130839236);
        localPluginTextPreference1.nt(2131165865);
        this.cIG.b(localPluginTextPreference1);
      }
      Iterator localIterator1 = localArrayList1.iterator();
      while (localIterator1.hasNext())
      {
        PluginPreference localPluginPreference18 = (PluginPreference)localIterator1.next();
        localPluginPreference18.nT(255);
        this.cIG.b(localPluginPreference18);
      }
      label1502: i13 = 0;
      break;
      label1508: if (!com.tencent.mm.x.b.Be())
        break label111;
      localArrayList2.add(localPluginPreference1);
      break label111;
      label1526: i12 = 0;
      break label166;
      label1532: if (!com.tencent.mm.x.b.Be())
        break label180;
      localArrayList2.add(localPluginPreference21);
      break label180;
      label1550: i11 = 0;
      break label230;
      label1556: if (!com.tencent.mm.x.b.Be())
        break label244;
      localArrayList2.add(localPluginPreference2);
      break label244;
      label1574: if (!com.tencent.mm.x.b.Be())
        break label297;
      localArrayList2.add(localPluginPreference3);
      break label297;
      label1592: i10 = 0;
      break label347;
      label1598: localArrayList2.add(localPluginPreference4);
      break label361;
      label1610: i9 = 0;
      break label412;
      label1616: localArrayList2.add(localPluginPreference5);
      break label426;
      label1628: i8 = 0;
      break label477;
      label1634: localArrayList2.add(localPluginPreference6);
      break label491;
      i7 = 0;
      break label533;
      label1652: if (!com.tencent.mm.x.b.Be())
        break label547;
      localArrayList2.add(localPluginPreference7);
      break label547;
      label1670: i6 = 0;
      break label597;
      label1676: if (!com.tencent.mm.x.b.Be())
        break label611;
      localArrayList2.add(localPluginPreference8);
      break label611;
      label1694: i5 = 0;
      break label659;
      label1700: if (!com.tencent.mm.x.b.Be())
        break label673;
      localArrayList2.add(localPluginPreference9);
      break label673;
      label1718: i4 = 0;
      break label716;
      label1724: if (!com.tencent.mm.x.b.Bd())
        break label730;
      localArrayList2.add(localPluginPreference10);
      break label730;
      label1742: i3 = 0;
      break label777;
      label1748: localArrayList2.add(localPluginPreference11);
      break label791;
      label1760: i2 = 0;
      break label839;
      label1766: if (!com.tencent.mm.x.b.Bf())
        break label853;
      localArrayList2.add(localPluginPreference12);
      break label853;
      label1784: i1 = 0;
      break label903;
      label1790: localArrayList2.add(localPluginPreference13);
      break label917;
      label1802: n = 0;
      break label967;
      label1808: localArrayList2.add(localPluginPreference14);
      break label981;
      label1820: localPluginPreference14.np(8);
      localPluginPreference14.aq("", -1);
      break label1031;
      label1839: m = 0;
      break label1087;
      label1845: localArrayList2.add(localPluginPreference20);
      break label1101;
      label1857: localPluginPreference20.np(8);
      localPluginPreference20.aq("", -1);
      break label1151;
      label1876: k = 0;
      break label1205;
      label1882: localArrayList2.add(localPluginPreference15);
      break label1219;
      label1894: j = 0;
      break label1286;
      label1900: localArrayList2.add(localPluginPreference19);
      break label1300;
      label1912: i = 0;
      break label1390;
      label1918: localArrayList2.add(localPluginPreference16);
    }
    PreferenceCategory localPreferenceCategory1 = new PreferenceCategory(this);
    this.cIG.b(localPreferenceCategory1);
    PluginTextPreference localPluginTextPreference2 = new PluginTextPreference(this);
    localPluginTextPreference2.setImageResource(2130839237);
    localPluginTextPreference2.nt(2131165866);
    this.cIG.b(localPluginTextPreference2);
    if (localArrayList2.isEmpty())
    {
      PluginEmptyTextPreference localPluginEmptyTextPreference = new PluginEmptyTextPreference(this);
      this.cIG.b(localPluginEmptyTextPreference);
    }
    Iterator localIterator2 = localArrayList2.iterator();
    while (localIterator2.hasNext())
    {
      PluginPreference localPluginPreference17 = (PluginPreference)localIterator2.next();
      localPluginPreference17.nT(136);
      this.cIG.b(localPluginPreference17);
    }
    PreferenceCategory localPreferenceCategory2 = new PreferenceCategory(this);
    this.cIG.b(localPreferenceCategory2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsPluginsUI
 * JD-Core Version:    0.6.2
 */