package com.tencent.mm.ui.setting;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.ao.b;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.preference.Preference;

public class PersonalPreference extends Preference
{
  private String bPk;
  private TextView cMU = null;
  private Bitmap ckx = null;
  private ImageView dkV = null;
  private TextView gMy = null;
  private int hdY = -1;
  private String hdZ = null;
  private View.OnClickListener hea;
  private String username;
  private String wN;

  public PersonalPreference(Context paramContext)
  {
    super(paramContext);
  }

  public PersonalPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public PersonalPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(2130903475);
    setWidgetLayoutResource(2130903528);
  }

  public final void onBindView(View paramView)
  {
    if (this.dkV == null)
      this.dkV = ((ImageView)paramView.findViewById(2131362591));
    if (this.ckx != null)
    {
      this.dkV.setImageBitmap(this.ckx);
      this.dkV.setOnClickListener(this.hea);
      if ((this.cMU != null) && (this.bPk != null))
      {
        TextView localTextView = this.cMU;
        localTextView.setText(b.e(getContext(), this.bPk, (int)this.cMU.getTextSize()));
      }
      if (this.gMy != null)
        if (!au.hX(this.wN))
          break label228;
    }
    label228: for (String str = this.username; ; str = this.wN)
    {
      if ((au.hX(this.wN)) && (i.tD(this.username)))
        this.gMy.setVisibility(8);
      this.gMy.setText(getContext().getString(2131167766) + str);
      super.onBindView(paramView);
      return;
      if (this.hdY > 0)
      {
        this.dkV.setImageResource(this.hdY);
        break;
      }
      if (this.hdZ == null)
        break;
      c.a(this.dkV, this.hdZ);
      break;
    }
  }

  public final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(2131361916);
    localViewGroup.removeAllViews();
    View.inflate(getContext(), 2130903496, localViewGroup);
    return localView;
  }

  public final void xs(String paramString)
  {
    this.ckx = null;
    this.hdY = -1;
    this.hdZ = paramString;
    if (this.dkV != null)
      c.a(this.dkV, this.hdZ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.PersonalPreference
 * JD-Core Version:    0.6.2
 */