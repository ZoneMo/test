package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.ae.c;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.MMActivity;

public class ContactRemarkInfoViewUI extends MMActivity
{
  private String bUj;
  private i cQI;
  private String cwG;
  private int edN;
  private ImageView gTE;
  private String gTK;
  private boolean gTL = false;
  private TextView gTR;
  private TextView gTS;
  private View gTT;
  private View gTU;
  private String username;

  private void aKA()
  {
    Bitmap localBitmap = c.BT().gn(this.username);
    if (localBitmap != null)
    {
      this.gTE.setImageBitmap(localBitmap);
      this.gTL = true;
    }
  }

  private void initData()
  {
    this.cQI = be.uz().su().tO(this.username);
    this.gTK = this.cQI.rr();
    this.bUj = this.cQI.bUj;
    this.cwG = this.cQI.bUk;
  }

  protected final void FR()
  {
    this.gTR = ((TextView)findViewById(2131362438));
    this.gTS = ((TextView)findViewById(2131362440));
    this.gTE = ((ImageView)findViewById(2131362437));
    this.gTT = findViewById(2131362439);
    this.gTU = findViewById(2131362441);
    mn(2131166270);
    this.gTE.setOnClickListener(new cf(this));
    a(0, getString(2131167697), new cg(this));
    a(new ch(this));
  }

  protected final int getLayoutId()
  {
    return 2130903229;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.edN = getIntent().getIntExtra("Contact_Scene", 9);
    this.username = getIntent().getStringExtra("Contact_User");
    if (au.hX(this.username))
    {
      finish();
      return;
    }
    initData();
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  public void onResume()
  {
    super.onResume();
    initData();
    this.gTR.setText(com.tencent.mm.ao.b.f(this, au.hW(this.gTK), (int)this.gTR.getTextSize()));
    if (!au.hX(this.bUj))
    {
      this.gTT.setVisibility(0);
      this.gTS.setText(au.hW(this.bUj));
    }
    while (!au.hX(this.cwG))
    {
      this.gTU.setVisibility(0);
      if (!c.BT().gm(this.username))
      {
        c.BT().a(this.username, this.cwG, new ci(this));
        return;
        this.gTT.setVisibility(8);
      }
      else
      {
        aKA();
        return;
      }
    }
    this.gTU.setVisibility(8);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ContactRemarkInfoViewUI
 * JD-Core Version:    0.6.2
 */