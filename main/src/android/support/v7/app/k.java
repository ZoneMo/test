package android.support.v7.app;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.v4.app.v;
import android.support.v7.internal.widget.ActionBarContainer;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ActionBarOverlayLayout;
import android.support.v7.internal.widget.ActionBarView;
import android.support.v7.internal.widget.ScrollingTabContainerView;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.tencent.mm.b;
import com.tencent.mm.d;
import com.tencent.mm.i;
import java.util.ArrayList;

class k extends ActionBar
{
  private ArrayList bR = new ArrayList();
  private ActionBarActivity gZ;
  private l hA;
  private int hB = -1;
  private boolean hC;
  private ArrayList hD = new ArrayList();
  private int hE;
  private boolean hF;
  private int hG = 0;
  private boolean hH;
  private boolean hI;
  private boolean hJ;
  private boolean hK = true;
  private boolean hL;
  private a hM;
  private Context hs;
  private ActionBarOverlayLayout ht;
  private ActionBarContainer hu;
  private ViewGroup hv;
  private ActionBarView hw;
  private ActionBarContextView hx;
  private ActionBarContainer hy;
  private ScrollingTabContainerView hz;
  private Context mContext;
  final Handler mHandler = new Handler();

  public k(ActionBarActivity paramActionBarActivity, a parama)
  {
    this.gZ = paramActionBarActivity;
    this.mContext = paramActionBarActivity;
    this.hM = parama;
    ActionBarActivity localActionBarActivity = this.gZ;
    this.ht = ((ActionBarOverlayLayout)localActionBarActivity.findViewById(i.akM));
    if (this.ht != null)
      this.ht.a(this);
    this.hw = ((ActionBarView)localActionBarActivity.findViewById(i.akJ));
    this.hx = ((ActionBarContextView)localActionBarActivity.findViewById(i.akQ));
    this.hu = ((ActionBarContainer)localActionBarActivity.findViewById(i.akL));
    this.hv = ((ViewGroup)localActionBarActivity.findViewById(i.aNx));
    if (this.hv == null)
      this.hv = this.hu;
    this.hy = ((ActionBarContainer)localActionBarActivity.findViewById(i.aMi));
    if ((this.hw == null) || (this.hx == null) || (this.hu == null))
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
    this.hw.a(this.hx);
    int i;
    if (this.hw.cJ())
    {
      i = 1;
      this.hE = i;
      if ((0x4 & this.hw.getDisplayOptions()) == 0)
        break label359;
    }
    label359: for (int j = 1; ; j = 0)
    {
      if (j != 0)
        this.hC = true;
      android.support.v7.internal.view.a locala = android.support.v7.internal.view.a.d(this.mContext);
      boolean bool;
      if (!locala.bt())
      {
        bool = false;
        if (j == 0);
      }
      else
      {
        bool = true;
      }
      this.hw.setHomeButtonEnabled(bool);
      g(locala.br());
      setTitle(this.gZ.getTitle());
      return;
      i = 0;
      break;
    }
  }

  private void bk()
  {
    boolean bool1 = true;
    boolean bool2 = this.hH;
    boolean bool3 = this.hI;
    int i;
    if ((!this.hJ) && ((bool2) || (bool3)))
    {
      i = 0;
      if (i == 0)
        break label166;
      if (!this.hK)
      {
        this.hK = bool1;
        this.hv.clearAnimation();
        if (this.hv.getVisibility() != 0)
        {
          if (!bl())
            break label161;
          label71: if (bool1)
          {
            Animation localAnimation4 = AnimationUtils.loadAnimation(this.mContext, b.Ys);
            this.hv.startAnimation(localAnimation4);
          }
          this.hv.setVisibility(0);
          if ((this.hy != null) && (this.hy.getVisibility() != 0))
          {
            if (bool1)
            {
              Animation localAnimation3 = AnimationUtils.loadAnimation(this.mContext, b.Yr);
              this.hy.startAnimation(localAnimation3);
            }
            this.hy.setVisibility(0);
          }
        }
      }
    }
    label161: label166: 
    do
    {
      do
      {
        return;
        i = bool1;
        break;
        bool1 = false;
        break label71;
      }
      while (!this.hK);
      this.hK = false;
      this.hv.clearAnimation();
    }
    while (this.hv.getVisibility() == 8);
    if (bl());
    while (true)
    {
      if (bool1)
      {
        Animation localAnimation2 = AnimationUtils.loadAnimation(this.mContext, b.Yu);
        this.hv.startAnimation(localAnimation2);
      }
      this.hv.setVisibility(8);
      if ((this.hy == null) || (this.hy.getVisibility() == 8))
        break;
      if (bool1)
      {
        Animation localAnimation1 = AnimationUtils.loadAnimation(this.mContext, b.Yt);
        this.hy.startAnimation(localAnimation1);
      }
      this.hy.setVisibility(8);
      return;
      bool1 = false;
    }
  }

  private void g(boolean paramBoolean)
  {
    boolean bool1 = true;
    this.hF = paramBoolean;
    boolean bool2;
    label46: label65: ActionBarView localActionBarView;
    if (!this.hF)
    {
      this.hw.b(null);
      this.hu.a(this.hz);
      if (this.hw.getNavigationMode() != 2)
        break label111;
      bool2 = bool1;
      if (this.hz != null)
      {
        if (!bool2)
          break label116;
        this.hz.setVisibility(0);
      }
      localActionBarView = this.hw;
      if ((this.hF) || (!bool2))
        break label128;
    }
    while (true)
    {
      localActionBarView.u(bool1);
      return;
      this.hu.a(null);
      this.hw.b(this.hz);
      break;
      label111: bool2 = false;
      break label46;
      label116: this.hz.setVisibility(8);
      break label65;
      label128: bool1 = false;
    }
  }

  private void setDisplayOptions(int paramInt1, int paramInt2)
  {
    int i = this.hw.getDisplayOptions();
    if ((paramInt2 & 0x4) != 0)
      this.hC = true;
    this.hw.setDisplayOptions(paramInt1 & paramInt2 | i & (paramInt2 ^ 0xFFFFFFFF));
  }

  public final void a(c paramc)
  {
    boolean bool = this.bR.isEmpty();
    ScrollingTabContainerView localScrollingTabContainerView;
    int i;
    l locall;
    if (this.hz == null)
    {
      localScrollingTabContainerView = new ScrollingTabContainerView(this.mContext);
      if (this.hF)
      {
        localScrollingTabContainerView.setVisibility(0);
        this.hw.b(localScrollingTabContainerView);
        this.hz = localScrollingTabContainerView;
      }
    }
    else
    {
      this.hz.b(paramc, bool);
      i = this.bR.size();
      locall = (l)paramc;
      if (locall.bm() != null)
        break label131;
      throw new IllegalStateException("Action Bar Tab must have a Callback");
    }
    if (this.hw.getNavigationMode() == 2)
      localScrollingTabContainerView.setVisibility(0);
    while (true)
    {
      this.hu.a(localScrollingTabContainerView);
      break;
      localScrollingTabContainerView.setVisibility(8);
    }
    label131: locall.x(i);
    this.bR.add(i, locall);
    int j = this.bR.size();
    for (int k = i + 1; k < j; k++)
      ((l)this.bR.get(k)).x(k);
    if (bool)
      b(paramc);
  }

  public final void aR()
  {
    this.hw.aR();
  }

  public final void aS()
  {
    setDisplayOptions(0, 2);
  }

  public final void aT()
  {
    setDisplayOptions(0, 8);
  }

  public final void aU()
  {
    setDisplayOptions(16, 16);
  }

  public final c aV()
  {
    return new l(this);
  }

  public final void b(c paramc)
  {
    int i = -1;
    if (this.hw.getNavigationMode() != 2)
    {
      if (paramc != null)
        i = paramc.getPosition();
      this.hB = i;
    }
    while (true)
    {
      return;
      v localv = this.gZ.w().x().b();
      if (this.hA == paramc)
        if (this.hA != null)
        {
          this.hA.bm();
          this.hz.O(paramc.getPosition());
        }
      while (!localv.isEmpty())
      {
        localv.commit();
        return;
        ScrollingTabContainerView localScrollingTabContainerView = this.hz;
        if (paramc != null)
          i = paramc.getPosition();
        localScrollingTabContainerView.N(i);
        if (this.hA != null)
          this.hA.bm();
        this.hA = ((l)paramc);
        if (this.hA != null)
          this.hA.bm();
      }
    }
  }

  public final void bc()
  {
    g(android.support.v7.internal.view.a.d(this.mContext).br());
  }

  final void bi()
  {
    if (!this.hJ)
    {
      this.hJ = true;
      bk();
    }
  }

  final void bj()
  {
    if (this.hJ)
    {
      this.hJ = false;
      bk();
    }
  }

  boolean bl()
  {
    return this.hL;
  }

  public final View getCustomView()
  {
    return this.hw.cM();
  }

  public final int getDisplayOptions()
  {
    return this.hw.getDisplayOptions();
  }

  public final int getHeight()
  {
    return this.hu.getHeight();
  }

  public final Context getThemedContext()
  {
    int i;
    if (this.hs == null)
    {
      TypedValue localTypedValue = new TypedValue();
      this.mContext.getTheme().resolveAttribute(d.actionBarWidgetTheme, localTypedValue, true);
      i = localTypedValue.resourceId;
      if (i == 0)
        break label61;
    }
    label61: for (this.hs = new ContextThemeWrapper(this.mContext, i); ; this.hs = this.mContext)
      return this.hs;
  }

  public final void h(boolean paramBoolean)
  {
    this.hL = paramBoolean;
    if (!paramBoolean)
    {
      this.hv.clearAnimation();
      if (this.hy != null)
        this.hy.clearAnimation();
    }
  }

  public void hide()
  {
    if (!this.hH)
    {
      this.hH = true;
      bk();
    }
  }

  public final boolean isShowing()
  {
    return this.hK;
  }

  public final void setBackgroundDrawable(Drawable paramDrawable)
  {
    this.hu.b(paramDrawable);
  }

  public final void setCustomView(int paramInt)
  {
    View localView = LayoutInflater.from(getThemedContext()).inflate(paramInt, this.hw, false);
    this.hw.G(localView);
  }

  public final void setDisplayHomeAsUpEnabled(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 4; ; i = 0)
    {
      setDisplayOptions(i, 4);
      return;
    }
  }

  public final void setLogo(int paramInt)
  {
    this.hw.setLogo(paramInt);
  }

  public final void setSubtitle(int paramInt)
  {
    setSubtitle(this.mContext.getString(paramInt));
  }

  public final void setSubtitle(CharSequence paramCharSequence)
  {
    this.hw.setSubtitle(paramCharSequence);
  }

  public final void setTitle(int paramInt)
  {
    setTitle(this.mContext.getString(paramInt));
  }

  public final void setTitle(CharSequence paramCharSequence)
  {
    this.hw.setTitle(paramCharSequence);
  }

  public void show()
  {
    if (this.hH)
    {
      this.hH = false;
      bk();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.app.k
 * JD-Core Version:    0.6.2
 */