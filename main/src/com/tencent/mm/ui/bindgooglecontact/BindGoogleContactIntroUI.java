package com.tencent.mm.ui.bindgooglecontact;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ab;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;

public class BindGoogleContactIntroUI extends MMActivity
  implements m
{
  private ProgressDialog dbm;
  private ImageView gHj;
  private TextView gHk;
  private Button gHl;
  private Button gHm;
  private boolean gHn = false;
  private boolean gHo = false;
  private String gHp;
  private com.tencent.mm.v.a gHq;
  private int gHr;
  private View.OnClickListener gHs = new a(this);
  private View.OnClickListener gHt = new b(this);

  private void aIt()
  {
    this.gHm.setVisibility(8);
    this.gHl.setVisibility(0);
    this.gHj.setVisibility(0);
    this.gHk.setVisibility(0);
    this.gHk.setText(n.beE);
    this.gHl.setText(n.beC);
    this.gHl.setOnClickListener(this.gHs);
  }

  protected final void FR()
  {
    a(new d(this));
    this.gHj = ((ImageView)findViewById(i.aJj));
    this.gHk = ((TextView)findViewById(i.aJk));
    this.gHl = ((Button)findViewById(i.aJi));
    this.gHm = ((Button)findViewById(i.aJB));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    if (TextUtils.isEmpty(paramString))
      paramString = "";
    arrayOfObject[2] = paramString;
    aa.d("MicroMsg.GoogleContact.BindGoogleContactIntroUI", "[onSceneEnd] errType:%d,errCode:%d,errMsg:%s", arrayOfObject);
    if ((this.dbm != null) && (this.dbm.isShowing()))
      this.dbm.dismiss();
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      be.uz().sr().set(208903, "");
      be.uz().sr().set(208901, "");
      be.uz().sr().set(208902, "");
      be.uz().sr().set(208905, Boolean.valueOf(true));
      aIt();
      h.an(this, getString(n.bDn));
      return;
    }
    aa.i("MicroMsg.GoogleContact.BindGoogleContactIntroUI", "unbind failed");
    Toast.makeText(this, n.boJ, 0).show();
  }

  protected final int getLayoutId()
  {
    return k.aSB;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    aa.d("MicroMsg.GoogleContact.BindGoogleContactIntroUI", "requestCode:%d, resultCode:%d", arrayOfObject);
    if (paramInt2 == -1)
      if (paramInt1 == 2005)
        this.gHn = paramIntent.getBooleanExtra("gpservices", false);
    while (paramInt1 != 2005)
      return;
    this.gHn = paramIntent.getBooleanExtra("gpservices", false);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.beF);
    this.gHr = getIntent().getIntExtra("enter_scene", 0);
    this.gHn = ab.O(this);
    if (this.gHn)
      startActivityForResult(new Intent("com.tencent.mm.gms.CHECK_GP_SERVICES"), 2005);
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  protected void onResume()
  {
    super.onResume();
    this.gHp = ((String)be.uz().sr().get(208903));
    if (TextUtils.isEmpty(this.gHp))
    {
      this.gHo = false;
      FR();
      if (!this.gHo)
        break label134;
      this.gHm.setVisibility(0);
      this.gHl.setVisibility(8);
      this.gHk.setVisibility(0);
      TextView localTextView = this.gHk;
      int i = n.beD;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.gHp;
      localTextView.setText(getString(i, arrayOfObject));
      this.gHm.setOnClickListener(this.gHt);
    }
    while (true)
    {
      be.uA().a(487, this);
      return;
      this.gHo = true;
      break;
      label134: aIt();
    }
  }

  protected void onStop()
  {
    super.onStop();
    be.uA().b(487, this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindgooglecontact.BindGoogleContactIntroUI
 * JD-Core Version:    0.6.2
 */