package com.tencent.mm.ui.voicesearch;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.storage.i;

final class x
  implements AdapterView.OnItemClickListener
{
  x(VoiceSearchResultUI paramVoiceSearchResultUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    m localm;
    StringBuilder localStringBuilder;
    if (!VoiceSearchResultUI.a(this.htR))
    {
      localm = m.dZN;
      localStringBuilder = new StringBuilder().append(VoiceSearchResultUI.b(this.htR)).append(",").append(VoiceSearchResultUI.c(this.htR)).append(",");
      if (VoiceSearchResultUI.d(this.htR) != null)
        break label125;
    }
    label125: for (int i = 0; ; i = VoiceSearchResultUI.d(this.htR).length)
    {
      localm.j(10452, i + "," + paramInt);
      i locali = VoiceSearchResultUI.e(this.htR).oD(paramInt);
      this.htR.bl(locali.getUsername(), locali.rr());
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicesearch.x
 * JD-Core Version:    0.6.2
 */