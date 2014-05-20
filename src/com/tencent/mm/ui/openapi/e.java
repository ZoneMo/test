package com.tencent.mm.ui.openapi;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.o;
import com.tencent.mm.sdk.e.al;
import java.util.ArrayList;
import java.util.List;

public final class e extends BaseAdapter
  implements al
{
  private Context context;
  private List ftV;
  private boolean hcH = false;
  private int hcI = 0;

  public e(Context paramContext, int paramInt)
  {
    this.context = paramContext;
    this.hcI = paramInt;
    init();
  }

  private int aEK()
  {
    return this.ftV.size();
  }

  private int aiD()
  {
    return (4 - aEK() % 4) % 4;
  }

  private void init()
  {
    this.ftV = new ArrayList();
    Cursor localCursor = ba.HE().ka(this.hcI);
    if (localCursor != null)
    {
      int i = localCursor.getCount();
      for (int j = 0; j < i; j++)
      {
        localCursor.moveToPosition(j);
        k localk = new k();
        localk.convertFrom(localCursor);
        if (com.tencent.mm.pluginsdk.model.app.l.g(this.context, localk.field_appId))
          this.ftV.add(localk);
      }
      localCursor.close();
    }
  }

  public final boolean aLT()
  {
    return this.hcH;
  }

  public final void ca(String paramString)
  {
    init();
    super.notifyDataSetChanged();
  }

  public final void ed(boolean paramBoolean)
  {
    this.hcH = paramBoolean;
    notifyDataSetChanged();
  }

  public final int getCount()
  {
    return aEK() + aiD();
  }

  public final Object getItem(int paramInt)
  {
    if (mz(paramInt))
      return null;
    return this.ftV.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    l locall;
    if (paramView == null)
    {
      locall = new l();
      paramView = View.inflate(this.context, 2130903081, null);
      locall.dvz = ((ImageView)paramView.findViewById(2131361954));
      locall.flW = ((TextView)paramView.findViewById(2131361955));
      locall.dIs = ((TextView)paramView.findViewById(2131361957));
      locall.hcT = paramView.findViewById(2131361956);
      paramView.setTag(locall);
    }
    while (true)
    {
      locall.hcT.setVisibility(4);
      if (!mz(paramInt))
        break;
      locall.dvz.setVisibility(4);
      locall.flW.setVisibility(4);
      locall.dIs.setVisibility(4);
      return paramView;
      locall = (l)paramView.getTag();
    }
    k localk = (k)getItem(paramInt);
    locall.dvz.setVisibility(0);
    Bitmap localBitmap = com.tencent.mm.pluginsdk.model.app.l.b(localk.field_appId, 1, a.getDensity(this.context));
    if (localBitmap == null)
      locall.dvz.setBackgroundResource(2130837663);
    while (true)
    {
      locall.dIs.setVisibility(0);
      locall.dIs.setText(com.tencent.mm.pluginsdk.model.app.l.c(this.context, localk));
      if (!this.hcH)
        break;
      locall.flW.setVisibility(0);
      return paramView;
      locall.dvz.setBackgroundDrawable(new BitmapDrawable(localBitmap));
    }
    locall.flW.setVisibility(8);
    return paramView;
  }

  public final boolean mz(int paramInt)
  {
    int i = this.ftV.size();
    return (paramInt >= i) && (paramInt < i + aiD());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.openapi.e
 * JD-Core Version:    0.6.2
 */