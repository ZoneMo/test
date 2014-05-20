package com.tencent.mm.ui.account;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.k;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.PreferenceCategory;
import com.tencent.mm.x.b;

public class RegByMobileVoiceVerifySelectUI extends MMPreference
  implements m
{
  private com.tencent.mm.ui.base.preference.n cIG;
  private bb[] gsY;
  private String gsZ;

  private static bb[] aFZ()
  {
    String[] arrayOfString1 = al.getContext().getString(com.tencent.mm.n.bfD).trim().split(",");
    bb[] arrayOfbb = new bb[arrayOfString1.length];
    for (int i = 0; i < arrayOfString1.length; i++)
    {
      String[] arrayOfString2 = arrayOfString1[i].trim().split(":");
      arrayOfbb[i] = new bb(arrayOfString2[1], arrayOfString2[2], arrayOfString2[0], false);
    }
    return arrayOfbb;
  }

  public static String vZ(String paramString)
  {
    bb[] arrayOfbb = aFZ();
    if (arrayOfbb == null)
    {
      aa.e("MicroMsg.RegByMobileVoiceVerifySelectUI", "getDefaultLanguageName info == null");
      return "English";
    }
    String str = b.ga(paramString);
    int i = arrayOfbb.length;
    for (int j = 0; j < i; j++)
    {
      bb localbb = arrayOfbb[j];
      if (localbb.Tn().equalsIgnoreCase(str))
        return localbb.aFK();
    }
    return "English";
  }

  protected final void FR()
  {
    SM();
    this.gsZ = getIntent().getExtras().getString("voice_verify_code");
    mn(com.tencent.mm.n.bfG);
    a(new hz(this));
    this.gsY = aFZ();
    if ((this.gsY == null) || (this.gsY.length <= 0));
    while (true)
    {
      return;
      this.cIG.removeAll();
      PreferenceCategory localPreferenceCategory = new PreferenceCategory(this);
      this.cIG.b(localPreferenceCategory);
      for (bb localbb : this.gsY)
      {
        if (localbb.Tn().equalsIgnoreCase(this.gsZ))
          localbb.setSelected(true);
        LanguagePreference localLanguagePreference = new LanguagePreference(this);
        localLanguagePreference.a(localbb);
        localLanguagePreference.setKey(localbb.Tn());
        this.cIG.b(localLanguagePreference);
      }
    }
  }

  public final int Gc()
  {
    return k.aSH;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
  }

  public final boolean a(com.tencent.mm.ui.base.preference.n paramn, Preference paramPreference)
  {
    bb localbb;
    if ((paramPreference instanceof LanguagePreference))
    {
      localbb = ((LanguagePreference)paramPreference).aFJ();
      if (localbb != null);
    }
    else
    {
      return false;
    }
    Intent localIntent = new Intent();
    Bundle localBundle = new Bundle();
    localBundle.putString("voice_verify_language", localbb.aFK());
    localBundle.putString("voice_verify_code", localbb.Tn());
    localIntent.putExtras(localBundle);
    setResult(0, localIntent);
    finish();
    return true;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.cIG = aIj();
    FR();
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.RegByMobileVoiceVerifySelectUI
 * JD-Core Version:    0.6.2
 */