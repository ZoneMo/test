package com.tencent.mm.ui.bindmobile;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.v;
import com.tencent.mm.modelfriend.AddrBookObserver;
import com.tencent.mm.modelfriend.al;
import com.tencent.mm.modelfriend.as;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.modelsimple.f;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.tools.eo;
import java.util.List;

public class MobileFriendUI extends MMActivity
  implements m
{
  private ListView cIo;
  private View cIq;
  private ProgressDialog cIr = null;
  private String cIs;
  private TextView cPW = null;
  private ay gJm;
  private as gJn;
  private TextView gpX = null;

  private void Wt()
  {
    if (!z.zo())
    {
      Activity localActivity = aal();
      getString(n.ber);
      this.cIr = h.a(localActivity, getString(n.brD), true, new bb(this));
      if (this.gJm.getCount() != 0)
        break label83;
      if ((!AddrBookObserver.N(getApplicationContext())) && (this.cIr != null))
      {
        this.cIr.dismiss();
        this.cIr = null;
      }
    }
    label83: 
    do
    {
      return;
      if (!z.zs())
        break;
    }
    while ((AddrBookObserver.N(getApplicationContext())) || (this.cIr == null));
    this.cIr.dismiss();
    this.cIr = null;
    return;
    List localList1 = z.zc();
    List localList2 = z.zx();
    if (((localList1 != null) && (localList1.size() != 0)) || ((localList2 != null) && (localList2.size() != 0)))
    {
      this.gJn = new as(z.zc(), z.zx());
      com.tencent.mm.model.be.uA().d(this.gJn);
      return;
    }
    al localal = new al();
    com.tencent.mm.model.be.uA().d(localal);
  }

  protected final void FR()
  {
    this.cPW = ((TextView)findViewById(i.aBI));
    this.cPW.setText(n.brB);
    this.gpX = ((TextView)findViewById(i.asK));
    this.gpX.setText(n.brI);
    this.cIq = findViewById(i.aBL);
    this.cIo = ((ListView)findViewById(i.aBK));
    eo localeo = new eo();
    localeo.a(new be(this));
    a(true, localeo);
    this.gJm = new ay(this, new bf(this));
    this.cIo.setAdapter(this.gJm);
    this.cIo.setOnItemClickListener(new bg(this));
    this.gJm.a(new bh(this));
    if ((z.zp() != com.tencent.mm.modelfriend.aa.crc) && (z.zp() != com.tencent.mm.modelfriend.aa.crd))
    {
      this.cIq = findViewById(i.aBL);
      this.cIq.setVisibility(0);
      this.cIq.setOnClickListener(new bi(this));
      this.cIo.setVisibility(8);
    }
    a(new bj(this));
    new bk(this);
    if ((!v.tG()) || (z.zo()))
      h.a(this, n.beH, n.ber, n.bee, n.bds, new bl(this), new bc(this));
  }

  public final void FS()
  {
    if (this.gJm != null)
      this.gJm.ih(this.cIs);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MobileFriendUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (paramx.getType() == 32)
    {
      com.tencent.mm.model.be.uA().b(32, this);
      if (this.cIr != null)
      {
        this.cIr.dismiss();
        this.cIr = null;
      }
    }
    if ((paramInt1 != 0) || (paramInt2 != 0))
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MobileFriendUI", "onSceneEnd: errType = " + paramInt1 + ", errCode = " + paramInt2);
    if (paramx.getType() == 133)
    {
      com.tencent.mm.model.be.uA().b(133, this);
      al localal = new al();
      com.tencent.mm.model.be.uA().d(localal);
    }
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      if (paramx.getType() == 32)
        f.W(getApplicationContext());
      this.gJm.ca(null);
    }
    while (paramx.getType() != 32)
      return;
    Toast.makeText(this, n.brC, 0).show();
  }

  protected final int getLayoutId()
  {
    return k.aXr;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.brE);
    com.tencent.mm.model.be.uA().a(32, this);
    com.tencent.mm.model.be.uA().a(133, this);
    FR();
    Wt();
  }

  public void onDestroy()
  {
    com.tencent.mm.model.be.uA().b(32, this);
    com.tencent.mm.model.be.uA().b(133, this);
    this.gJm.closeCursor();
    super.onDestroy();
  }

  public void onPause()
  {
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    this.gJm.notifyDataSetChanged();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.MobileFriendUI
 * JD-Core Version:    0.6.2
 */