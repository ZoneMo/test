package com.tencent.mm.ui.base;

import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.i;

final class b
{
  private TextView dYB = null;
  private MMImageButton gkt = null;
  private MMImageButton gku = null;
  private ImageView gkw = null;
  private ImageView gkx = null;
  private ImageView gky = null;
  private LinearLayout gyj = null;
  private final f gyk;

  public b(f paramf)
  {
    this.gyk = paramf;
    this.gkt = ((MMImageButton)paramf.findViewById(i.aNb));
    this.gku = ((MMImageButton)paramf.findViewById(i.aNc));
    this.gyj = ((LinearLayout)paramf.findViewById(i.aCr));
    this.gkx = ((ImageView)paramf.findViewById(i.aNk));
    this.gkw = ((ImageView)paramf.findViewById(i.aNl));
    this.gky = ((ImageView)paramf.findViewById(i.aNj));
    this.dYB = ((TextView)paramf.findViewById(i.title));
  }

  public final void jdMethod_do(boolean paramBoolean)
  {
    if (this.gkt != null)
      this.gkt.setEnabled(paramBoolean);
  }

  public final MMImageButton m(View.OnClickListener paramOnClickListener)
  {
    String str = a.m(this.gyk.getContext(), 2131167681);
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
      this.gku.nf(((Integer)str).intValue());
    }
  }

  public final MMImageButton n(View.OnClickListener paramOnClickListener)
  {
    String str = a.m(this.gyk.getContext(), 2131167677);
    if (this.gkt == null)
      return null;
    this.gkt.setVisibility(0);
    if ((str instanceof String))
      this.gkt.setText((String)str);
    while (true)
    {
      this.gkt.setOnClickListener(paramOnClickListener);
      if ((this.gku != null) && (this.gku.getVisibility() != 0))
        this.gku.setVisibility(4);
      return this.gkt;
      this.gkt.nf(((Integer)str).intValue());
    }
  }

  public final void vT(String paramString)
  {
    if (this.dYB != null)
    {
      TextView localTextView = this.dYB;
      localTextView.setText(com.tencent.mm.ao.b.e(this.gyk.getContext(), paramString, (int)this.dYB.getTextSize()));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.b
 * JD-Core Version:    0.6.2
 */