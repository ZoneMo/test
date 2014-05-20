package com.tencent.mm.ui.contact;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.preference.Preference;

public class RemarkInfoPreference extends Preference
{
  private MMActivity bLH;
  private TextView cXK;
  private ImageView dvz;
  private TextView ecB;
  private boolean gUA = false;
  private String gUB;
  private String title;

  public RemarkInfoPreference(Context paramContext)
  {
    super(paramContext);
    this.bLH = ((MMActivity)paramContext);
  }

  public RemarkInfoPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.bLH = ((MMActivity)paramContext);
  }

  public RemarkInfoPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(2130903475);
    setWidgetLayoutResource(2130903528);
  }

  private void LP()
  {
    if (this.cXK != null)
      this.cXK.setText(this.title);
    if (this.ecB != null)
      this.ecB.setText(this.gUB);
  }

  public final void aKQ()
  {
    this.gUA = true;
    if (this.dvz != null)
      this.dvz.setVisibility(0);
  }

  public final void lg(String paramString)
  {
    this.gUB = paramString;
    LP();
  }

  public final void onBindView(View paramView)
  {
    this.cXK = ((TextView)paramView.findViewById(2131361861));
    this.ecB = ((TextView)paramView.findViewById(2131362266));
    this.dvz = ((ImageView)paramView.findViewById(2131362591));
    if (!this.gUA)
      this.dvz.setVisibility(8);
    while (true)
    {
      LP();
      super.onBindView(paramView);
      return;
      this.dvz.setVisibility(0);
    }
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    LayoutInflater localLayoutInflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(2131361916);
    localViewGroup.removeAllViews();
    localLayoutInflater.inflate(2130903500, localViewGroup);
    return localView;
  }

  public final void setTitle(String paramString)
  {
    this.title = paramString;
    LP();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.RemarkInfoPreference
 * JD-Core Version:    0.6.2
 */