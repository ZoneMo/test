package com.tencent.mm.ui.account;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.m.af;
import com.tencent.mm.m.c;
import com.tencent.mm.m.m;
import com.tencent.mm.m.p;
import com.tencent.mm.n;
import com.tencent.mm.ui.MMActivity;

public class ShowNonWeixinFriendUI extends MMActivity
  implements p
{
  private long guv = 0L;
  private String guw = "";

  protected final void FR()
  {
    ImageView localImageView = (ImageView)findViewById(i.awX);
    TextView localTextView1 = (TextView)findViewById(i.awZ);
    TextView localTextView2 = (TextView)findViewById(i.axa);
    localImageView.setBackgroundDrawable(a.k(this, h.adL));
    localImageView.setImageBitmap(c.dS(this.guv));
    localTextView1.setText(this.guw);
    int i = n.axa;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.guw;
    localTextView2.setText(getString(i, arrayOfObject));
    a(new kz(this));
    ((Button)findViewById(i.awY)).setOnClickListener(new la(this));
  }

  public final void ei(String paramString)
  {
    FR();
  }

  protected final int getLayoutId()
  {
    return k.aTN;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.bpi);
    this.guv = getIntent().getLongExtra("Contact_KFacebookId", 0L);
    this.guw = getIntent().getStringExtra("Contact_KFacebookName");
    FR();
  }

  protected void onPause()
  {
    super.onPause();
    af.vJ().e(this);
  }

  protected void onResume()
  {
    super.onResume();
    af.vJ().d(this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ShowNonWeixinFriendUI
 * JD-Core Version:    0.6.2
 */