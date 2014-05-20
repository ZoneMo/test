package com.tencent.mm.ui;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.f.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.base.h;

public class GrantRoomUI extends MMActivity
  implements m
{
  private ProgressDialog cIr = null;
  private TextView glp = null;
  private Button glq = null;
  private TextView glr = null;
  private String gls = "";
  private int glt = 0;
  private TextView glu = null;

  private void aEp()
  {
    int i = au.a((Integer)be.uz().sr().get(135176), 0);
    this.glu.setText(String.valueOf(i));
  }

  protected final void FR()
  {
    mn(2131165945);
    this.glp = ((TextView)findViewById(2131362839));
    this.glq = ((Button)findViewById(2131362844));
    this.glr = ((TextView)findViewById(2131362845));
    this.glu = ((TextView)findViewById(2131362842));
    this.glq.setOnClickListener(new y(this));
    int i = au.a((Integer)be.uz().sr().get(135175), 0);
    TextView localTextView1 = this.glp;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(i);
    localTextView1.setText(getString(2131167629, arrayOfObject1));
    this.glt = au.a((Integer)be.uz().sr().get(135177), 0);
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(this.glt);
    String str = getString(2131167628, arrayOfObject2);
    this.glr.setText(str);
    TextView localTextView2 = (TextView)findViewById(2131362843);
    Object[] arrayOfObject3 = new Object[1];
    arrayOfObject3[0] = Integer.valueOf(this.glt);
    localTextView2.setText(getString(2131167633, arrayOfObject3));
    aEp();
    a(new z(this));
    if (au.a((Integer)be.uz().sr().get(135176), 0) <= 0)
    {
      this.glr.setVisibility(8);
      findViewById(2131362840).setVisibility(8);
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.GrantRoomUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    aEp();
    if (this.cIr != null)
      this.cIr.dismiss();
    if (paramx.getType() != 339)
      return;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      h.c(this, 2131167636, 2131167675);
      return;
    }
    if (paramInt2 == -251)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.gls;
      arrayOfObject[1] = Integer.valueOf(this.glt);
      h.p(this, getString(2131167638, arrayOfObject), getString(2131167675));
      return;
    }
    Toast.makeText(this, "err :" + paramInt1 + " ," + paramInt2, 0).show();
  }

  protected final int getLayoutId()
  {
    return 2130903356;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt1);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.GrantRoomUI", "onAcvityResult requestCode: %d", arrayOfObject1);
    if ((paramInt2 != -1) || (paramIntent == null));
    String str1;
    do
    {
      return;
      switch (paramInt1)
      {
      default:
        return;
      case 1:
      }
      str1 = paramIntent.getStringExtra("Select_Conv_User");
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.GrantRoomUI", "pick user %s", new Object[] { str1 });
    }
    while (au.hX(str1));
    this.gls = str1;
    String str2 = this.gls;
    i locali = be.uz().su().tO(str2);
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = locali.rq();
    arrayOfObject2[1] = Integer.valueOf(this.glt);
    String str3 = getString(2131167639, arrayOfObject2);
    h.a(aal(), str3, "", new aa(this, str2), null);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    be.uA().a(339, this);
    be.uz().sr().set(135184, Boolean.valueOf(false));
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
    be.uA().b(339, this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.GrantRoomUI
 * JD-Core Version:    0.6.2
 */