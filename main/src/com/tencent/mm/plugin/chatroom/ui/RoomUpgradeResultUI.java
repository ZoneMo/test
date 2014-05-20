package com.tencent.mm.plugin.chatroom.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.ar;
import com.tencent.mm.model.at;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;

public class RoomUpgradeResultUI extends MMActivity
{
  private Button cWF;
  private View cWG;
  private ImageView cWH;
  private TextView cWI;
  private TextView cWJ;
  private TextView cWK;
  private com.tencent.mm.storage.b cWL;
  private String cWi;

  private void goBack()
  {
    Intent localIntent = new Intent(this, RoomUpgradeUI.class);
    localIntent.addFlags(67108864);
    localIntent.putExtra("finish_self", true);
    startActivity(localIntent);
  }

  private void iT(String paramString)
  {
    com.tencent.mm.storage.i locali = be.uz().su().tO(paramString);
    if ((locali != null) && (locali.rj() > 0))
    {
      String str = locali.rq();
      com.tencent.mm.pluginsdk.ui.c.a(this.cWH, paramString);
      this.cWI.setVisibility(0);
      this.cWI.setText(str);
    }
  }

  protected final void FR()
  {
    mn(n.bwr);
    a(new j(this));
    this.cWG = findViewById(com.tencent.mm.i.aOc);
    this.cWH = ((ImageView)findViewById(com.tencent.mm.i.aOb));
    this.cWI = ((TextView)findViewById(com.tencent.mm.i.aOd));
    this.cWJ = ((TextView)findViewById(com.tencent.mm.i.aNZ));
    this.cWK = ((TextView)findViewById(com.tencent.mm.i.aOa));
    this.cWF = ((Button)findViewById(com.tencent.mm.i.awh));
    this.cWF.setOnClickListener(new k(this));
    this.cWF.setVisibility(0);
    String str = this.cWL.field_roomowner;
    com.tencent.mm.storage.i locali = be.uz().su().tO(str);
    if ((locali != null) && (locali.rj() <= 0))
      ar.tZ().a(str, new l(this, str));
    while (true)
    {
      int i = this.cWL.aAj();
      this.cWJ.setVisibility(0);
      TextView localTextView = this.cWJ;
      int j = n.bwx;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i);
      localTextView.setText(getString(j, arrayOfObject));
      this.cWF.setText(n.bws);
      this.cWK.setVisibility(8);
      return;
      iT(str);
    }
  }

  protected final int getLayoutId()
  {
    return com.tencent.mm.k.aSX;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.cWi = getIntent().getStringExtra("chatroom");
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.cWi;
    aa.d("MicroMsg.RoomUpgradeResultUI", "the roomName is %s", arrayOfObject);
    this.cWL = be.uz().sA().ts(this.cWi);
    if (this.cWL == null)
      goBack();
    FR();
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.ui.RoomUpgradeResultUI
 * JD-Core Version:    0.6.2
 */