package com.tencent.mm.ui.tools;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.tencent.mm.x.b;
import java.util.ArrayList;
import java.util.List;

public final class y extends BaseAdapter
{
  private String cIs;
  private Context context;
  private List dtu;
  private List hhG = new ArrayList();
  private int[] hhH;

  public y(Context paramContext, List paramList)
  {
    this.context = paramContext;
    this.dtu = paramList;
    aMP();
    aMQ();
  }

  private void aMP()
  {
    int i = 0;
    int j = this.dtu.size();
    while (i < j)
    {
      this.hhG.add(this.dtu.get(i));
      i++;
    }
  }

  private void aMQ()
  {
    this.hhH = new int[this.dtu.size()];
    int i = this.dtu.size();
    for (int j = 0; j < i; j++)
      this.hhH[j] = ((x)this.dtu.get(j)).aMN();
  }

  private static String nW(int paramInt)
  {
    if (b.Bk())
      return Integer.toString(paramInt) + "劃";
    return String.valueOf((char)paramInt);
  }

  public final int[] aMR()
  {
    return this.hhH;
  }

  public final int getCount()
  {
    return this.dtu.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.dtu.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    x localx = (x)getItem(paramInt);
    View localView;
    z localz1;
    label100: int i;
    if (paramView == null)
      if (!b.Bk())
      {
        localView = View.inflate(this.context, 2130903236, null);
        z localz2 = new z();
        localz2.cMT = ((TextView)localView.findViewById(2131361912));
        localz2.cMU = ((TextView)localView.findViewById(2131361923));
        localz2.gSg = ((TextView)localView.findViewById(2131361919));
        localView.setTag(localz2);
        paramView = localView;
        localz1 = localz2;
        if (paramInt <= 0)
          break label199;
        i = this.hhH[(paramInt - 1)];
        label114: if (paramInt != 0)
          break label205;
        localz1.cMT.setVisibility(0);
        localz1.cMT.setText(nW(this.hhH[paramInt]));
      }
    while (true)
    {
      localz1.cMU.setText(localx.getCountryName());
      localz1.gSg.setText(localx.getCountryCode());
      return paramView;
      localView = View.inflate(this.context, 2130903237, null);
      break;
      localz1 = (z)paramView.getTag();
      break label100;
      label199: i = -1;
      break label114;
      label205: if ((paramInt > 0) && (this.hhH[paramInt] != i))
      {
        localz1.cMT.setVisibility(0);
        localz1.cMT.setText(nW(this.hhH[paramInt]));
      }
      else
      {
        localz1.cMT.setVisibility(8);
      }
    }
  }

  public final void ih(String paramString)
  {
    if (paramString != null)
    {
      this.cIs = paramString.trim();
      this.dtu.clear();
      int i = this.hhG.size();
      for (int j = 0; j < i; j++)
        if ((((x)this.hhG.get(j)).getCountryName().toUpperCase().contains(this.cIs.toUpperCase())) || (((x)this.hhG.get(j)).aMO().toUpperCase().contains(this.cIs.toUpperCase())) || (((x)this.hhG.get(j)).getCountryCode().contains(this.cIs)))
          this.dtu.add(this.hhG.get(j));
      aMQ();
      super.notifyDataSetChanged();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.y
 * JD-Core Version:    0.6.2
 */