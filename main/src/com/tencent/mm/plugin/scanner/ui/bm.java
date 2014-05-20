package com.tencent.mm.plugin.scanner.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.ArrayList;
import java.util.List;

public final class bm extends BaseAdapter
{
  private List cTu;
  private Context context;
  private int eeT = -1;

  public bm(Context paramContext, List paramList)
  {
    this.context = paramContext;
    this.cTu = paramList;
    if (paramList == null)
      this.cTu = new ArrayList();
    aa.d("MicroMsg.scanner.SelectScanModeGroupAdapter", "<init> list size = " + this.cTu.size());
  }

  public final int getCount()
  {
    return this.cTu.size();
  }

  public final Object getItem(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.cTu.size()))
    {
      aa.e("MicroMsg.scanner.SelectScanModeGroupAdapter", "getItem fail, invalid position = " + paramInt);
      return null;
    }
    return this.cTu.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    bn localbn;
    if (paramView == null)
    {
      paramView = View.inflate(this.context, k.aZk, null);
      localbn = new bn();
      localbn.eeU = ((TextView)paramView.findViewById(i.aIN));
      localbn.dFD = ((TextView)paramView.findViewById(i.aIR));
      paramView.setTag(localbn);
    }
    bo localbo;
    while (true)
    {
      if (paramInt == paramViewGroup.getChildCount())
      {
        localbo = (bo)getItem(paramInt);
        if (localbo != null)
          break;
        aa.e("MicroMsg.scanner.SelectScanModeGroupAdapter", "getView fail, item is null");
      }
      return paramView;
      localbn = (bn)paramView.getTag();
    }
    localbn.dFD.setText(localbo.eeV);
    if (paramInt == this.eeT)
      localbn.eeU.setBackgroundResource(localbo.eeX);
    while (true)
    {
      localbo.eeZ = localbn.eeU;
      return paramView;
      localbn.eeU.setBackgroundResource(localbo.eeW);
    }
  }

  public final void hH(int paramInt)
  {
    this.eeT = paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.bm
 * JD-Core Version:    0.6.2
 */