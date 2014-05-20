package com.tencent.mm.plugin.chatroom.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.ui.MMActivity;

public class RoomAlphaProcessUI extends MMActivity
  implements i
{
  private String cWi;

  private static void f(Runnable paramRunnable)
  {
    new Handler().postDelayed(paramRunnable, 200L);
  }

  protected final void FR()
  {
  }

  public final void c(boolean paramBoolean, int paramInt)
  {
    if (paramBoolean)
    {
      com.tencent.mm.ui.base.h.an(this, getString(n.bwA));
      f(new a(this, paramBoolean, paramInt));
      return;
    }
    com.tencent.mm.ui.base.h.a(this, getString(n.bwz), "", null);
    f(new b(this, paramBoolean));
  }

  public final int getLayoutId()
  {
    return -1;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.cWi = getIntent().getStringExtra("RoomInfo_Id");
    com.tencent.mm.plugin.chatroom.a.h localh = new com.tencent.mm.plugin.chatroom.a.h(this.cWi);
    h localh1 = new h(com.tencent.mm.ui.base.h.a(this, getString(n.ayn), false, new g()), this, this);
    be.uA().a(482, localh1);
    be.uA().d(localh);
  }

  protected void onDestroy()
  {
    super.onDestroy();
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
 * Qualified Name:     com.tencent.mm.plugin.chatroom.ui.RoomAlphaProcessUI
 * JD-Core Version:    0.6.2
 */