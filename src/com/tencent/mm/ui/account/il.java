package com.tencent.mm.ui.account;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class il extends ArrayAdapter
{
  private final Context context;
  private final LayoutInflater dLe;
  private final ArrayList gtr;

  public il(RegByMobileWaitingSMSUI paramRegByMobileWaitingSMSUI, Context paramContext, String[] paramArrayOfString)
  {
    super(paramContext, 0, paramArrayOfString);
    this.context = paramContext;
    this.gtr = new ArrayList(Arrays.asList(paramArrayOfString));
    this.dLe = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }

  private String gz(int paramInt)
  {
    return (String)this.gtr.get(paramInt);
  }

  public final void eQ(String paramString)
  {
    this.gtr.add(paramString);
    notifyDataSetChanged();
  }

  public final int getCount()
  {
    return this.gtr.size();
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final int getItemViewType(int paramInt)
  {
    if (((Integer)RegByMobileWaitingSMSUI.i(this.gtp).get(paramInt % RegByMobileWaitingSMSUI.i(this.gtp).size())).intValue() % 4 == 0)
      return 1;
    return 0;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = getItemViewType(paramInt);
    View localView;
    im localim2;
    label117: int j;
    if (paramView == null)
    {
      im localim1 = new im(this.gtp, (byte)0);
      switch (i)
      {
      default:
        throw new IllegalArgumentException("UNIMPLEMENT TYPE");
      case 0:
        localView = this.dLe.inflate(k.aSg, null);
        localim1.flU = ((TextView)localView.findViewById(i.api));
        localim1.cqS = ((ImageView)localView.findViewById(i.apf));
        localView.setTag(localim1);
        paramView = localView;
        localim2 = localim1;
        j = ((Integer)RegByMobileWaitingSMSUI.i(this.gtp).get(paramInt % RegByMobileWaitingSMSUI.i(this.gtp).size())).intValue();
        switch (i)
        {
        default:
        case 0:
        case 1:
        }
        break;
      case 1:
      }
    }
    while (true)
    {
      localim2.flU.setText(gz(paramInt));
      return paramView;
      localView = this.dLe.inflate(k.aSh, null);
      break;
      localim2 = (im)paramView.getTag();
      break label117;
      localim2.cqS.setImageDrawable((Drawable)RegByMobileWaitingSMSUI.j(this.gtp).get(j % RegByMobileWaitingSMSUI.j(this.gtp).size()));
      continue;
      localim2.cqS.setImageDrawable(RegByMobileWaitingSMSUI.k(this.gtp));
    }
  }

  public final int getViewTypeCount()
  {
    return 2;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.il
 * JD-Core Version:    0.6.2
 */