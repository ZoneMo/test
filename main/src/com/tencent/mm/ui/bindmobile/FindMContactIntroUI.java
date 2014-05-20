package com.tencent.mm.ui.bindmobile;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ap;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.base.h;
import java.util.List;

public class FindMContactIntroUI extends MMWizardActivity
{
  private String bTR;
  private ProgressDialog cIr = null;
  private List cqK = null;
  private m cyn = null;
  private String eaA;
  private Button gIL;
  private boolean gJf = false;
  private ap gJg;
  private TextView gJh;
  private TextView gJi;
  private String grN = null;
  private String grR = "";
  private int grS = 2;

  private void Zz()
  {
    com.tencent.mm.plugin.a.b.ie(this.eaA);
    SM();
    aFs();
  }

  private void aIA()
  {
    ac localac = be.uA();
    av localav = new av(this);
    this.cyn = localav;
    localac.a(431, localav);
    Activity localActivity = aal();
    getString(n.ber);
    this.cIr = h.a(localActivity, getString(n.bIp), true, new aw(this));
    be.ut().a(new ax(this));
  }

  protected final void FR()
  {
    this.gIL = ((Button)findViewById(i.aJs));
    this.gJi = ((TextView)findViewById(i.atB));
    this.gJh = ((TextView)findViewById(i.atA));
    if ((this.grR != null) && (this.grR.contains("2")))
      this.gJh.setText(getString(n.bmb));
    while (true)
    {
      this.bTR = ((String)be.uz().sr().get(6));
      if ((this.bTR == null) || (this.bTR.equals("")))
        this.bTR = ((String)be.uz().sr().get(4097));
      this.gIL.setOnClickListener(new an(this));
      this.gJi.setOnClickListener(new ao(this));
      return;
      this.gJh.setText(getString(n.bmc));
    }
  }

  protected final int getLayoutId()
  {
    return k.aUp;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.aty);
    a.cHT.nJ();
    this.grN = getIntent().getStringExtra("regsetinfo_ticket");
    this.grR = getIntent().getStringExtra("regsetinfo_NextStep");
    this.grS = getIntent().getIntExtra("regsetinfo_NextStyle", 2);
    if (z.zp() != com.tencent.mm.modelfriend.aa.crc);
    for (boolean bool = true; ; bool = false)
    {
      this.gJf = bool;
      this.eaA = com.tencent.mm.plugin.a.b.FL();
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.grR;
      arrayOfObject[1] = Integer.valueOf(this.grS);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.FindMContactIntroUI", "tigerreg mNextStep %s  mNextStyle %s ", arrayOfObject);
      return;
    }
  }

  public void onDestroy()
  {
    if (this.cyn != null)
    {
      be.uA().b(431, this.cyn);
      this.cyn = null;
    }
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      Zz();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    super.onPause();
    if (this.gJf)
    {
      com.tencent.mm.plugin.a.b.b(false, be.uv() + "," + getClass().getName() + ",R300_100_QQ," + be.ds("R300_100_QQ") + ",2");
      return;
    }
    com.tencent.mm.plugin.a.b.b(false, be.uv() + "," + getClass().getName() + ",R300_100_phone," + be.ds("R300_100_phone") + ",2");
  }

  protected void onResume()
  {
    super.onResume();
    FR();
    if (this.gJf)
    {
      com.tencent.mm.plugin.a.b.id("R300_100_QQ");
      com.tencent.mm.plugin.a.b.b(true, be.uv() + "," + getClass().getName() + ",R300_100_QQ," + be.ds("R300_100_QQ") + ",1");
      return;
    }
    com.tencent.mm.plugin.a.b.id("R300_100_phone");
    com.tencent.mm.plugin.a.b.b(true, be.uv() + "," + getClass().getName() + ",R300_100_phone," + be.ds("R300_100_phone") + ",1");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.FindMContactIntroUI
 * JD-Core Version:    0.6.2
 */