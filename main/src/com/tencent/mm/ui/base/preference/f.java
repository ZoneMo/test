package com.tencent.mm.ui.base.preference;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.RadioButton;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import java.util.HashMap;
import junit.framework.Assert;

final class f extends BaseAdapter
{
  protected final HashMap bZy = new HashMap();
  private final Context context;
  private final int dKd;
  protected int dKf = -1;
  protected CharSequence[] gFM;
  protected CharSequence[] gFN;
  protected String value;

  public f(Context paramContext)
  {
    this.context = paramContext;
    this.dKd = 1;
  }

  protected final void aIa()
  {
    int i = 0;
    if (this.gFM == null)
      this.gFM = new CharSequence[0];
    if (this.gFN == null)
      this.gFN = new CharSequence[0];
    if (this.gFM.length == this.gFN.length);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue("entries count different", bool);
      this.bZy.clear();
      while (i < this.gFN.length)
      {
        e locale = new e(this.gFM[i], 1048576 + i);
        this.bZy.put(this.gFN[i], locale);
        i++;
      }
    }
  }

  public final int getCount()
  {
    return this.gFN.length;
  }

  public final Object getItem(int paramInt)
  {
    return null;
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = View.inflate(this.context, k.aWU, null);
      g localg2 = new g();
      localg2.dFD = ((TextView)paramView.findViewById(i.text));
      localg2.dKg = ((CheckBox)paramView.findViewById(i.apr));
      localg2.dKh = ((RadioButton)paramView.findViewById(i.aFV));
      paramView.setTag(localg2);
    }
    g localg1 = (g)paramView.getTag();
    localg1.dFD.setText(this.gFM[paramInt]);
    switch (this.dKd)
    {
    default:
      localg1.dKg.setVisibility(8);
      localg1.dKh.setVisibility(8);
      return paramView;
    case 1:
      localg1.dKg.setVisibility(8);
      localg1.dKh.setVisibility(0);
      localg1.dKh.setChecked(this.gFN[paramInt].equals(this.value));
      return paramView;
    case 2:
    }
    localg1.dKg.setVisibility(0);
    localg1.dKh.setVisibility(8);
    localg1.dKg.setChecked(this.gFN[paramInt].equals(this.value));
    return paramView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.f
 * JD-Core Version:    0.6.2
 */