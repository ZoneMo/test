package com.tencent.mm.ui.tools;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.storage.RegionCodeDecoder;
import com.tencent.mm.storage.RegionCodeDecoder.Region;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.PreferenceCategory;
import com.tencent.mm.ui.base.preference.n;

public class MultiStageCitySelectUI extends MMPreference
{
  private static String cuq = null;
  private static String hlF = null;
  private static String hlG = null;
  private n cIG;
  private String cjJ = null;
  private String cjK = null;
  private String cjL = null;
  private int eWq = 0;
  private RegionCodeDecoder.Region[] hlH;
  private boolean hlI = false;

  private void aNA()
  {
    int i = 0;
    RegionCodeDecoder.Region[] arrayOfRegion;
    if (au.hX(this.cjJ))
      arrayOfRegion = RegionCodeDecoder.aDe().aDh();
    while (true)
    {
      this.hlH = arrayOfRegion;
      if ((this.hlH != null) && (this.hlH.length > 0))
        break;
      aa.e("MicroMsg.MultiStageCitySelectUI", "initZoneItems error ,check zone lists!");
      return;
      if (au.hX(this.cjL))
        arrayOfRegion = RegionCodeDecoder.aDe().vz(this.cjJ);
      else
        arrayOfRegion = RegionCodeDecoder.aDe().aX(this.cjJ, this.cjL);
    }
    this.cIG.removeAll();
    TelephonyManager localTelephonyManager;
    String str;
    if (this.cjJ == null)
    {
      localTelephonyManager = (TelephonyManager)al.getContext().getSystemService("phone");
      if (localTelephonyManager == null)
        str = null;
    }
    while (true)
    {
      int j = 0;
      int k = 0;
      while (true)
        if (j < this.hlH.length)
        {
          if ((this.hlH[j] != null) && (!au.hX(this.hlH[j].getCode())) && (!au.hX(this.hlH[j].getName())))
          {
            ZonePreference localZonePreference = new ZonePreference(this);
            localZonePreference.a(this.hlH[j]);
            this.cIG.b(localZonePreference);
            if ((!au.hX(str)) && (this.hlH[j].getCode().equalsIgnoreCase(str)))
              k = i;
            i++;
          }
          j++;
          continue;
          str = localTelephonyManager.getSimCountryIso();
          if (!au.hX(str))
            break;
          str = null;
          break;
        }
      PreferenceCategory localPreferenceCategory = new PreferenceCategory(aal());
      this.cIG.b(localPreferenceCategory);
      if (k == 0)
        break;
      setSelection(k + 1);
      return;
      str = null;
    }
  }

  private void aNB()
  {
    switch (this.eWq)
    {
    default:
      return;
    case 2:
      this.cjK = null;
      return;
    case 1:
      this.cjL = null;
      return;
    case 0:
    }
    this.cjJ = null;
  }

  protected final void FR()
  {
    mn(2131168133);
    a(new ef(this));
    this.hlI = getIntent().getBooleanExtra("GetAddress", false);
    this.cjJ = getIntent().getStringExtra("Country");
    this.cjL = getIntent().getStringExtra("Provice");
    aa.i("MicroMsg.MultiStageCitySelectUI", " country = " + this.cjJ + " province =" + this.cjL + " city = " + this.cjK);
    if (this.cjJ == null)
    {
      this.eWq = 0;
      this.cjL = null;
      this.cjK = null;
    }
    while (true)
    {
      aNA();
      return;
      if (this.cjL == null)
      {
        this.eWq = 1;
        this.cjK = null;
      }
      else
      {
        this.eWq = 2;
      }
    }
  }

  public final int Gc()
  {
    return 2130903879;
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    if ((paramPreference instanceof ZonePreference))
    {
      RegionCodeDecoder.Region localRegion = ((ZonePreference)paramPreference).aOi();
      if ((localRegion == null) || (au.hX(localRegion.getCode())))
      {
        StringBuilder localStringBuilder1 = new StringBuilder("onPreferenceTreeClick error item, code:");
        Object localObject;
        StringBuilder localStringBuilder2;
        if (localRegion == null)
        {
          localObject = Integer.valueOf(-1);
          localStringBuilder2 = localStringBuilder1.append(localObject).append(" ,name:");
          if (localRegion != null)
            break label98;
        }
        label98: for (String str = "null"; ; str = localRegion.getName())
        {
          aa.e("MicroMsg.MultiStageCitySelectUI", str);
          return false;
          localObject = localRegion.getCode();
          break;
        }
      }
      if (this.eWq == 0)
      {
        this.cjJ = localRegion.getCode();
        cuq = localRegion.getName();
      }
      while (!localRegion.hasChildren())
      {
        if (!this.hlI)
        {
          be.uz().sr().set(12324, this.cjJ);
          be.uz().sr().set(12325, this.cjL);
          be.uz().sr().set(12326, this.cjK);
        }
        Intent localIntent2 = new Intent();
        localIntent2.putExtra("CountryName", cuq);
        localIntent2.putExtra("ProviceName", hlF);
        localIntent2.putExtra("CityName", hlG);
        localIntent2.putExtra("Country", this.cjJ);
        localIntent2.putExtra("Contact_Province", this.cjL);
        localIntent2.putExtra("Contact_City", this.cjK);
        setResult(-1, localIntent2);
        finish();
        return true;
        if (this.eWq == 1)
        {
          this.cjL = localRegion.getCode();
          hlF = localRegion.getName();
        }
        else if (this.eWq == 2)
        {
          this.cjK = localRegion.getCode();
          hlG = localRegion.getName();
        }
      }
      Intent localIntent1 = new Intent(this, MultiStageCitySelectUI.class);
      Bundle localBundle = new Bundle();
      localBundle.putString("Country", this.cjJ);
      localBundle.putString("Provice", this.cjL);
      localBundle.putBoolean("GetAddress", this.hlI);
      localIntent1.putExtras(localBundle);
      startActivityForResult(localIntent1, 1);
      return true;
    }
    return false;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default:
    case 1:
    }
    do
      return;
    while (paramInt2 != -1);
    setResult(-1, paramIntent);
    finish();
  }

  public void onBackPressed()
  {
    aNB();
    super.onBackPressed();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.cIG = aIj();
    FR();
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.MultiStageCitySelectUI
 * JD-Core Version:    0.6.2
 */