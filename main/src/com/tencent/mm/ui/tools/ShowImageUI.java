package com.tencent.mm.ui.tools;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.c.a.x;
import com.tencent.mm.c.a.y;
import com.tencent.mm.c.a.z;
import com.tencent.mm.pluginsdk.model.b;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;

public class ShowImageUI extends MMActivity
{
  private MMGestureGallery dka;
  private boolean hmr;
  private fw hms;

  public final void UK()
  {
    x localx = new x();
    long l = getIntent().getLongExtra("key_message_id", -1L);
    if (-1L == l)
      aa.w("MicroMsg.ShowImageUI", "msg id error, try fav simple data");
    for (boolean bool = b.a(localx, getIntent().getIntExtra("key_favorite_source_type", 1), getIntent().getStringExtra("key_image_path")); bool; bool = b.a(localx, l))
    {
      a.ayH().f(localx);
      if (localx.bMm.ret == 0)
        h.an(aal(), aal().getString(2131167821));
      return;
    }
    h.c(aal(), localx.bMl.type, 2131167946);
  }

  protected final int getLayoutId()
  {
    return 2130903710;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.hmr = getIntent().getBooleanExtra("key_favorite", false);
    this.dka = ((MMGestureGallery)findViewById(2131362427));
    this.dka.setVerticalFadingEdgeEnabled(false);
    this.dka.setHorizontalFadingEdgeEnabled(false);
    this.hms = new fw((byte)0);
    this.hms.imagePath = getIntent().getStringExtra("key_image_path");
    this.dka.setAdapter(this.hms);
    a(new ft(this));
    a(0, 2130838978, new fu(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ShowImageUI
 * JD-Core Version:    0.6.2
 */