package com.tencent.mm.ui.bindmobile;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
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
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.protocal.a.gf;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.az;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.friend.FindMContactAddUI;

public class BindMContactVerifyUI extends MMWizardActivity
  implements m
{
  private String bTR;
  private ch cHU = null;
  private SharedPreferences chz;
  private boolean gJa = false;
  private boolean gJc = false;
  private EditText grF;
  private TextView grG;
  private Button grH;
  private boolean gvH = false;
  private boolean gvI = false;
  private boolean gvJ = false;
  private int status;

  protected final void FR()
  {
    this.bTR = ((String)be.uz().sr().get(4097));
    this.grF = ((EditText)findViewById(i.anL));
    this.gvH = getIntent().getBooleanExtra("is_bind_for_safe_device", false);
    this.gvI = getIntent().getBooleanExtra("is_bind_for_contact_sync", false);
    this.gvJ = getIntent().getBooleanExtra("BIND_FOR_QQ_REG", false);
    this.gJc = getIntent().getBooleanExtra("BIND_FIND_ME_BY_MOBILE", false);
    this.gJa = getIntent().getBooleanExtra("is_bind_for_change_mobile", false);
    Button localButton1 = (Button)findViewById(i.anI);
    if ((this.bTR == null) || (this.bTR.equals("")))
      this.bTR = ((String)be.uz().sr().get(6));
    InputFilter[] arrayOfInputFilter = new InputFilter[1];
    arrayOfInputFilter[0] = new ai(this);
    this.grF.setFilters(arrayOfInputFilter);
    this.grH = ((Button)findViewById(i.anN));
    this.grG = ((TextView)findViewById(i.anJ));
    boolean bool = this.gJc;
    Button localButton2;
    if (!bool)
    {
      this.status = (0x200 | this.status);
      this.chz.edit().putBoolean("settings_find_me_by_mobile", bool).commit();
      aa.d("MicroMsg.BindMContactVerifyUI", "Bind mobile update = " + this.status);
      TextView localTextView = this.grG;
      int i = n.bfa;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.bTR;
      localTextView.setText(getString(i, arrayOfObject));
      localButton1.setOnClickListener(new aj(this));
      a(new al(this));
      localButton2 = this.grH;
      if (!com.tencent.mm.x.b.fZ(this.bTR))
        break label390;
    }
    label390: for (int j = 0; ; j = 8)
    {
      localButton2.setVisibility(j);
      this.grH.setOnClickListener(new am(this));
      return;
      this.status = (0xFFFFFDFF & this.status);
      break;
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    int i = 1;
    aa.i("MicroMsg.BindMContactVerifyUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if ((((com.tencent.mm.modelfriend.ai)paramx).vI() != 2) && (((com.tencent.mm.modelfriend.ai)paramx).vI() != 19));
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
    while ((((com.tencent.mm.modelfriend.ai)paramx).vI() != 2) && (((com.tencent.mm.modelfriend.ai)paramx).vI() != 19));
    if (this.gvH)
    {
      if (!v.to())
      {
        ho localho = new ho();
        localho.bRi.bRj = i;
        localho.bRi.bRk = i;
        com.tencent.mm.sdk.b.a.ayH().f(localho);
      }
      aFs();
      Intent localIntent = new Intent();
      localIntent.addFlags(67108864);
      com.tencent.mm.plugin.a.a.cHS.d(this, localIntent);
      return;
    }
    if (this.gvJ)
    {
      aFs();
      startActivity(new Intent(this, FindMContactAddUI.class));
      return;
    }
    int m;
    gf localgf;
    if ((0x200 & this.status) > 0)
    {
      m = i;
      be.uz().sr().set(7, Integer.valueOf(this.status));
      localgf = new gf();
      localgf.fIH = 8;
      if (m == 0)
        break label394;
    }
    while (true)
    {
      localgf.fII = i;
      be.uz().st().a(new az(23, localgf));
      com.tencent.mm.plugin.a.a.cHT.nE();
      if (!this.gvI)
        AddrBookObserver.N(getApplicationContext());
      if ((!this.gJa) && (this.gJa))
      {
        String str = getString(n.bwA);
        h.an(this, str);
      }
      j(this, new Intent(this, BindMContactStatusUI.class));
      return;
      m = 0;
      break;
      label394: i = 2;
    }
    int j;
    switch (paramInt2)
    {
    default:
      j = 0;
    case -34:
    case -43:
    case -214:
    case -41:
    case -35:
    case -36:
    case -32:
    case -33:
    }
    while (j == 0)
    {
      int k = n.bfv;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[i] = Integer.valueOf(paramInt2);
      Toast.makeText(this, getString(k, arrayOfObject), 0).show();
      return;
      Toast.makeText(this, n.beS, 0).show();
      j = i;
      continue;
      Toast.makeText(this, n.beP, 0).show();
      j = i;
      continue;
      com.tencent.mm.d.a locala = com.tencent.mm.d.a.be(paramString);
      if (locala != null)
        locala.a(this, null, null);
      j = i;
      continue;
      Toast.makeText(this, n.beR, 0).show();
      j = i;
      continue;
      Toast.makeText(this, n.beQ, 0).show();
      j = i;
      continue;
      Toast.makeText(this, n.beU, 0).show();
      j = i;
      continue;
      h.a(this, n.bfx, n.anM, null);
      j = i;
      continue;
      h.a(this, n.bfw, n.anM, null);
      j = i;
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
    this.chz = getSharedPreferences(getPackageName() + "_preferences", 0);
    this.status = v.tl();
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
    {
      aFs();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.BindMContactVerifyUI
 * JD-Core Version:    0.6.2
 */