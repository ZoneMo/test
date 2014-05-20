package com.tencent.mm.plugin.wallet.offline.ui;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.offline.model.OfflinePayResponeFields;
import com.tencent.mm.plugin.wallet.ui.WalletBaseUI;
import com.tencent.mm.pluginsdk.ui.tools.a.q;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ak;

public class WalletOfflineQRCodePayUI extends WalletBaseUI
{
  private long eoW = 0L;
  private ImageView faI;
  Bitmap faJ = null;
  OfflinePayResponeFields faK = null;
  private View.OnClickListener faL = new c(this);
  private Runnable faM = new g(this);
  private Handler mHandler = new Handler();

  private OfflinePayResponeFields aok()
  {
    if (this.faK != null)
      return this.faK;
    com.tencent.mm.plugin.wallet.c.c.anX();
    OfflinePayResponeFields localOfflinePayResponeFields = OfflinePayResponeFields.pF(com.tencent.mm.plugin.wallet.c.c.aoi());
    if (localOfflinePayResponeFields == null)
    {
      aa.v("WalletOfflineQRCodePayUI", "getOpenId() responeFields == null");
      return null;
    }
    this.faK = localOfflinePayResponeFields;
    return localOfflinePayResponeFields;
  }

  private String aol()
  {
    OfflinePayResponeFields localOfflinePayResponeFields = aok();
    if (localOfflinePayResponeFields == null)
      return "@wx.tenpay.com";
    return localOfflinePayResponeFields.faF + "@wx.tenpay.com";
  }

  private void aom()
  {
    this.mHandler.removeCallbacks(this.faM);
    this.mHandler.postDelayed(this.faM, 300000L);
  }

  private static void f(Bitmap paramBitmap)
  {
    if ((paramBitmap != null) && (!paramBitmap.isRecycled()))
      paramBitmap.recycle();
  }

  private Bitmap getBitmap()
  {
    OfflinePayResponeFields localOfflinePayResponeFields1 = aok();
    String str2;
    if (localOfflinePayResponeFields1 == null)
    {
      str2 = "";
      if (TextUtils.isEmpty(str2))
      {
        aa.e("WalletOfflineQRCodePayUI", "key == null");
        return null;
      }
    }
    else
    {
      long l = System.currentTimeMillis();
      StringBuilder localStringBuilder1 = new StringBuilder();
      localStringBuilder1.append(aol()).append(",");
      localStringBuilder1.append(localOfflinePayResponeFields1.faD).append(",");
      localStringBuilder1.append(s.pV()).append(",");
      localStringBuilder1.append(l / 1000L).append(",");
      localStringBuilder1.append(10000 + (int)(10000.0D * Math.random())).append(",");
      OfflinePayResponeFields localOfflinePayResponeFields2 = aok();
      if (localOfflinePayResponeFields2 == null);
      StringBuilder localStringBuilder2;
      for (String str1 = ""; ; str1 = ak.sC(localStringBuilder2.toString()))
      {
        localStringBuilder1.append(str1);
        str2 = localStringBuilder1.toString();
        break;
        localStringBuilder2 = new StringBuilder();
        localStringBuilder2.append(aol());
        localStringBuilder2.append(localOfflinePayResponeFields2.faD);
        localStringBuilder2.append(s.pV());
        localStringBuilder2.append(l / 1000L);
        localStringBuilder2.append(localOfflinePayResponeFields2.faE);
      }
    }
    return q.v(str2, com.tencent.mm.sdk.platformtools.e.a(this, 250.0F), com.tencent.mm.sdk.platformtools.e.a(this, 250.0F));
  }

  protected final void FR()
  {
    mn(n.bHG);
    mC(n.bHD);
    findViewById(i.aQP).setOnClickListener(this.faL);
    this.faI = ((ImageView)findViewById(i.aQO));
    this.faI.setOnClickListener(this.faL);
    f(this.faJ);
    this.faJ = getBitmap();
    this.faI.setImageBitmap(this.faJ);
    a(0, h.afQ, new b(this));
    this.eoW = System.currentTimeMillis();
  }

  public final boolean Vi()
  {
    return false;
  }

  public final boolean a(int paramInt1, int paramInt2, String paramString, a parama)
  {
    return false;
  }

  protected final int getLayoutId()
  {
    return k.bbK;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    gI(0);
    FR();
  }

  public void onDestroy()
  {
    f(this.faJ);
    super.onDestroy();
  }

  public void onPause()
  {
    this.mHandler.removeCallbacks(this.faM);
    super.onPause();
  }

  public void onResume()
  {
    if (!((Boolean)be.uz().sr().get(196616, Boolean.valueOf(false))).booleanValue())
      finish();
    if ((com.tencent.mm.plugin.wallet.c.c.anX().anZ()) || (com.tencent.mm.plugin.wallet.c.c.anX().aob() == -1))
      k(new com.tencent.mm.plugin.wallet.bind.model.g(null));
    aom();
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.offline.ui.WalletOfflineQRCodePayUI
 * JD-Core Version:    0.6.2
 */