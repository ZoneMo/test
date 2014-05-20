package com.tencent.mm.ui.contact;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.n;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.tools.MMGestureGallery;
import java.io.File;

public class ContactRemarkImagePreviewUI extends MMActivity
  implements m
{
  private ProgressDialog dRP;
  private MMGestureGallery dka;
  private View gTs;
  private String gTt;
  private boolean gTu;
  private boolean gTv;
  private bq gTw;
  private String username;

  private void dR(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("response_delete", true);
      setResult(-1, localIntent);
    }
    finish();
  }

  protected final void FR()
  {
    this.gTs = findViewById(2131362426);
    this.dka = ((MMGestureGallery)findViewById(2131362427));
    mn(2131166311);
    this.dka.setVerticalFadingEdgeEnabled(false);
    this.dka.setHorizontalFadingEdgeEnabled(false);
    n.J(this.dka);
    this.gTw = new bq(this);
    this.gTw.setImagePath(this.gTt);
    this.dka.setAdapter(this.gTw);
    this.dka.setOnItemClickListener(new bp(this));
    if (!this.gTv)
      a(0, getString(2131167687), new bj(this));
    while (true)
    {
      a(new bo(this));
      return;
      a(0, 2130837608, new bl(this));
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.ImagePreviewUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.dRP != null)
    {
      this.dRP.dismiss();
      this.dRP = null;
    }
    if ((paramInt1 != 0) || (paramInt2 != 0))
    {
      h.p(this, getString(2131165319), null);
      return;
    }
    new File(this.gTt).delete();
    dR(true);
  }

  protected final int getLayoutId()
  {
    return 2130903226;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    be.uA().a(576, this);
    this.username = getIntent().getStringExtra("Contact_User");
    this.gTt = getIntent().getStringExtra("remark_image_path");
    this.gTu = getIntent().getBooleanExtra("view_temp_remark_image", false);
    this.gTv = getIntent().getBooleanExtra("view_only", false);
    if (cj.hX(this.username))
    {
      finish();
      return;
    }
    FR();
  }

  protected void onDestroy()
  {
    be.uA().b(576, this);
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      dR(false);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    super.onPause();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ContactRemarkImagePreviewUI
 * JD-Core Version:    0.6.2
 */