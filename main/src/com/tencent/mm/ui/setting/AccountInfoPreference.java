package com.tencent.mm.ui.setting;

import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableString;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.ui.base.preference.Preference;

public final class AccountInfoPreference extends Preference
{
  private String accountName;
  private String bPx;
  private SpannableString hdF;
  private int hdG;

  public AccountInfoPreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public AccountInfoPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public AccountInfoPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public final void a(SpannableString paramSpannableString)
  {
    this.hdF = paramSpannableString;
  }

  public final void mJ(String paramString)
  {
    this.bPx = paramString;
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    ImageView localImageView = (ImageView)paramView.findViewById(2131362448);
    if ((this.bPx != null) && (localImageView != null))
      c.a(localImageView, this.bPx);
    TextView localTextView1 = (TextView)paramView.findViewById(2131363287);
    Object localObject;
    TextView localTextView2;
    if ((this.bPx != null) && (localTextView1 != null))
    {
      if (this.hdF == null)
      {
        localObject = this.bPx;
        localTextView1.setText((CharSequence)localObject);
      }
    }
    else
    {
      localTextView2 = (TextView)paramView.findViewById(2131363288);
      if ((this.accountName == null) || (localTextView2 == null))
        break label193;
      Resources localResources = paramView.getResources();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.accountName;
      localTextView2.setText(localResources.getString(2131167786, arrayOfObject));
    }
    TextView localTextView3;
    while (true)
    {
      localTextView3 = (TextView)paramView.findViewById(2131363229);
      if (localTextView3 != null)
      {
        if (this.hdG <= 99)
          break label208;
        localTextView3.setText(getContext().getString(2131169190));
        localTextView3.setBackgroundResource(2130839580);
        localTextView3.setVisibility(0);
      }
      return;
      localObject = this.hdF;
      break;
      label193: if (localTextView2 != null)
        localTextView2.setVisibility(8);
    }
    label208: if (this.hdG > 0)
    {
      localTextView3.setText(this.hdG);
      localTextView3.setVisibility(0);
      return;
    }
    localTextView3.setVisibility(8);
  }

  public final void setAccountName(String paramString)
  {
    this.accountName = paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.AccountInfoPreference
 * JD-Core Version:    0.6.2
 */