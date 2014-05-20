package com.tencent.mm.plugin.chatroom.ui;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.ar;
import com.tencent.mm.model.at;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.chatroom.a.e;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;

public class RoomUpgradeUI extends MMActivity
  implements m
{
  private ProgressDialog cIr = null;
  private View cWG;
  private ImageView cWH;
  private TextView cWI;
  private TextView cWJ;
  private TextView cWK;
  private com.tencent.mm.storage.b cWL;
  private TextView cWP;
  private View cWQ;
  private TextView cWR;
  private e cWS;
  private String cWT;
  private boolean cWU;
  private boolean cWV;
  private String cWi;
  private int cWk;
  private int cWl;
  private int status;

  private void Km()
  {
    Intent localIntent = new Intent(this, RoomAlphaProcessUI.class);
    localIntent.addFlags(67108864);
    localIntent.addFlags(65536);
    localIntent.putExtra("RoomInfo_Id", this.cWi);
    startActivity(localIntent);
  }

  private void Kn()
  {
    String str = this.cWL.field_roomowner;
    com.tencent.mm.storage.i locali = be.uz().su().tO(str);
    if ((locali != null) && (locali.rj() <= 0))
      ar.tZ().a(str, new q(this, str));
    while (true)
    {
      int i = this.cWL.aAj();
      this.cWJ.setVisibility(0);
      TextView localTextView = this.cWJ;
      int j = com.tencent.mm.n.bwx;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i);
      localTextView.setText(getString(j, arrayOfObject));
      return;
      iT(str);
    }
  }

  private void iT(String paramString)
  {
    com.tencent.mm.storage.i locali = be.uz().su().tO(paramString);
    if ((locali != null) && (locali.rj() > 0));
    for (String str1 = locali.ru(); ; str1 = null)
    {
      String str2;
      if (cj.hX(str1))
      {
        com.tencent.mm.storage.b localb = this.cWL;
        str2 = null;
        if (localb != null);
      }
      while (true)
      {
        if ((cj.hX(str2)) && (locali != null) && (locali.rj() > 0))
          str2 = locali.rq();
        if (cj.hX(str2))
          str2 = paramString;
        com.tencent.mm.pluginsdk.ui.c.a(this.cWH, paramString);
        this.cWI.setVisibility(0);
        this.cWI.setText(com.tencent.mm.ao.b.f(this, str2, (int)this.cWI.getTextSize()));
        return;
        boolean bool = this.cWL.aAk();
        str2 = null;
        if (bool)
        {
          str2 = this.cWL.cu(paramString);
          continue;
          str2 = str1;
        }
      }
    }
  }

  private void initData()
  {
    boolean bool = true;
    this.cWi = getIntent().getStringExtra("room_name");
    Object[] arrayOfObject = new Object[bool];
    arrayOfObject[0] = this.cWi;
    aa.d("MicroMsg.RoomUpgradeProductsUI", "the roomName is %s", arrayOfObject);
    be.uA().a(519, this);
    this.cWL = be.uz().sA().ts(this.cWi);
    if (this.cWL == null)
    {
      finish();
      return;
    }
    this.cWU = v.th().equals(this.cWL.field_roomowner);
    if (!com.tencent.mm.x.b.Bl());
    while (true)
    {
      this.cWV = bool;
      return;
      bool = false;
    }
  }

  protected final void FR()
  {
    mn(com.tencent.mm.n.bwr);
    a(new n(this));
    this.cWG = findViewById(com.tencent.mm.i.aOc);
    this.cWQ = findViewById(com.tencent.mm.i.aOe);
    this.cWH = ((ImageView)findViewById(com.tencent.mm.i.aOb));
    this.cWI = ((TextView)findViewById(com.tencent.mm.i.aOd));
    this.cWJ = ((TextView)findViewById(com.tencent.mm.i.aNZ));
    this.cWK = ((TextView)findViewById(com.tencent.mm.i.aOa));
    this.cWR = ((TextView)findViewById(com.tencent.mm.i.aNY));
    this.cWR.setOnClickListener(new o(this));
    this.cWP = ((TextView)findViewById(com.tencent.mm.i.awh));
    this.cWP.setOnClickListener(new p(this));
    if (this.cWU)
    {
      this.cIr = h.a(this, getString(com.tencent.mm.n.ayn), true, new s(this));
      this.cWS = new e(this.cWi);
      be.uA().d(this.cWS);
    }
    while (true)
    {
      if (this.cWV)
      {
        this.cWQ.setVisibility(8);
        this.cWP.setVisibility(8);
      }
      return;
      Kn();
      this.cWP.setVisibility(0);
      this.cWP.setText(com.tencent.mm.n.bws);
      this.cWR.setVisibility(8);
      this.cWK.setVisibility(8);
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.d("MicroMsg.RoomUpgradeProductsUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.cIr != null)
      this.cIr.dismiss();
    if ((paramInt1 != 0) || (paramInt2 != 0))
      h.a(this, getString(com.tencent.mm.n.bwu), getString(com.tencent.mm.n.ber), false, new t(this));
    while ((paramInt1 != 0) || (paramInt2 != 0) || (paramx.getType() != 519))
      return;
    e locale = (e)paramx;
    this.status = locale.status;
    this.cWk = locale.cWk;
    this.cWl = locale.cWl;
    Kn();
    this.cWK.setVisibility(0);
    TextView localTextView1 = this.cWR;
    int i = com.tencent.mm.n.bwq;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(this.cWk);
    localTextView1.setText(getString(i, arrayOfObject1));
    if (this.cWl > 0)
    {
      TextView localTextView2 = this.cWK;
      int j = com.tencent.mm.n.bwv;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(this.cWl);
      localTextView2.setText(getString(j, arrayOfObject2));
    }
    while (true)
    {
      this.cWP.setVisibility(0);
      switch (this.status)
      {
      default:
        return;
      case 1:
      case 2:
      case 5:
        this.cWR.setVisibility(0);
        this.cWP.setText(com.tencent.mm.n.bwt);
        return;
        this.cWK.setText(getString(com.tencent.mm.n.bww));
      case 3:
      case 4:
      case 6:
      case 7:
      }
    }
    this.cWR.setVisibility(0);
    this.cWR.setEnabled(false);
    this.cWP.setText(com.tencent.mm.n.bwt);
    return;
    this.cWR.setVisibility(8);
    this.cWP.setText(com.tencent.mm.n.bws);
    this.cWR.setEnabled(false);
  }

  public final int getLayoutId()
  {
    return com.tencent.mm.k.aSX;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    aa.d("MicroMsg.RoomUpgradeProductsUI", "onActivityResult . requestCode:" + paramInt1 + "  resultCode:" + paramInt2);
    switch (paramInt1)
    {
    default:
      aa.e("MicroMsg.RoomUpgradeProductsUI", "onActivityResult unknow request");
      return;
    case 400:
    }
    finish();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    initData();
    FR();
  }

  protected void onDestroy()
  {
    be.uA().c(this.cWS);
    be.uA().b(519, this);
    if (this.cIr != null)
      this.cIr.dismiss();
    super.onDestroy();
  }

  public void onNewIntent(Intent paramIntent)
  {
    boolean bool;
    if (paramIntent.hasExtra("upgrade_success"))
    {
      bool = paramIntent.getBooleanExtra("upgrade_success", false);
      if (bool)
      {
        initData();
        int i = paramIntent.getIntExtra("left_quota", 0);
        Kn();
        this.cWR.setVisibility(8);
        this.cWl = i;
        if (this.cWl <= 0)
          break label166;
        TextView localTextView = this.cWK;
        int j = com.tencent.mm.n.bwv;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(this.cWl);
        localTextView.setText(getString(j, arrayOfObject));
      }
    }
    while (true)
    {
      this.cWP.setVisibility(0);
      this.cWP.setText(com.tencent.mm.n.bws);
      return;
      if ((paramIntent.hasExtra("wizard_activity_result_code")) && (paramIntent.getIntExtra("wizard_activity_result_code", -1) == -1))
        Km();
      if (paramIntent.hasExtra("announce_ok"))
        Km();
      bool = false;
      break;
      label166: this.cWK.setText(getString(com.tencent.mm.n.bww));
    }
  }

  public void onPause()
  {
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.ui.RoomUpgradeUI
 * JD-Core Version:    0.6.2
 */