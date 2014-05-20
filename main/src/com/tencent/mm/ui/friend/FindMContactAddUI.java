package com.tencent.mm.ui.friend;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.p;
import com.tencent.mm.modelfriend.v;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.base.h;
import java.util.List;

public class FindMContactAddUI extends MMWizardActivity
{
  private ListView cIo;
  private ProgressDialog cIr = null;
  private TextView cPW = null;
  private m cyn = null;
  private String eaA;
  private View fnS;
  private int grM;
  private String grN = null;
  private String grR = "";
  private int grS = 2;
  private p hbf;
  private TextView hbg = null;
  private TextView hbh = null;
  private TextView hbi = null;
  private TextView hbj = null;
  private Button hbk = null;
  private List hbl;
  private v hbm = new aj(this);

  private void Zz()
  {
    b.ie(this.eaA);
    SM();
    aFs();
  }

  protected final void FR()
  {
    this.cPW = ((TextView)findViewById(i.aBI));
    this.cPW.setText(n.brB);
    this.cIo = ((ListView)findViewById(i.aBK));
    if ((this.grS != 2) && (this.grS == 1))
    {
      this.fnS = LayoutInflater.from(this).inflate(k.aUo, null);
      this.hbg = ((TextView)this.fnS.findViewById(i.atz));
      this.hbh = ((TextView)this.fnS.findViewById(i.atC));
      this.hbi = ((TextView)this.fnS.findViewById(i.aty));
      this.hbk = ((Button)this.fnS.findViewById(i.atx));
      this.hbh.setText(getString(n.bmq));
      this.hbi.setText(getString(n.bmr));
      this.hbk.setText(getString(n.blZ));
    }
    while (true)
    {
      this.hbf = new p(this, this.hbm, 1);
      this.hbk.setOnClickListener(new ak(this));
      if (this.hbj != null)
      {
        this.hbj.setOnClickListener(new al(this));
        this.hbj.setVisibility(8);
      }
      this.cIo.addHeaderView(this.fnS);
      this.cIo.setAdapter(this.hbf);
      a(0, getString(n.bec), new am(this));
      new an(this);
      return;
      this.fnS = LayoutInflater.from(this).inflate(k.aUn, null);
      this.hbg = ((TextView)this.fnS.findViewById(i.atz));
      this.hbh = ((TextView)this.fnS.findViewById(i.atC));
      this.hbi = ((TextView)this.fnS.findViewById(i.aty));
      this.hbk = ((Button)this.fnS.findViewById(i.atx));
      this.hbh.setText(getString(n.bmq));
      this.hbi.setText(getString(n.bmr));
      Button localButton = this.hbk;
      int i = n.blY;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(0);
      localButton.setText(getString(i, arrayOfObject));
      this.hbj = ((TextView)this.fnS.findViewById(i.aBE));
    }
  }

  protected final int getLayoutId()
  {
    return k.aUm;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.bmd);
    a.cHT.nJ();
    this.grN = getIntent().getStringExtra("regsetinfo_ticket");
    this.grR = getIntent().getStringExtra("regsetinfo_NextStep");
    this.grS = getIntent().getIntExtra("regsetinfo_NextStyle", 2);
    this.grM = getIntent().getIntExtra("login_type", 0);
    this.eaA = b.FL();
    FR();
  }

  public void onDestroy()
  {
    if (this.cyn != null)
    {
      be.uA().b(30, this.cyn);
      this.cyn = null;
    }
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      Zz();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    super.onPause();
    if (this.grM == 1)
    {
      b.b(false, be.uv() + "," + getClass().getName() + ",R300_300_QQ," + be.ds("R300_300_QQ") + ",2");
      return;
    }
    b.b(false, be.uv() + "," + getClass().getName() + ",R300_300_phone," + be.ds("R300_300_phone") + ",2");
  }

  protected void onResume()
  {
    super.onResume();
    this.hbf.notifyDataSetChanged();
    if (this.grM == 1)
    {
      b.id("R300_300_QQ");
      b.b(true, be.uv() + "," + getClass().getName() + ",R300_300_QQ," + be.ds("R300_300_QQ") + ",1");
    }
    while (true)
    {
      Activity localActivity = aal();
      getString(n.ber);
      this.cIr = h.a(localActivity, getString(n.brD), true, new af(this));
      be.ut().a(new ai(this));
      return;
      b.id("R300_300_phone");
      b.b(true, be.uv() + "," + getClass().getName() + ",R300_300_phone," + be.ds("R300_300_phone") + ",1");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.FindMContactAddUI
 * JD-Core Version:    0.6.2
 */