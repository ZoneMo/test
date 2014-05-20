package com.tencent.mm.ui.setting;

import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Toast;
import com.tencent.mm.ab.i;
import com.tencent.mm.ab.k;
import com.tencent.mm.ab.l;
import com.tencent.mm.ab.r;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.List;

final class ea
  implements AdapterView.OnItemClickListener
{
  ea(SettingsSelectBgUI paramSettingsSelectBgUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt == 0)
    {
      SettingsSelectBgUI.a(this.hgd, -2);
      SettingsSelectBgUI.b(this.hgd).FZ();
      if (!SettingsSelectBgUI.c(this.hgd))
      {
        this.hgd.setResult(-1);
        this.hgd.finish();
      }
    }
    do
    {
      return;
      if (paramInt != 1)
        break;
      SettingsSelectBgUI.a(this.hgd, 0);
      SettingsSelectBgUI.b(this.hgd).FZ();
    }
    while (SettingsSelectBgUI.c(this.hgd));
    this.hgd.setResult(-1);
    this.hgd.finish();
    return;
    if (!be.uz().isSDCardAvailable())
    {
      Toast.makeText(this.hgd, 2131166163, 1).show();
      return;
    }
    k localk = (k)paramAdapterView.getItemAtPosition(paramInt - 2);
    if (localk == null)
    {
      aa.e("MicroMsg.SettingsSelectBgUI", "onItemClick fail, info is null, position = " + paramInt);
      return;
    }
    switch (localk.getStatus())
    {
    default:
      return;
    case 1:
    case 2:
      SettingsSelectBgUI.a(this.hgd, localk.getId());
      if (SettingsSelectBgUI.c(this.hgd))
      {
        localk.setStatus(1);
        r.BM().c(localk);
      }
      break;
    case 5:
    case 3:
    case 4:
    }
    while (!SettingsSelectBgUI.c(this.hgd))
    {
      this.hgd.setResult(-1);
      this.hgd.finish();
      return;
      if (SettingsSelectBgUI.d(this.hgd) == null)
      {
        SettingsSelectBgUI.a(this.hgd, new i(localk.getId(), 1));
        be.uA().d(SettingsSelectBgUI.d(this.hgd));
        return;
      }
      SettingsSelectBgUI.e(this.hgd).add(new i(localk.getId(), 1));
      return;
      if ((SettingsSelectBgUI.d(this.hgd) != null) && (SettingsSelectBgUI.d(this.hgd).BG() == localk.getId()))
      {
        be.uA().c(SettingsSelectBgUI.d(this.hgd));
        r.BM().L(SettingsSelectBgUI.d(this.hgd).BG(), 1);
        SettingsSelectBgUI.a(this.hgd, SettingsSelectBgUI.e(this.hgd));
      }
      SettingsSelectBgUI.d(localk.getId(), SettingsSelectBgUI.e(this.hgd));
      l locall = r.BM();
      localk.setStatus(4);
      locall.b(localk);
      new eb(this, locall, localk.getId()).sendEmptyMessageDelayed(0, 1000L);
      return;
      r.BM().L(localk.getId(), 1);
      return;
      SettingsSelectBgUI.b(this.hgd).FZ();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ea
 * JD-Core Version:    0.6.2
 */