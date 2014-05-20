package com.tencent.mm.ui.setting;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.tencent.mm.ab.a;
import com.tencent.mm.ab.l;
import com.tencent.mm.ab.r;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.ui.tools.s;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.tools.CropImageNewUI;

public class SettingsChattingBackgroundUI extends MMPreference
{
  private n cIG;
  private boolean hfk;
  private String username;

  private String ei(boolean paramBoolean)
  {
    l locall = r.BM();
    if (this.hfk)
      return locall.j("default", paramBoolean);
    return locall.j(this.username, paramBoolean);
  }

  protected final void FR()
  {
    mn(2131165853);
    this.cIG = aIj();
    this.hfk = getIntent().getBooleanExtra("isApplyToAll", true);
    if (!this.hfk)
    {
      Preference localPreference = this.cIG.wn("settings_chatting_bg_apply_to_all");
      if (localPreference != null)
        this.cIG.c(localPreference);
    }
    this.username = getIntent().getStringExtra("username");
    a(new bv(this));
  }

  public final int Gc()
  {
    return 2131034169;
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    String str = paramPreference.getKey();
    aa.i("MicroMsg.SettingsChattingBackgroundUI", str + " item has been clicked!");
    if (str.equals("settings_chatting_bg_select_bg"))
    {
      Intent localIntent = new Intent();
      localIntent.setClass(this, SettingsSelectBgUI.class);
      localIntent.putExtra("isApplyToAll", this.hfk);
      localIntent.putExtra("username", this.username);
      startActivityForResult(localIntent, 3);
    }
    do
    {
      return true;
      if (str.equals("settings_chatting_bg_select_from_album"))
      {
        s.e(this, 1);
        return true;
      }
      if (!str.equals("settings_chatting_bg_take_photo"))
        break;
    }
    while (s.a(this, com.tencent.mm.storage.h.cfG, "microMsg." + System.currentTimeMillis() + ".jpg", 2));
    Toast.makeText(this, getString(2131165340), 1).show();
    return true;
    if (str.equals("settings_chatting_bg_apply_to_all"))
    {
      com.tencent.mm.ui.base.h.a(aal(), getString(2131166157), "", new bw(this), null);
      return true;
    }
    return false;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    default:
    case 1:
    case 2:
    case 4:
    case 3:
    }
    do
      while (true)
      {
        if (!this.hfk)
        {
          setResult(-1);
          finish();
        }
        String str;
        do
        {
          do
            return;
          while (paramIntent == null);
          Intent localIntent2 = new Intent(this, CropImageNewUI.class);
          localIntent2.putExtra("CropImageMode", 2);
          localIntent2.putExtra("CropImage_bg_vertical", ei(true));
          localIntent2.putExtra("CropImage_bg_horizontal", ei(false));
          com.tencent.mm.ui.tools.h.b(this, paramIntent, localIntent2, be.uz().sB(), 4);
          return;
          str = s.a(getApplicationContext(), paramIntent, be.uz().sB());
        }
        while (str == null);
        Intent localIntent1 = new Intent(this, CropImageNewUI.class);
        localIntent1.putExtra("CropImageMode", 2);
        localIntent1.putExtra("CropImage_ImgPath", str);
        localIntent1.putExtra("CropImage_bg_vertical", ei(true));
        localIntent1.putExtra("CropImage_bg_horizontal", ei(false));
        startActivityForResult(localIntent1, 4);
        return;
        if (paramInt2 == -1)
        {
          be.uz().sr().set(66820, Integer.valueOf(-1));
          if (this.hfk)
          {
            be.uz().sr().set(12311, Integer.valueOf(-1));
            r.BM().dP(1);
          }
          else
          {
            com.tencent.mm.ab.b localb = r.BN();
            a locala1 = localb.gc(this.username);
            if (locala1 == null)
            {
              a locala2 = new a();
              locala2.setUsername(this.username);
              locala2.dN(-1);
              localb.a(locala2);
            }
            else
            {
              locala1.dN(-1);
              localb.b(locala1);
            }
          }
        }
      }
    while (paramInt2 == -1);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsChattingBackgroundUI
 * JD-Core Version:    0.6.2
 */