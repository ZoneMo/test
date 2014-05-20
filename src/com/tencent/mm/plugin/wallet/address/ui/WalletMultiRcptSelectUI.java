package com.tencent.mm.plugin.wallet.address.ui;

import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.plugin.wallet.address.model.RcptItem;
import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.q;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.PreferenceSmallCategory;
import java.util.List;

public class WalletMultiRcptSelectUI extends MMPreference
{
  private com.tencent.mm.ui.base.preference.n cIG;
  private int eWq = 0;
  private RcptItem eWr = null;
  private RcptItem eWs = null;
  private List eWt;

  private void and()
  {
    switch (this.eWq)
    {
    default:
    case 2:
    case 1:
    }
    while (true)
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("key_stage", this.eWq);
      localIntent.putExtra("key_province", this.eWr);
      localIntent.putExtra("key_city", this.eWs);
      setResult(0, localIntent);
      finish();
      return;
      this.eWs = null;
      this.eWq = 1;
      continue;
      this.eWr = null;
      this.eWq = 0;
    }
  }

  private void o(Intent paramIntent)
  {
    this.eWq = paramIntent.getIntExtra("key_stage", 0);
    this.eWr = ((RcptItem)paramIntent.getParcelableExtra("key_province"));
    this.eWs = ((RcptItem)paramIntent.getParcelableExtra("key_city"));
  }

  protected final void FR()
  {
    mn(com.tencent.mm.n.bdj);
    a(new i(this));
    o(getIntent());
    List localList;
    switch (this.eWq)
    {
    default:
      c.anX();
      localList = c.anY().ana();
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      this.eWt = localList;
      if ((this.eWt != null) && (this.eWt.size() > 0))
        break label195;
      aa.e("MicroMsg.MultiRptSelectUI", "initZoneItems error ,check zone lists!");
      return;
      c.anX();
      localList = c.anY().ana();
      continue;
      if ((this.eWr != null) && (!cj.hX(this.eWr.code)))
      {
        c.anX();
        localList = c.anY().px(this.eWr.code);
      }
      else
      {
        if ((this.eWs == null) || (cj.hX(this.eWs.code)))
          break;
        c.anX();
        localList = c.anY().py(this.eWs.code);
      }
    }
    label195: this.cIG.removeAll();
    for (int i = 0; i < this.eWt.size(); i++)
      if ((this.eWt.get(i) != null) && (!cj.hX(((RcptItem)this.eWt.get(i)).name)))
      {
        RcptPreference localRcptPreference = new RcptPreference(this);
        localRcptPreference.a((RcptItem)this.eWt.get(i));
        this.cIG.b(localRcptPreference);
      }
    PreferenceSmallCategory localPreferenceSmallCategory = new PreferenceSmallCategory(this);
    this.cIG.b(localPreferenceSmallCategory);
  }

  public final int Gc()
  {
    return q.bJU;
  }

  public final boolean a(com.tencent.mm.ui.base.preference.n paramn, Preference paramPreference)
  {
    RcptItem localRcptItem;
    if ((paramPreference instanceof RcptPreference))
    {
      localRcptItem = ((RcptPreference)paramPreference).anb();
      if ((localRcptItem == null) || (cj.hX(localRcptItem.name)))
        aa.e("MicroMsg.MultiRptSelectUI", "onPreferenceTreeClick error item, item is null or item.name isNullOrNil");
    }
    else
    {
      return false;
    }
    if (!localRcptItem.eWb)
      this.eWq = 2;
    switch (this.eWq)
    {
    default:
    case 0:
    case 1:
      while (true)
      {
        Intent localIntent2 = new Intent(this, WalletMultiRcptSelectUI.class);
        localIntent2.putExtra("key_stage", this.eWq);
        localIntent2.putExtra("key_province", this.eWr);
        localIntent2.putExtra("key_city", this.eWs);
        startActivityForResult(localIntent2, 1);
        return false;
        this.eWr = localRcptItem;
        this.eWq = 1;
        continue;
        this.eWs = localRcptItem;
        this.eWq = 2;
      }
    case 2:
    }
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.eWr != null)
      localStringBuilder.append(this.eWr.name).append(" ");
    if (this.eWs != null)
      localStringBuilder.append(this.eWs.name).append(" ");
    localStringBuilder.append(localRcptItem.name);
    aa.d("MicroMsg.MultiRptSelectUI", "area_result: " + localStringBuilder.toString() + ",item.name: " + localRcptItem.name);
    Intent localIntent1 = new Intent();
    localIntent1.putExtra("karea_result", localStringBuilder.toString());
    localIntent1.putExtra("kpost_code", localRcptItem.eWa);
    localIntent1.putExtra("kwcode", localRcptItem.code);
    setResult(-1, localIntent1);
    finish();
    return false;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default:
      return;
    case 1:
    }
    if (paramInt2 == -1)
    {
      setResult(-1, paramIntent);
      finish();
      return;
    }
    o(paramIntent);
  }

  public void onBackPressed()
  {
    and();
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
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.ui.WalletMultiRcptSelectUI
 * JD-Core Version:    0.6.2
 */