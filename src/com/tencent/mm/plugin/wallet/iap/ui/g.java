package com.tencent.mm.plugin.wallet.iap.ui;

import android.app.Activity;
import android.content.Intent;
import com.tencent.mm.plugin.wallet.iap.a.a;
import java.util.ArrayList;

abstract interface g
{
  public abstract void a(Activity paramActivity, a parama, h paramh);

  public abstract void a(ArrayList paramArrayList, h paramh);

  public abstract boolean a(int paramInt1, int paramInt2, Intent paramIntent);

  public abstract int anI();

  public abstract void bY(boolean paramBoolean);

  public abstract void onDestroy();
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.iap.ui.g
 * JD-Core Version:    0.6.2
 */