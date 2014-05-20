package com.tencent.mm.plugin.scanner.ui;

import android.content.Intent;
import com.tencent.mm.model.al;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.scanner.a;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

final class ae
  implements v
{
  ae(ProductUI paramProductUI)
  {
  }

  public final void d(MusicPreference paramMusicPreference)
  {
    if (paramMusicPreference == null)
      aa.e("MicroMsg.scanner.ProductUI", "onMusicPrefClick, musicPref == null");
    String str;
    int i;
    do
    {
      do
      {
        return;
        if ((!cj.hX(paramMusicPreference.eaU)) || (!cj.hX(paramMusicPreference.wapurl)))
          break;
        aa.w("MicroMsg.scanner.ProductUI", "wifiurl = null,  wapurl = null");
      }
      while (cj.hX(paramMusicPreference.eaV));
      Intent localIntent = new Intent();
      localIntent.putExtra("rawUrl", paramMusicPreference.eaV);
      a.Tm().h(localIntent, this.ede);
      return;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramMusicPreference.eaU;
      arrayOfObject[1] = paramMusicPreference.getKey();
      str = String.format("%s_cd_%s", arrayOfObject);
      if (ProductUI.mC(str))
        break;
      if (paramMusicPreference.getTitle() == null)
      {
        aa.e("MicroMsg.scanner.ProductUI", "onPlayBtnClick, getTitle() == null");
        return;
      }
      be.nS().oK();
      be.nS().a(ProductUI.c(this.ede));
      i = ProductUI.a(this.ede, paramMusicPreference);
    }
    while (i < 0);
    be.nS().br(i);
    while (true)
    {
      ProductUI.d(this.ede);
      return;
      be.nS().release();
      aa.e("MicroMsg.scanner.ProductUI", "isTheSameId, playMusicId : [%s]", new Object[] { str });
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.ae
 * JD-Core Version:    0.6.2
 */