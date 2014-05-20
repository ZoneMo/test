package com.tencent.mm.ui.tools;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.sdk.platformtools.aa;

final class bn
  implements AdapterView.OnItemClickListener
{
  bn(FilterImageView paramFilterImageView)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    FilterImageView.a(this.hja).db(paramInt);
    try
    {
      FilterImageView.a(this.hja, FilterImageView.hiZ[paramInt].hjl);
      FilterImageView.a(this.hja, FilterImageView.hiZ[paramInt].hji, FilterImageView.hiZ[paramInt].hjj, FilterImageView.hiZ[paramInt].hjk);
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.FilterView", localException.toString());
      return;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      aa.e("MicroMsg.FilterView", localOutOfMemoryError.toString());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.bn
 * JD-Core Version:    0.6.2
 */