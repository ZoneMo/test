package com.tencent.mm.ui.bindlinkedin;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.protocal.a.gf;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.az;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;

public class BindLinkedInUI extends MMActivity
  implements com.tencent.mm.n.m
{
  private String bUl;
  private String bUm;
  private ProgressDialog dRP;
  private boolean gIh = false;
  private String gIi;
  private boolean gIj = false;
  private boolean gIk = false;
  private boolean gIl = false;
  private Bundle gIm;
  private boolean gIn = false;
  private TextView gIo;
  private TextView gIp;
  private View gIq;
  private CheckBox gIr;
  private TextView gIs;
  private TextView gIt;
  private TextView gIu;
  private String gIv;
  private String gIw;
  private String gIx;
  private String gIy;
  private String name;
  private int status;

  private void LP()
  {
    if ((this.gIk) && (this.gIm == null))
    {
      aa.e("MicroMsg.BindLinkedInUI", "bindBundle is null");
      return;
    }
    if (this.gIl)
    {
      b(this.gIh, false, this.name, this.gIj);
      return;
    }
    if (this.gIk)
    {
      if ((this.gIh) && (this.gIi.equals(this.bUl)));
      boolean bool;
      for (int i = 1; ; i = 0)
      {
        String str = this.bUm;
        bool = this.gIj;
        this.gIo.setVisibility(0);
        this.gIo.setText(getString(com.tencent.mm.n.bhM, new Object[] { str }));
        this.gIq.setVisibility(0);
        this.gIt.setVisibility(8);
        if (i == 0)
          break;
        this.gIp.setVisibility(8);
        this.gIs.setVisibility(8);
        this.gIu.setVisibility(8);
        this.gIr.setChecked(bool);
        this.gIr.setOnCheckedChangeListener(new n(this));
        return;
      }
      this.gIp.setVisibility(0);
      this.gIs.setVisibility(0);
      this.gIu.setVisibility(0);
      this.gIr.setChecked(bool);
      this.gIr.setOnCheckedChangeListener(new o(this));
      return;
    }
    b(this.gIh, true, this.name, this.gIj);
  }

  private void b(boolean paramBoolean1, boolean paramBoolean2, String paramString, boolean paramBoolean3)
  {
    this.gIu.setVisibility(8);
    if (paramBoolean1)
    {
      this.gIp.setVisibility(8);
      this.gIo.setVisibility(0);
      this.gIo.setText(getString(com.tencent.mm.n.bhM, new Object[] { paramString }));
      this.gIq.setVisibility(0);
      this.gIs.setVisibility(8);
      if (paramBoolean2)
        this.gIt.setVisibility(0);
      this.gIr.setChecked(paramBoolean3);
      this.gIr.setOnCheckedChangeListener(new b(this));
      return;
    }
    this.gIo.setVisibility(8);
    this.gIo.setText(getString(com.tencent.mm.n.bhN));
    this.gIp.setVisibility(0);
    this.gIq.setVisibility(8);
    this.gIs.setVisibility(0);
    this.gIt.setVisibility(8);
  }

  private void dF(boolean paramBoolean)
  {
    if (this.gIm == null)
    {
      aa.e("MicroMsg.BindLinkedInUI", "bindBundle is null !!");
      return;
    }
    if (this.gIr.isChecked());
    for (int i = 1; ; i = 2)
    {
      com.tencent.mm.y.a locala = new com.tencent.mm.y.a(i, this.bUl, this.bUm, "", this.gIv, this.gIw, this.gIx, this.gIy);
      if (!paramBoolean)
        this.dRP = h.a(this, getString(com.tencent.mm.n.ayn), false, new m(this, locala));
      be.uA().d(locala);
      return;
    }
  }

  private void initData()
  {
    boolean bool1 = true;
    this.gIi = ((String)be.uz().sr().get(286721));
    boolean bool2;
    if (!cj.hX(this.gIi))
    {
      bool2 = bool1;
      this.gIh = bool2;
      this.name = ((String)be.uz().sr().get(286722));
      this.status = v.tl();
      if ((0x400000 & this.status) == 0)
        break label85;
    }
    while (true)
    {
      this.gIj = bool1;
      return;
      bool2 = false;
      break;
      label85: bool1 = false;
    }
  }

  private void r(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1)
    {
      this.status = (0x400000 | this.status);
      if (!paramBoolean1)
        break label110;
    }
    label110: for (int i = 1; ; i = 2)
    {
      be.uz().sr().set(7, Integer.valueOf(this.status));
      if (paramBoolean2)
      {
        gf localgf = new gf();
        localgf.fIH = 33;
        localgf.fII = i;
        be.uz().st().a(new az(23, localgf));
        com.tencent.mm.plugin.a.a.cHT.nE();
      }
      return;
      this.status = (0xFFBFFFFF & this.status);
      break;
    }
  }

  protected final void FR()
  {
    if (this.gIk)
      mn(com.tencent.mm.n.bhW);
    while (true)
    {
      this.gIo = ((TextView)findViewById(com.tencent.mm.i.aJl));
      this.gIp = ((TextView)findViewById(com.tencent.mm.i.aJm));
      this.gIq = findViewById(com.tencent.mm.i.aKD);
      this.gIr = ((CheckBox)findViewById(com.tencent.mm.i.aKC));
      this.gIs = ((TextView)findViewById(com.tencent.mm.i.ann));
      this.gIt = ((TextView)findViewById(com.tencent.mm.i.aNT));
      this.gIu = ((TextView)findViewById(com.tencent.mm.i.aoW));
      this.gIo.setOnClickListener(new e(this));
      this.gIs.setOnClickListener(new f(this));
      this.gIt.setOnClickListener(new i(this));
      this.gIu.setOnClickListener(new k(this));
      a(new l(this));
      LP();
      return;
      if (this.gIl)
        mn(com.tencent.mm.n.bhX);
      else
        mn(com.tencent.mm.n.bhQ);
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (this.dRP != null)
    {
      this.dRP.dismiss();
      this.dRP = null;
    }
    if ((paramInt1 != 0) || (paramInt2 != 0))
    {
      int i;
      if (paramx.getType() == 549)
        if (paramInt2 == 1)
          i = com.tencent.mm.n.bhU;
      while (true)
      {
        h.p(this, getString(i), null);
        do
        {
          return;
          i = com.tencent.mm.n.bhT;
          break;
        }
        while (paramx.getType() != 550);
        i = com.tencent.mm.n.bhV;
      }
    }
    int j;
    if (paramx.getType() == 549)
      if (!this.gIn)
        j = com.tencent.mm.n.bhR;
    while (true)
    {
      String str = getString(j);
      new d(this);
      h.an(this, str);
      initData();
      this.gIj = this.gIr.isChecked();
      LP();
      return;
      j = com.tencent.mm.n.bhS;
      continue;
      if (paramx.getType() != 550)
        break;
      j = com.tencent.mm.n.bhY;
    }
  }

  protected final int getLayoutId()
  {
    return com.tencent.mm.k.aSC;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    int i = 1;
    aa.d("MicroMsg.BindLinkedInUI", "onActivityResult . requestCode:" + paramInt1 + "  resultCode:" + paramInt2);
    if (paramIntent == null)
      return;
    switch (paramInt1)
    {
    default:
      aa.e("MicroMsg.BindLinkedInUI", "onActivityResult unknow request");
      return;
    case 100:
    }
    Bundle localBundle = paramIntent.getBundleExtra("result_data");
    String str1 = localBundle.getString("ret");
    String str2 = localBundle.getString("limid");
    String str3 = localBundle.getString("liname");
    String str4 = localBundle.getString("liurl");
    String str5 = localBundle.getString("liswitch");
    if (cj.hX(str1))
    {
      aa.e("MicroMsg.BindLinkedInUI", "linkedin oauth ret is null, maybe canceled");
      return;
    }
    int k = cj.sV(str1);
    if (k != 0)
    {
      Object[] arrayOfObject2 = new Object[i];
      arrayOfObject2[0] = Integer.valueOf(k);
      aa.b("MicroMsg.BindLinkedInUI", "linkedin oauth bind failed ret %s ", arrayOfObject2);
      if (k == i);
      for (int m = com.tencent.mm.n.bhU; ; m = com.tencent.mm.n.bhT)
      {
        h.p(this, getString(m), null);
        return;
      }
    }
    if (cj.hX(str2))
    {
      aa.e("MicroMsg.BindLinkedInUI", "linkedin member id is null");
      return;
    }
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = str2;
    arrayOfObject1[i] = str3;
    arrayOfObject1[2] = str4;
    arrayOfObject1[3] = str5;
    aa.e("MicroMsg.BindLinkedInUI", "%s, %s, %s, %s", arrayOfObject1);
    be.uz().sr().set(286722, str3);
    be.uz().sr().set(286721, str2);
    be.uz().sr().set(286723, str4);
    if (!cj.hX(str5))
      if (cj.sV(str5) != i)
        break label374;
    while (true)
    {
      r(i, false);
      initData();
      LP();
      String str6 = getString(com.tencent.mm.n.bhR);
      new c(this);
      h.an(this, str6);
      return;
      label374: int j = 0;
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    be.uA().a(549, this);
    be.uA().a(550, this);
    this.gIm = getIntent().getBundleExtra("qrcode_bundle");
    if (this.gIm != null);
    for (boolean bool = true; ; bool = false)
    {
      this.gIk = bool;
      if (this.gIm != null)
      {
        this.bUl = this.gIm.getString("i");
        this.bUm = this.gIm.getString("n");
        this.gIv = this.gIm.getString("t");
        this.gIw = this.gIm.getString("o");
        this.gIx = this.gIm.getString("s");
        this.gIy = this.gIm.getString("r");
        if ((this.bUl == null) || (this.bUm == null) || (this.gIv == null) || (this.gIv == null) || (this.gIx == null) || (this.gIy == null))
          h.a(this, getString(com.tencent.mm.n.bhP), null, false, new a(this));
      }
      this.gIl = getIntent().getBooleanExtra("oversea_entry", false);
      initData();
      if (this.gIk)
        this.gIj = true;
      FR();
      if ((this.gIm != null) && (this.gIh) && (this.gIi.equals(this.bUl)))
      {
        this.gIn = true;
        dF(true);
      }
      return;
    }
  }

  protected void onDestroy()
  {
    be.uA().b(550, this);
    be.uA().b(549, this);
    super.onDestroy();
  }

  protected void onPause()
  {
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindlinkedin.BindLinkedInUI
 * JD-Core Version:    0.6.2
 */