package com.tencent.mm.ui.contact;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import java.util.List;

final class cs extends a
{
  private List gUt;

  public cs(Context paramContext, List paramList)
  {
    super(paramContext, "", "");
    this.gUt = paramList;
  }

  public final void FZ()
  {
    if (this.gUt == null)
      setCursor(be.uz().su().aAG());
    while (true)
    {
      super.notifyDataSetChanged();
      return;
      setCursor(be.uz().su().as(this.gUt));
    }
  }

  protected final void Ga()
  {
    FZ();
  }

  public final i a(i parami, Cursor paramCursor)
  {
    if (parami == null)
      parami = new i();
    parami.convertFrom(paramCursor);
    return parami;
  }

  public final int getCount()
  {
    return getCursor().getCount();
  }

  public final int getItemViewType(int paramInt)
  {
    return 0;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    i locali = (i)getItem(paramInt);
    ct localct1;
    TextView localTextView2;
    StringBuilder localStringBuilder;
    if (paramView == null)
    {
      paramView = View.inflate(this.context, 2130903638, null);
      ct localct2 = new ct();
      localct2.cMU = ((TextView)paramView.findViewById(2131363560));
      localct2.cMS = ((ImageView)paramView.findViewById(2131362448));
      localct2.gUu = ((TextView)paramView.findViewById(2131363561));
      paramView.setTag(localct2);
      localct1 = localct2;
      TextView localTextView1 = localct1.cMU;
      localTextView1.setText(com.tencent.mm.ao.b.e(this.context, locali.rr(), (int)localct1.cMU.getTextSize()));
      c.a(localct1.cMS, locali.getUsername());
      if ((locali.rb()) || (locali.getUsername().equals(v.th())))
        break label242;
      localTextView2 = localct1.gUu;
      localStringBuilder = new StringBuilder();
      if (!i.tD(locali.rs()))
        break label232;
    }
    label232: for (String str = ""; ; str = locali.rs())
    {
      localTextView2.setText(str + this.context.getString(2131167642));
      return paramView;
      localct1 = (ct)paramView.getTag();
      break;
    }
    label242: localct1.gUu.setText(locali.rs());
    return paramView;
  }

  public final int getViewTypeCount()
  {
    return 1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.cs
 * JD-Core Version:    0.6.2
 */