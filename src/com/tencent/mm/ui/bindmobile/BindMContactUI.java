package com.tencent.mm.ui.bindmobile;

import android.content.ContentResolver;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.bc;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.friend.ct;
import java.util.Map;

public class BindMContactUI extends MMWizardActivity
{
  private String bTR;
  private String cjJ = null;
  private String cuq = null;
  private boolean gIP = false;
  private TextView gIY;
  private LinearLayout gIZ;
  private boolean gJa = false;
  private LinearLayout gqB;
  private TextView gqC;
  private String gqE = null;
  private boolean gvH = false;
  private boolean gvJ = false;
  private EditText gvr;
  private TextView gvs;
  private ct gvt;
  private CheckBox gvx;

  private void aIz()
  {
    if ((this.gvH) || (this.gIP))
    {
      gon.clear();
      aFs();
      return;
    }
    h.a(this, n.beV, n.beW, new ac(this), null);
  }

  protected final void FR()
  {
    this.gvH = getIntent().getBooleanExtra("is_bind_for_safe_device", false);
    this.gIP = getIntent().getBooleanExtra("is_bind_for_contact_sync", false);
    this.gvJ = getIntent().getBooleanExtra("BIND_FOR_QQ_REG", false);
    this.gJa = getIntent().getBooleanExtra("is_bind_for_change_mobile", false);
    this.gvr = ((EditText)findViewById(i.anC));
    this.gqB = ((LinearLayout)findViewById(i.aqL));
    this.gqC = ((TextView)findViewById(i.aqM));
    this.gvs = ((TextView)findViewById(i.aqK));
    this.gvx = ((CheckBox)findViewById(i.anz));
    this.gIZ = ((LinearLayout)findViewById(i.anA));
    this.gIY = ((TextView)findViewById(i.aJo));
    String str1;
    String str2;
    String str3;
    if (this.gJa)
    {
      str1 = (String)be.uz().sr().get(6);
      if (!cj.hX(str1))
      {
        if (!str1.startsWith("+"))
          break label441;
        String str5 = bc.sK(str1);
        str2 = str1.substring(1 + str5.length());
        str3 = str5;
        new bc();
        String str4 = bc.aO(str3, str2);
        this.gIY.setText(getString(n.beM, new Object[] { str4 }));
      }
    }
    if ((this.cuq != null) && (!this.cuq.equals("")))
      this.gqC.setText(this.cuq);
    if ((this.cjJ != null) && (!this.cjJ.equals("")))
      this.gvs.setText("+" + this.cjJ);
    if ((this.gqE != null) && (!this.gqE.equals("")))
      this.gvr.setText(this.gqE);
    while (true)
    {
      if (com.tencent.mm.x.b.Bj())
      {
        this.gIZ.setVisibility(4);
        this.gvx.setChecked(true);
      }
      a(0, getString(n.bec), new ae(this));
      this.gvr.requestFocus();
      a(new af(this));
      this.gqB.setOnClickListener(new ag(this));
      return;
      label441: str2 = str1;
      str3 = "86";
      break;
      be.ut().a(new ad(this));
    }
  }

  protected final int getLayoutId()
  {
    return k.aSD;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt2)
    {
    default:
    case 100:
    }
    do
    {
      return;
      this.cuq = cj.R(paramIntent.getStringExtra("country_name"), "");
      this.cjJ = cj.R(paramIntent.getStringExtra("couttry_code"), "");
      if (!this.cuq.equals(""))
        this.gqC.setText(this.cuq);
    }
    while (this.cjJ.equals(""));
    this.gvs.setText("+" + this.cjJ);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.bfi);
    this.cuq = cj.R(getIntent().getStringExtra("country_name"), "");
    this.cjJ = cj.R(getIntent().getStringExtra("couttry_code"), "");
    this.gqE = cj.R(getIntent().getStringExtra("bindmcontact_shortmobile"), "");
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
    if (this.gvt != null)
    {
      getContentResolver().unregisterContentObserver(this.gvt);
      this.gvt.recycle();
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      aIz();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.BindMContactUI
 * JD-Core Version:    0.6.2
 */