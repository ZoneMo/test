package com.tencent.mm.ui.tools;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.base.MaskLayout;
import com.tencent.mm.ui.bc;
import java.util.ArrayList;
import java.util.List;

final class fl extends bc
{
  private List gUt;
  private boolean[] hmk;

  private fl(ShareImageUI paramShareImageUI, Context paramContext, List paramList)
  {
    super(paramContext, new i());
    this.gUt = paramList;
    this.hmk = new boolean[paramList.size()];
    int i = 0;
    int j = this.hmk.length;
    while (i < j)
    {
      this.hmk[i] = true;
      i++;
    }
  }

  public final void FZ()
  {
    setCursor(be.uz().su().as(this.gUt));
    notifyDataSetChanged();
  }

  protected final void Ga()
  {
    FZ();
  }

  public final ArrayList aNK()
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    int j = this.gUt.size();
    while (i < j)
    {
      if (this.hmk[i] != 0)
        localArrayList.add(this.gUt.get(i));
      i++;
    }
    return localArrayList;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    fm localfm1;
    if (paramView == null)
    {
      paramView = View.inflate(this.context, 2130903225, null);
      fm localfm2 = new fm(this);
      localfm2.cMT = ((TextView)paramView.findViewById(2131361912));
      localfm2.cTU = ((MaskLayout)paramView.findViewById(2131361915));
      localfm2.cMU = ((TextView)paramView.findViewById(2131361923));
      localfm2.cMW = ((CheckBox)paramView.findViewById(2131361920));
      localfm2.dKL = ((TextView)paramView.findViewById(2131361924));
      paramView.setTag(localfm2);
      localfm1 = localfm2;
    }
    while (true)
    {
      i locali = (i)getItem(paramInt);
      localfm1.cMT.setVisibility(8);
      localfm1.cMW.setChecked(this.hmk[paramInt]);
      localfm1.cMW.setVisibility(0);
      c.a((ImageView)localfm1.cTU.getContentView(), locali.getUsername());
      localfm1.dKL.setVisibility(8);
      try
      {
        TextView localTextView = localfm1.cMU;
        Context localContext = this.context;
        locali.getUsername();
        String str = w.cu(locali.getUsername());
        if (("".length() > 0) && (!"".equals(str)))
        {
          StringBuilder localStringBuilder = new StringBuilder(32);
          localStringBuilder.append(str);
          localStringBuilder.append("(");
          localStringBuilder.append("");
          localStringBuilder.append(")");
          str = localStringBuilder.toString();
        }
        localTextView.setText(com.tencent.mm.ao.b.e(localContext, str, (int)localfm1.cMU.getTextSize()));
        return paramView;
        localfm1 = (fm)paramView.getTag();
      }
      catch (Exception localException)
      {
        localfm1.cMU.setText("");
      }
    }
    return paramView;
  }

  public final void oi(int paramInt)
  {
    boolean[] arrayOfBoolean;
    if ((paramInt >= 0) && (paramInt < this.hmk.length))
    {
      arrayOfBoolean = this.hmk;
      if (this.hmk[paramInt] != 0)
        break label38;
    }
    label38: for (int i = 1; ; i = 0)
    {
      arrayOfBoolean[paramInt] = i;
      notifyDataSetChanged();
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.fl
 * JD-Core Version:    0.6.2
 */