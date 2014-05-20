package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup.LayoutParams;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RadioButton;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.p;

public class ListMenuItemView extends LinearLayout
  implements ah
{
  private LayoutInflater ge;
  private ImageView jZ;
  private s jc;
  private RadioButton ka;
  private TextView kb;
  private CheckBox kc;
  private TextView kd;
  private Drawable ke;
  private int kf;
  private Context kg;
  private boolean kh;
  private int ki;
  private boolean kj;
  private Context mContext;

  public ListMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ListMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, p.bJt, paramInt, 0);
    this.ke = localTypedArray.getDrawable(5);
    this.kf = localTypedArray.getResourceId(1, -1);
    this.kh = localTypedArray.getBoolean(7, false);
    this.kg = paramContext;
    localTypedArray.recycle();
  }

  private LayoutInflater bS()
  {
    if (this.ge == null)
      this.ge = LayoutInflater.from(this.mContext);
    return this.ge;
  }

  public final void a(s params)
  {
    this.jc = params;
    this.ki = 0;
    int i;
    label60: Object localObject1;
    Object localObject2;
    label149: int m;
    label174: label213: int j;
    label242: int k;
    label308: Drawable localDrawable2;
    if (params.isVisible())
    {
      i = 0;
      setVisibility(i);
      CharSequence localCharSequence = params.a(this);
      if (localCharSequence == null)
        break label441;
      this.kb.setText(localCharSequence);
      if (this.kb.getVisibility() != 0)
        this.kb.setVisibility(0);
      boolean bool1 = params.isCheckable();
      if ((bool1) || (this.ka != null) || (this.kc != null))
      {
        if (!this.jc.cr())
          break label465;
        if (this.ka == null)
        {
          this.ka = ((RadioButton)bS().inflate(k.aRZ, this, false));
          addView(this.ka);
        }
        RadioButton localRadioButton2 = this.ka;
        CheckBox localCheckBox2 = this.kc;
        localObject1 = localRadioButton2;
        localObject2 = localCheckBox2;
        if (!bool1)
          break label529;
        ((CompoundButton)localObject1).setChecked(this.jc.isChecked());
        if (!bool1)
          break label522;
        m = 0;
        if (((CompoundButton)localObject1).getVisibility() != m)
          ((CompoundButton)localObject1).setVisibility(m);
        if ((localObject2 != null) && (((CompoundButton)localObject2).getVisibility() != 8))
          ((CompoundButton)localObject2).setVisibility(8);
      }
      boolean bool2 = params.cq();
      params.co();
      if ((!bool2) || (!this.jc.cq()))
        break label564;
      j = 0;
      if (j == 0)
        this.kd.setText(this.jc.cp());
      if (this.kd.getVisibility() != j)
        this.kd.setVisibility(j);
      Drawable localDrawable1 = params.getIcon();
      if ((!this.jc.cs()) && (!this.kj))
        break label571;
      k = 1;
      if (((k != 0) || (this.kh)) && ((this.jZ != null) || (localDrawable1 != null) || (this.kh)))
      {
        if (this.jZ == null)
        {
          this.jZ = ((ImageView)bS().inflate(k.aRX, this, false));
          addView(this.jZ, 0);
        }
        if ((localDrawable1 == null) && (!this.kh))
          break label583;
        ImageView localImageView = this.jZ;
        if (k == 0)
          break label577;
        localDrawable2 = localDrawable1;
        label401: localImageView.setImageDrawable(localDrawable2);
        if (this.jZ.getVisibility() != 0)
          this.jZ.setVisibility(0);
      }
    }
    while (true)
    {
      setEnabled(params.isEnabled());
      return;
      i = 8;
      break;
      label441: if (this.kb.getVisibility() == 8)
        break label60;
      this.kb.setVisibility(8);
      break label60;
      label465: if (this.kc == null)
      {
        this.kc = ((CheckBox)bS().inflate(k.aRW, this, false));
        addView(this.kc);
      }
      CheckBox localCheckBox1 = this.kc;
      RadioButton localRadioButton1 = this.ka;
      localObject1 = localCheckBox1;
      localObject2 = localRadioButton1;
      break label149;
      label522: m = 8;
      break label174;
      label529: if (this.kc != null)
        this.kc.setVisibility(8);
      if (this.ka == null)
        break label213;
      this.ka.setVisibility(8);
      break label213;
      label564: j = 8;
      break label242;
      label571: k = 0;
      break label308;
      label577: localDrawable2 = null;
      break label401;
      label583: this.jZ.setVisibility(8);
    }
  }

  public final s bB()
  {
    return this.jc;
  }

  public final boolean bC()
  {
    return false;
  }

  public final void bR()
  {
    this.kj = true;
    this.kh = true;
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    setBackgroundDrawable(this.ke);
    this.kb = ((TextView)findViewById(i.title));
    if (this.kf != -1)
      this.kb.setTextAppearance(this.kg, this.kf);
    this.kd = ((TextView)findViewById(i.aKA));
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if ((this.jZ != null) && (this.kh))
    {
      ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
      LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)this.jZ.getLayoutParams();
      if ((localLayoutParams.height > 0) && (localLayoutParams1.width <= 0))
        localLayoutParams1.width = localLayoutParams.height;
    }
    super.onMeasure(paramInt1, paramInt2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.ListMenuItemView
 * JD-Core Version:    0.6.2
 */