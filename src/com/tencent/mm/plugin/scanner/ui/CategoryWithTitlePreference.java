package com.tencent.mm.plugin.scanner.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.preference.Preference;

public final class CategoryWithTitlePreference extends Preference
{
  private TextView cXK;
  private Context context;
  private int ecA = 0;
  private TextView ecB;
  private TextView ecz;
  private String title = "";

  public CategoryWithTitlePreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public CategoryWithTitlePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
    this.context = paramContext;
  }

  public CategoryWithTitlePreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(k.aWF);
    this.context = paramContext;
  }

  public final void hF(int paramInt)
  {
    this.ecA = paramInt;
    if (this.ecz != null)
      this.ecz.setVisibility(this.ecA);
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    this.cXK = ((TextView)paramView.findViewById(16908310));
    this.ecB = ((TextView)paramView.findViewById(16908304));
    this.ecz = ((TextView)paramView.findViewById(i.aEm));
    if ((this.title != null) && (this.title.length() > 0) && (this.cXK != null))
    {
      this.cXK.setVisibility(0);
      this.cXK.setText(this.title);
      aa.v("MicroMsg.scanner.CategoryWithTitlePreference", "onBindView title : " + this.cXK.getText());
    }
    if (this.ecz != null)
      this.ecz.setVisibility(this.ecA);
  }

  public final void setTitle(int paramInt)
  {
    if (this.cXK != null)
    {
      if (this.context != null)
        this.title = this.context.getString(paramInt);
      this.cXK.setVisibility(0);
      this.cXK.setText(this.title);
      aa.v("MicroMsg.scanner.CategoryWithTitlePreference", "title : " + this.cXK.getText());
    }
    super.setTitle(paramInt);
  }

  public final void setTitle(CharSequence paramCharSequence)
  {
    if ((paramCharSequence != null) && (paramCharSequence.length() > 0))
    {
      this.title = paramCharSequence.toString();
      if (this.cXK != null)
      {
        this.cXK.setVisibility(0);
        this.cXK.setText(paramCharSequence);
        aa.v("MicroMsg.scanner.CategoryWithTitlePreference", "title : " + this.cXK.getText());
      }
    }
    while (true)
    {
      super.setTitle(paramCharSequence);
      return;
      if (this.cXK != null)
        this.cXK.setVisibility(8);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.CategoryWithTitlePreference
 * JD-Core Version:    0.6.2
 */