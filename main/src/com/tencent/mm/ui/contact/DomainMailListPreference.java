package com.tencent.mm.ui.contact;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.preference.Preference;

public class DomainMailListPreference extends Preference
{
  private TextView cXK;
  private boolean fsg;
  private String gTX;
  private TextView gTY;
  private TextView gTZ;
  private TextView gUa;
  private String title;

  public DomainMailListPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public DomainMailListPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private void init()
  {
    this.fsg = false;
    this.title = "";
    this.gTX = "";
  }

  public final void onBindView(View paramView)
  {
    this.cXK = ((TextView)paramView.findViewById(2131361861));
    this.gTY = ((TextView)paramView.findViewById(2131363220));
    this.gTZ = ((TextView)paramView.findViewById(2131363221));
    this.gUa = ((TextView)paramView.findViewById(2131363222));
    this.fsg = true;
    if (!this.fsg)
    {
      aa.e("MicroMsg.DomainMailPreference", "initView : unbind view");
      super.onBindView(paramView);
      return;
    }
    this.cXK.setText(au.hW(this.title));
    String[] arrayOfString = this.gTX.split(";");
    if (au.hW(this.gTX).length() <= 0)
    {
      this.gTY.setVisibility(8);
      this.gTZ.setVisibility(8);
    }
    label170: label239: label249: 
    while (true)
    {
      this.gUa.setVisibility(8);
      break;
      if (arrayOfString.length > 0)
      {
        this.gTY.setVisibility(0);
        this.gTY.setText(au.hW(arrayOfString[0]));
        if (arrayOfString.length <= 1)
          break label239;
        this.gTZ.setVisibility(0);
        this.gTZ.setText(au.hW(arrayOfString[1]));
      }
      while (true)
      {
        if (arrayOfString.length <= 2)
          break label249;
        this.gUa.setVisibility(0);
        this.gUa.setText(au.hW(arrayOfString[2]));
        break;
        this.gTY.setVisibility(8);
        break label170;
        this.gTZ.setVisibility(8);
      }
    }
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    LayoutInflater localLayoutInflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(2131361916);
    localViewGroup.removeAllViews();
    localLayoutInflater.inflate(2130903487, localViewGroup);
    return localView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.DomainMailListPreference
 * JD-Core Version:    0.6.2
 */