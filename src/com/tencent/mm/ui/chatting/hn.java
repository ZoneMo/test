package com.tencent.mm.ui.chatting;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.MMPullDownView;

final class hn
  implements AdapterView.OnItemClickListener
{
  hn(ChattingUI paramChattingUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ak localak = (ak)ChattingUI.v(this.gPG).getItem(paramInt);
    if ((localak != null) && (!au.hX(localak.aCl())))
    {
      this.gPG.aJD();
      if (ChattingUI.u(this.gPG) != null)
        ChattingUI.u(this.gPG).D(localak);
      if (!ChattingUI.t(this.gPG))
      {
        ChattingUI.w(this.gPG);
        ChattingUI.r(this.gPG).du(true);
        ChattingUI.j(this.gPG).setTranscriptMode(0);
      }
      ChattingUI.r(this.gPG).ds(false);
      ChattingUI.r(this.gPG).dt(false);
      int i = this.gPG.gMi.cd(localak.Bo());
      this.gPG.gMi.ei(null);
      ChattingUI.j(this.gPG).post(new ho(this, paramInt, i));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.hn
 * JD-Core Version:    0.6.2
 */