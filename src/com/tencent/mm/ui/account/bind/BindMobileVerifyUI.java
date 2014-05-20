package com.tencent.mm.ui.account.bind;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.InputFilter;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.c.a.ho;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.modelfriend.AddrBookObserver;
import com.tencent.mm.modelfriend.ai;
import com.tencent.mm.modelsimple.BindWordingContent;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.friend.FindMContactAddUI;
import java.util.Timer;

public class BindMobileVerifyUI extends MMWizardActivity
  implements com.tencent.mm.n.m
{
  private String bTR;
  private ch cHU = null;
  private Timer eSL;
  private EditText grF;
  private Button grH;
  private boolean gvB = false;
  private TextView gvF;
  private TextView gvG;
  private boolean gvH = false;
  private boolean gvI = false;
  private boolean gvJ = false;
  private Integer gvK = Integer.valueOf(15);
  private BindWordingContent gvl;
  private int gvm;
  private boolean gvn;
  private boolean gvo;

  private void aGo()
  {
    if (this.eSL != null)
    {
      this.eSL.cancel();
      this.eSL = null;
    }
  }

  protected final void FR()
  {
    this.bTR = ((String)be.uz().sr().get(4097));
    this.grF = ((EditText)findViewById(i.anL));
    this.gvF = ((TextView)findViewById(i.anK));
    this.gvG = ((TextView)findViewById(i.anF));
    this.gvH = getIntent().getBooleanExtra("is_bind_for_safe_device", false);
    this.gvI = getIntent().getBooleanExtra("is_bind_for_contact_sync", false);
    this.gvJ = getIntent().getBooleanExtra("BIND_FOR_QQ_REG", false);
    Button localButton1 = (Button)findViewById(i.anI);
    if ((this.bTR == null) || (this.bTR.equals("")))
      this.bTR = ((String)be.uz().sr().get(6));
    if ((this.bTR != null) && (this.bTR.length() > 0))
    {
      this.gvF.setVisibility(0);
      this.gvF.setText(this.bTR);
    }
    InputFilter[] arrayOfInputFilter = new InputFilter[1];
    arrayOfInputFilter[0] = new l(this);
    this.grF.setFilters(arrayOfInputFilter);
    this.grH = ((Button)findViewById(i.anN));
    localButton1.setVisibility(8);
    TextView localTextView = this.gvG;
    Resources localResources = getResources();
    int i = com.tencent.mm.l.bcv;
    int j = this.gvK.intValue();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.gvK;
    localTextView.setText(localResources.getQuantityString(i, j, arrayOfObject));
    if (this.eSL == null)
    {
      this.eSL = new Timer();
      q localq = new q(this);
      if (this.eSL != null)
        this.eSL.schedule(localq, 1000L, 1000L);
    }
    a(0, getString(n.bec), new m(this));
    a(new o(this));
    Button localButton2 = this.grH;
    if (com.tencent.mm.x.b.fZ(this.bTR));
    for (int k = 0; ; k = 8)
    {
      localButton2.setVisibility(k);
      this.grH.setOnClickListener(new p(this));
      return;
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    boolean bool1 = true;
    aa.i("MicroMsg.BindMobileVerifyUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (((ai)paramx).vI() != 2);
    do
    {
      return;
      if (this.cHU != null)
      {
        this.cHU.dismiss();
        this.cHU = null;
      }
      if ((paramInt1 != 0) || (paramInt2 != 0))
        break;
    }
    while (((ai)paramx).vI() != 2);
    if (this.gvH)
    {
      if (!v.to())
      {
        ho localho = new ho();
        localho.bRi.bRj = bool1;
        localho.bRi.bRk = bool1;
        com.tencent.mm.sdk.b.a.ayH().f(localho);
      }
      aFs();
      Intent localIntent2 = new Intent();
      localIntent2.addFlags(67108864);
      com.tencent.mm.plugin.a.a.cHS.d(this, localIntent2);
      return;
    }
    if (this.gvJ)
    {
      aFs();
      startActivity(new Intent(this, FindMContactAddUI.class));
      return;
    }
    if (this.gvB)
    {
      boolean bool2;
      if (!this.gvn)
      {
        bool2 = bool1;
        if (this.gvo)
          break label256;
      }
      while (true)
      {
        BindMobileStatusUI.a(this, bool2, bool1);
        exit(-1);
        return;
        bool2 = false;
        break;
        label256: bool1 = false;
      }
    }
    if (!this.gvI)
      AddrBookObserver.N(getApplicationContext());
    Intent localIntent1 = new Intent(this, BindMobileStatusUI.class);
    localIntent1.putExtra("kstyle_bind_wording", this.gvl);
    localIntent1.putExtra("kstyle_bind_recommend_show", this.gvm);
    localIntent1.putExtra("Kfind_friend_by_mobile_flag", this.gvn);
    localIntent1.putExtra("Krecom_friends_by_mobile_flag", this.gvo);
    j(this, localIntent1);
    return;
    int i;
    switch (paramInt2)
    {
    default:
      i = 0;
    case -34:
    case -43:
    case -214:
    case -41:
    case -35:
    case -36:
    case -32:
    case -33:
    }
    while (i == 0)
    {
      int j = n.bfv;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[bool1] = Integer.valueOf(paramInt2);
      Toast.makeText(this, getString(j, arrayOfObject), 0).show();
      return;
      Toast.makeText(this, n.beS, 0).show();
      i = bool1;
      continue;
      Toast.makeText(this, n.beP, 0).show();
      i = bool1;
      continue;
      com.tencent.mm.d.a locala = com.tencent.mm.d.a.be(paramString);
      if (locala != null)
        locala.a(this, null, null);
      i = bool1;
      continue;
      Toast.makeText(this, n.beR, 0).show();
      i = bool1;
      continue;
      Toast.makeText(this, n.beQ, 0).show();
      i = bool1;
      continue;
      Toast.makeText(this, n.beU, 0).show();
      i = bool1;
      continue;
      h.a(this, n.bfx, n.anM, null);
      i = bool1;
      continue;
      h.a(this, n.bfw, n.anM, null);
      i = bool1;
    }
  }

  protected final int getLayoutId()
  {
    return k.aSG;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    be.uA().a(132, this);
    mn(n.bfl);
    this.gvl = ((BindWordingContent)getIntent().getParcelableExtra("kstyle_bind_wording"));
    this.gvm = getIntent().getIntExtra("kstyle_bind_recommend_show", 0);
    this.gvn = getIntent().getBooleanExtra("Kfind_friend_by_mobile_flag", false);
    this.gvo = getIntent().getBooleanExtra("Krecom_friends_by_mobile_flag", false);
    this.gvB = getIntent().getBooleanExtra("is_bind_for_chatroom_upgrade", false);
    FR();
  }

  public void onDestroy()
  {
    be.uA().b(132, this);
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getAction() == 0))
      return true;
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onStop()
  {
    aGo();
    super.onStop();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bind.BindMobileVerifyUI
 * JD-Core Version:    0.6.2
 */