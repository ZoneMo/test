package com.tencent.mm.ui.friend;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.a.f;
import com.tencent.mm.a.j;
import com.tencent.mm.an.a;
import com.tencent.mm.k;
import com.tencent.mm.m.af;
import com.tencent.mm.m.c;
import com.tencent.mm.m.m;
import com.tencent.mm.m.p;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;

public class InviteFriendUI extends MMActivity
  implements p
{
  private ImageView cqS;
  private String hbA;
  private String hbB;
  private Button hbC;
  private int hbD;
  private int hbE;
  private String hbx;
  private int hby;
  private String hbz;

  protected final void FR()
  {
    this.cqS = ((ImageView)findViewById(com.tencent.mm.i.awX));
    TextView localTextView1 = (TextView)findViewById(com.tencent.mm.i.awZ);
    TextView localTextView2 = (TextView)findViewById(com.tencent.mm.i.axb);
    TextView localTextView3 = (TextView)findViewById(com.tencent.mm.i.axa);
    this.hbC = ((Button)findViewById(com.tencent.mm.i.awY));
    Button localButton = (Button)findViewById(com.tencent.mm.i.axc);
    localTextView1.setText(this.hbz);
    int i = n.axa;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.hbz;
    localTextView3.setText(getString(i, arrayOfObject));
    String str;
    Bitmap localBitmap3;
    label211: long l;
    if (this.hby == 1)
    {
      this.cqS.setBackgroundDrawable(a.k(this, com.tencent.mm.h.adL));
      localTextView2.setText(getString(n.bdP) + this.hbx);
      str = f.h(this.hbx.getBytes());
      if (!be.uz().isSDCardAvailable())
      {
        localBitmap3 = af.vJ().K(al.getContext());
        if (localBitmap3 == null)
          break label506;
        this.cqS.setImageBitmap(localBitmap3);
      }
    }
    else if (this.hby == 0)
    {
      this.cqS.setBackgroundDrawable(a.k(this, com.tencent.mm.h.adM));
      localTextView2.setText(getString(n.bdR) + this.hbx);
      l = j.aw(this.hbx);
      if (l == 0L)
        break label564;
    }
    label306: label564: for (Bitmap localBitmap2 = c.t(l); ; localBitmap2 = null)
    {
      Bitmap localBitmap1;
      if (localBitmap2 == null)
      {
        this.cqS.setImageDrawable(a.k(this, com.tencent.mm.h.adM));
        localButton.setVisibility(0);
        if (this.hby == 2)
        {
          this.hbC.setText(n.boI);
          this.cqS.setBackgroundDrawable(a.k(this, com.tencent.mm.h.adK));
          localTextView2.setText(getString(n.bdM) + this.hbx);
          if (be.uz().isSDCardAvailable())
            break label535;
          localBitmap1 = af.vJ().K(al.getContext());
          if (localBitmap1 == null)
            break label547;
          this.cqS.setImageBitmap(localBitmap1);
        }
      }
      while (true)
      {
        if (TextUtils.isEmpty(this.hbz))
          localTextView1.setText(cj.tb(this.hbx));
        this.hbC.setOnClickListener(new bi(this));
        localButton.setOnClickListener(new bp(this));
        a(new bq(this));
        return;
        com.tencent.mm.modelfriend.h localh = ax.Al().fs(str);
        if (localh != null)
        {
          localBitmap3 = z.c(localh.yL(), this);
          break;
        }
        localBitmap3 = null;
        break;
        label506: this.cqS.setImageDrawable(a.k(this, com.tencent.mm.h.adL));
        break label211;
        this.cqS.setImageBitmap(localBitmap2);
        break label306;
        localBitmap1 = c.dP(this.hbA);
        break label395;
        this.cqS.setImageDrawable(a.k(this, com.tencent.mm.h.adK));
      }
    }
  }

  public final void ei(String paramString)
  {
    if ((this.hbx == null) || (this.hbx.equals("")));
    long l;
    do
    {
      return;
      l = c.dU(paramString);
    }
    while ((l <= 0L) || (!this.hbx.equals(String.valueOf(l))) || (this.hby != 0));
    this.cqS.setImageBitmap(c.a(paramString, false, -1));
  }

  protected final int getLayoutId()
  {
    return k.aVe;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.bpi);
    Intent localIntent = getIntent();
    this.hby = localIntent.getIntExtra("friend_type", -1);
    this.hbz = localIntent.getStringExtra("friend_nick");
    this.hbx = localIntent.getStringExtra("friend_num");
    this.hbA = localIntent.getStringExtra("friend_googleID");
    this.hbB = localIntent.getStringExtra("friend_googleItemID");
    this.hbx = cj.hW(this.hbx);
    FR();
    this.hbD = localIntent.getIntExtra("search_kvstat_scene", 0);
    this.hbE = localIntent.getIntExtra("search_kvstat_position", 0);
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
 * Qualified Name:     com.tencent.mm.ui.friend.InviteFriendUI
 * JD-Core Version:    0.6.2
 */