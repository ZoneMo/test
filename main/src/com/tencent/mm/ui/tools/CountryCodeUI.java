package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.ListView;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.VerticalScrollBar;
import com.tencent.mm.ui.base.ek;
import com.tencent.mm.x.a;
import com.tencent.mm.x.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class CountryCodeUI extends MMActivity
{
  private String cIs = "";
  private String cjJ;
  private String cuq;
  private ek dLM;
  private eo diw;
  private List dtu;
  private ListView hhI;
  private y hhJ;
  private VerticalScrollBar hhK;

  protected final void FR()
  {
    mn(2131166188);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.CountryCodeUI", "CHT:initCountryCode start:" + System.currentTimeMillis());
    String[] arrayOfString1 = getString(2131166725).trim().split(",");
    if (!b.Bk())
    {
      for (int k = 0; k < arrayOfString1.length; k++)
      {
        String[] arrayOfString3 = arrayOfString1[k].trim().split(":");
        this.dtu.add(new x(arrayOfString3[1], arrayOfString3[0], arrayOfString3[2].charAt(0), arrayOfString3[2]));
      }
      Collections.sort(this.dtu, new aa(this));
      this.diw = new eo();
      this.diw.a(new ac(this));
      a(true, this.diw);
      this.hhI = ((ListView)findViewById(2131361903));
      this.hhJ = new y(this, this.dtu);
      this.hhI.setAdapter(this.hhJ);
      this.hhI.setVisibility(0);
      this.hhK = ((VerticalScrollBar)findViewById(2131361906));
      if (b.Bk())
        break label434;
    }
    label434: for (this.dLM = new ad(this); ; this.dLM = new ae(this))
    {
      this.hhK.a(this.dLM);
      a(new af(this));
      this.hhI.setOnItemClickListener(new ag(this));
      return;
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.CountryCodeUI", "CHT:initCountryCode t1:" + System.currentTimeMillis());
      for (int i = 0; i < arrayOfString1.length; i++)
      {
        String[] arrayOfString2 = arrayOfString1[i].trim().split(":");
        int j = a.fY(arrayOfString2[1]);
        this.dtu.add(new x(arrayOfString2[1], arrayOfString2[0], j, arrayOfString2[1]));
      }
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.CountryCodeUI", "CHT:initCountryCode t2:" + System.currentTimeMillis());
      Collections.sort(this.dtu, new ab(this));
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.CountryCodeUI", "CHT2:initCountryCode t3:" + System.currentTimeMillis());
      break;
    }
  }

  protected final int getLayoutId()
  {
    if (b.Bk())
      return 2130903239;
    return 2130903238;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.dtu = new ArrayList();
    this.cuq = au.R(getIntent().getStringExtra("country_name"), "");
    this.cjJ = au.R(getIntent().getStringExtra("couttry_code"), "");
    FR();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("country_name", this.cuq);
      localIntent.putExtra("couttry_code", this.cjJ);
      setResult(100, localIntent);
      finish();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    super.onPause();
    if (this.diw != null)
      this.diw.aNE();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.CountryCodeUI
 * JD-Core Version:    0.6.2
 */