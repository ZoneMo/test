package com.tencent.mm.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.ao.b;
import com.tencent.mm.i;
import com.tencent.mm.ui.base.MMImageButton;

final class g
{
  private TextView dYB = null;
  private TextView gkA = null;
  private final Context gkB;
  private float gkC = 0.0F;
  private MMImageButton gkt = null;
  private MMImageButton gku = null;
  private TextView gkv = null;
  private ImageView gkw = null;
  private ImageView gkx = null;
  private ImageView gky = null;
  private View gkz = null;

  public g(View paramView)
  {
    this.gkB = paramView.getContext();
    this.gkt = ((MMImageButton)paramView.findViewById(i.aNb));
    this.gku = ((MMImageButton)paramView.findViewById(i.aNc));
    this.gkz = paramView.findViewById(i.aCr);
    this.gkx = ((ImageView)paramView.findViewById(i.aNk));
    this.gkw = ((ImageView)paramView.findViewById(i.aNl));
    this.gky = ((ImageView)paramView.findViewById(i.aNj));
    this.dYB = ((TextView)paramView.findViewById(i.title));
    this.gkv = ((TextView)paramView.findViewById(i.aMu));
    this.gkA = ((TextView)paramView.findViewById(i.aHy));
  }

  public final MMImageButton a(Object paramObject, View.OnClickListener paramOnClickListener)
  {
    if (this.gkt == null)
      return null;
    this.gkt.setVisibility(0);
    if ((paramObject instanceof String))
      this.gkt.setText((String)paramObject);
    while (true)
    {
      this.gkt.setOnClickListener(paramOnClickListener);
      if ((this.gku != null) && (this.gku.getVisibility() != 0))
        this.gku.setVisibility(4);
      return this.gkt;
      if ((paramObject instanceof Drawable))
        this.gkt.setImageDrawable((Drawable)paramObject);
      else
        this.gkt.nf(((Integer)paramObject).intValue());
    }
  }

  public final View aDT()
  {
    return this.gkz;
  }

  public final void l(View.OnClickListener paramOnClickListener)
  {
    if (this.dYB != null)
      this.dYB.setOnClickListener(paramOnClickListener);
  }

  public final MMImageButton m(View.OnClickListener paramOnClickListener)
  {
    String str = a.m(this.gkB, 2131165849);
    if (this.gku == null)
      return null;
    this.gku.setVisibility(0);
    if ((str instanceof String))
      this.gku.setText((String)str);
    while (true)
    {
      this.gku.setOnClickListener(paramOnClickListener);
      if ((this.gkt != null) && (this.gkt.getVisibility() != 0))
        this.gkt.setVisibility(4);
      return this.gku;
      if ((str instanceof Drawable))
        this.gku.setImageDrawable((Drawable)str);
      else
        this.gku.nf(((Integer)str).intValue());
    }
  }

  public final void mm(int paramInt)
  {
    if (paramInt == 0)
    {
      if (this.gkx != null)
        this.gkx.setVisibility(paramInt);
      if (this.gkw != null)
        this.gkw.setVisibility(4);
    }
    do
    {
      return;
      if (this.gkx != null)
        this.gkx.setVisibility(paramInt);
    }
    while (this.gkw == null);
    this.gkw.setVisibility(paramInt);
  }

  public final void mn(int paramInt)
  {
    if (this.dYB != null)
    {
      String str = a.m(this.gkB, paramInt);
      if (this.dYB != null)
      {
        TextView localTextView = this.dYB;
        localTextView.setText(b.e(this.gkB, str, (int)this.dYB.getTextSize()));
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.g
 * JD-Core Version:    0.6.2
 */