package com.tencent.mm.ui.base.preference;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.f;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class KeyValuePreference extends Preference
{
  private TextView ecB;
  private Drawable gGk = null;
  private boolean gGl = true;
  private boolean gGm = true;
  private boolean gGn = false;
  private int gGo = 17;
  private int gGp = 0;
  private ImageView gGq = null;
  private Drawable gGr = null;
  private List gGs = new LinkedList();
  private String gmY = null;

  public KeyValuePreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public KeyValuePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public KeyValuePreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(k.aWC);
  }

  public final void aIf()
  {
    this.gGp = 4;
  }

  public final void aIg()
  {
    this.gGs.clear();
  }

  public final void aIh()
  {
    this.gGn = true;
    this.gGo = 49;
  }

  public final void ak(View paramView)
  {
    this.gGs.add(paramView);
  }

  public final void dB(boolean paramBoolean)
  {
    this.gGl = paramBoolean;
  }

  public final void dC(boolean paramBoolean)
  {
    this.gGm = paramBoolean;
  }

  public final void g(Drawable paramDrawable)
  {
    this.gGr = paramDrawable;
  }

  public final void h(Drawable paramDrawable)
  {
    this.gGk = paramDrawable;
  }

  public void onBindView(View paramView)
  {
    super.onBindView(paramView);
    this.ecB = ((TextView)paramView.findViewById(16908304));
    this.ecB.setSingleLine(this.gGl);
    if (this.gGm)
      setWidgetLayoutResource(k.aXe);
    TextView localTextView = (TextView)paramView.findViewById(16908310);
    if (!cj.hX(this.gmY))
      localTextView.setText(this.gmY);
    if (this.gGk != null)
      ((ImageView)paramView.findViewById(i.awk)).setImageDrawable(this.gGk);
    this.gGq = ((ImageView)paramView.findViewById(i.aww));
    if (this.gGr != null)
    {
      this.gGq.setVisibility(this.gGp);
      this.gGq.setImageDrawable(this.gGr);
      if (this.gGn)
      {
        LinearLayout localLinearLayout2 = (LinearLayout)paramView.findViewById(i.aqA);
        if (localLinearLayout2 != null)
          localLinearLayout2.setGravity(this.gGo);
      }
      if ((getKey() == null) || ((!getKey().equals("contact_info_weibo")) && (!getKey().equals("contact_info_friend_mobile")) && (!getKey().equals("contact_info_linkedin"))))
        break label334;
      this.ecB.setTextColor(a.i(getContext(), f.ZZ));
    }
    while (true)
    {
      if (this.gGs.size() <= 0)
        return;
      LinearLayout localLinearLayout1 = (LinearLayout)paramView.findViewById(i.aMz);
      localLinearLayout1.removeAllViews();
      Iterator localIterator = this.gGs.iterator();
      while (localIterator.hasNext())
      {
        View localView = (View)localIterator.next();
        ViewGroup localViewGroup = (ViewGroup)localView.getParent();
        if (localViewGroup != null)
          localViewGroup.removeView(localView);
        localLinearLayout1.addView(localView);
      }
      this.gGq.setVisibility(8);
      break;
      label334: if ((getKey() != null) && ((getKey().equals("contact_info_verifyuser")) || (getKey().equals("contact_info_user_desc"))))
      {
        this.ecB.setTextColor(a.i(getContext(), f.ZO));
      }
      else if ((getKey() != null) && (getKey().equals("contact_info_verifyuser_weibo")))
      {
        localTextView.setGravity(17);
        this.ecB.setTextColor(a.i(getContext(), f.ZZ));
      }
    }
  }

  protected View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    LayoutInflater localLayoutInflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(i.content);
    localViewGroup.removeAllViews();
    localLayoutInflater.inflate(k.aWO, localViewGroup);
    return localView;
  }

  public final void ws(String paramString)
  {
    this.gmY = paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.KeyValuePreference
 * JD-Core Version:    0.6.2
 */