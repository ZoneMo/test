package android.support.v7.widget;

import android.app.SearchableInfo;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnKeyListener;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView.OnEditorActionListener;
import java.util.WeakHashMap;

public class SearchView extends LinearLayout
  implements android.support.v7.a.b
{
  static final m qk = new m();
  private int oP;
  private o pI;
  private n pJ;
  private View.OnFocusChangeListener pK;
  private p pL;
  private View.OnClickListener pM;
  private boolean pN;
  private boolean pO;
  private android.support.v4.widget.a pP;
  private View pQ;
  private View pR;
  private View pS;
  private View pT;
  private ImageView pU;
  private View pV;
  private View pW;
  private SearchView.SearchAutoComplete pX;
  private View pY;
  private ImageView pZ;
  private boolean qa;
  private CharSequence qb;
  private boolean qc;
  private boolean qd;
  private CharSequence qe;
  private CharSequence qf;
  private boolean qg;
  private int qh;
  private SearchableInfo qi;
  private Bundle qj;
  private Runnable ql = new a(this);
  private Runnable qm = new e(this);
  private Runnable qn = new f(this);
  private final Intent qo;
  private final Intent qp;
  private final WeakHashMap qr = new WeakHashMap();
  private final View.OnClickListener qs = new j(this);
  View.OnKeyListener qt = new k(this);
  private final TextView.OnEditorActionListener qu = new l(this);
  private final AdapterView.OnItemClickListener qv = new b(this);
  private final AdapterView.OnItemSelectedListener qw = new c(this);
  private TextWatcher qx = new d(this);

  public SearchView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(com.tencent.mm.k.aSb, this, true);
    this.pQ = findViewById(com.tencent.mm.i.aIp);
    this.pX = ((SearchView.SearchAutoComplete)findViewById(com.tencent.mm.i.aIz));
    this.pX.q(this);
    this.pV = findViewById(com.tencent.mm.i.aIr);
    this.pS = findViewById(com.tencent.mm.i.aIw);
    this.pT = findViewById(com.tencent.mm.i.aMw);
    this.pR = findViewById(com.tencent.mm.i.aIt);
    this.pU = ((ImageView)findViewById(com.tencent.mm.i.aIq));
    this.pW = findViewById(com.tencent.mm.i.aIC);
    this.pZ = ((ImageView)findViewById(com.tencent.mm.i.aIv));
    this.pQ.setOnClickListener(this.qs);
    this.pU.setOnClickListener(this.qs);
    this.pR.setOnClickListener(this.qs);
    this.pW.setOnClickListener(this.qs);
    this.pX.setOnClickListener(this.qs);
    this.pX.addTextChangedListener(this.qx);
    this.pX.setOnEditorActionListener(this.qu);
    this.pX.setOnItemClickListener(this.qv);
    this.pX.setOnItemSelectedListener(this.qw);
    this.pX.setOnKeyListener(this.qt);
    this.pX.setOnFocusChangeListener(new g(this));
    TypedArray localTypedArray1 = paramContext.obtainStyledAttributes(paramAttributeSet, com.tencent.mm.p.bJx, 0, 0);
    boolean bool1 = localTypedArray1.getBoolean(3, true);
    if (this.pN != bool1)
    {
      this.pN = bool1;
      y(bool1);
      dw();
    }
    int i = localTypedArray1.getDimensionPixelSize(0, -1);
    if (i != -1)
    {
      this.oP = i;
      requestLayout();
    }
    CharSequence localCharSequence = localTypedArray1.getText(4);
    if (!TextUtils.isEmpty(localCharSequence))
    {
      this.qb = localCharSequence;
      dw();
    }
    int j = localTypedArray1.getInt(2, -1);
    if (j != -1)
      this.pX.setImeOptions(j);
    int k = localTypedArray1.getInt(1, -1);
    if (k != -1)
      this.pX.setInputType(k);
    localTypedArray1.recycle();
    TypedArray localTypedArray2 = paramContext.obtainStyledAttributes(paramAttributeSet, com.tencent.mm.p.bJA, 0, 0);
    boolean bool2 = localTypedArray2.getBoolean(0, true);
    localTypedArray2.recycle();
    setFocusable(bool2);
    this.qo = new Intent("android.speech.action.WEB_SEARCH");
    this.qo.addFlags(268435456);
    this.qo.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
    this.qp = new Intent("android.speech.action.RECOGNIZE_SPEECH");
    this.qp.addFlags(268435456);
    this.pY = findViewById(this.pX.getDropDownAnchor());
    if (this.pY != null)
    {
      if (Build.VERSION.SDK_INT < 11)
        break label688;
      this.pY.addOnLayoutChangeListener(new h(this));
    }
    while (true)
    {
      y(this.pN);
      dw();
      return;
      label688: this.pY.getViewTreeObserver().addOnGlobalLayoutListener(new i(this));
    }
  }

  private void A(boolean paramBoolean)
  {
    if (paramBoolean)
      post(this.ql);
    InputMethodManager localInputMethodManager;
    do
    {
      return;
      removeCallbacks(this.ql);
      localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
    }
    while (localInputMethodManager == null);
    localInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
  }

  private void B(boolean paramBoolean)
  {
    int i;
    if ((this.qd) && (!this.pO) && (paramBoolean))
    {
      i = 0;
      this.pR.setVisibility(8);
    }
    while (true)
    {
      this.pW.setVisibility(i);
      return;
      i = 8;
    }
  }

  private boolean R(int paramInt)
  {
    boolean bool1;
    Intent localIntent;
    if (this.pL != null)
    {
      boolean bool2 = this.pL.dC();
      bool1 = false;
      if (bool2);
    }
    else
    {
      Cursor localCursor = this.pP.getCursor();
      if ((localCursor != null) && (localCursor.moveToPosition(paramInt)))
      {
        localIntent = a(localCursor);
        if (localIntent == null);
      }
    }
    try
    {
      getContext().startActivity(localIntent);
      A(false);
      this.pX.dismissDropDown();
      bool1 = true;
      return bool1;
    }
    catch (RuntimeException localRuntimeException)
    {
      while (true)
        new StringBuilder("Failed launch activity: ").append(localIntent).toString();
    }
  }

  private Intent a(Cursor paramCursor)
  {
    try
    {
      str1 = q.a(paramCursor, "suggest_intent_action");
      if (str1 == null)
      {
        str1 = this.qi.getSuggestIntentAction();
        break label197;
        str3 = q.a(paramCursor, "suggest_intent_data");
        if (str3 == null)
          str3 = this.qi.getSuggestIntentData();
        if (str3 == null)
          break label210;
        String str4 = q.a(paramCursor, "suggest_intent_data_id");
        if (str4 == null)
          break label210;
        str3 = str3 + "/" + Uri.encode(str4);
        break label210;
        while (true)
        {
          String str5 = q.a(paramCursor, "suggest_intent_query");
          return a(str2, (Uri)localObject, q.a(paramCursor, "suggest_intent_extra_data"), str5);
          Uri localUri = Uri.parse(str3);
          localObject = localUri;
        }
      }
    }
    catch (RuntimeException localRuntimeException1)
    {
      while (true)
      {
        String str1;
        String str3;
        Object localObject;
        try
        {
          int j = paramCursor.getPosition();
          i = j;
          new StringBuilder("Search suggestions cursor at row ").append(i).append(" returned exception.").toString();
          return null;
        }
        catch (RuntimeException localRuntimeException2)
        {
          int i = -1;
          continue;
        }
        label197: 
        do
        {
          str2 = str1;
          break;
        }
        while (str1 != null);
        String str2 = "android.intent.action.SEARCH";
        continue;
        label210: if (str3 == null)
          localObject = null;
      }
    }
  }

  private Intent a(String paramString1, Uri paramUri, String paramString2, String paramString3)
  {
    Intent localIntent = new Intent(paramString1);
    localIntent.addFlags(268435456);
    if (paramUri != null)
      localIntent.setData(paramUri);
    localIntent.putExtra("user_query", this.qf);
    if (paramString3 != null)
      localIntent.putExtra("query", paramString3);
    if (paramString2 != null)
      localIntent.putExtra("intent_extra_data_key", paramString2);
    if (this.qj != null)
      localIntent.putExtra("app_data", this.qj);
    localIntent.setComponent(this.qi.getSearchActivity());
    return localIntent;
  }

  private int dr()
  {
    return getContext().getResources().getDimensionPixelSize(com.tencent.mm.g.abf);
  }

  private boolean ds()
  {
    return ((this.qa) || (this.qd)) && (!this.pO);
  }

  private void dt()
  {
    int i = 8;
    if ((ds()) && ((this.pR.getVisibility() == 0) || (this.pW.getVisibility() == 0)))
      i = 0;
    this.pT.setVisibility(i);
  }

  private void du()
  {
    int i = 1;
    int j;
    label35: int k;
    label47: Drawable localDrawable;
    if (!TextUtils.isEmpty(this.pX.getText()))
    {
      j = i;
      if ((j == 0) && ((!this.pN) || (this.qg)))
        break label85;
      ImageView localImageView = this.pU;
      k = 0;
      if (i == 0)
        break label90;
      localImageView.setVisibility(k);
      localDrawable = this.pU.getDrawable();
      if (j == 0)
        break label97;
    }
    label85: label90: label97: for (int[] arrayOfInt = ENABLED_STATE_SET; ; arrayOfInt = EMPTY_STATE_SET)
    {
      localDrawable.setState(arrayOfInt);
      return;
      j = 0;
      break;
      i = 0;
      break label35;
      k = 8;
      break label47;
    }
  }

  private void dv()
  {
    post(this.qm);
  }

  private void dw()
  {
    if (this.qb != null)
      this.pX.setHint(h(this.qb));
    String str;
    do
    {
      return;
      if (this.qi == null)
        break;
      int i = this.qi.getHintId();
      str = null;
      if (i != 0)
        str = getContext().getString(i);
    }
    while (str == null);
    this.pX.setHint(h(str));
    return;
    this.pX.setHint(h(""));
  }

  private void dx()
  {
    y(false);
    this.pX.requestFocus();
    A(true);
    if (this.pM != null)
      this.pM.onClick(this);
  }

  private void dz()
  {
    qk.a(this.pX);
    qk.b(this.pX);
  }

  static boolean e(Context paramContext)
  {
    return paramContext.getResources().getConfiguration().orientation == 2;
  }

  private CharSequence h(CharSequence paramCharSequence)
  {
    if (!this.pN)
      return paramCharSequence;
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("   ");
    localSpannableStringBuilder.append(paramCharSequence);
    Resources localResources = getContext().getResources();
    TypedValue localTypedValue = new TypedValue();
    getContext().getTheme().resolveAttribute(com.tencent.mm.d.ZC, localTypedValue, true);
    Drawable localDrawable = localResources.getDrawable(localTypedValue.resourceId);
    int i = (int)(1.25D * this.pX.getTextSize());
    localDrawable.setBounds(0, 0, i, i);
    localSpannableStringBuilder.setSpan(new ImageSpan(localDrawable), 1, 2, 33);
    return localSpannableStringBuilder;
  }

  private void i(CharSequence paramCharSequence)
  {
    this.pX.setText(paramCharSequence);
    SearchView.SearchAutoComplete localSearchAutoComplete = this.pX;
    if (TextUtils.isEmpty(paramCharSequence));
    for (int i = 0; ; i = paramCharSequence.length())
    {
      localSearchAutoComplete.setSelection(i);
      return;
    }
  }

  private void i(String paramString)
  {
    Intent localIntent = a("android.intent.action.SEARCH", null, null, paramString);
    getContext().startActivity(localIntent);
  }

  private void y(boolean paramBoolean)
  {
    boolean bool1 = true;
    int i = 8;
    this.pO = paramBoolean;
    int j;
    boolean bool2;
    label33: int k;
    if (paramBoolean)
    {
      j = 0;
      if (TextUtils.isEmpty(this.pX.getText()))
        break label112;
      bool2 = bool1;
      this.pQ.setVisibility(j);
      z(bool2);
      View localView = this.pV;
      if (!paramBoolean)
        break label118;
      k = i;
      label61: localView.setVisibility(k);
      ImageView localImageView = this.pZ;
      if (!this.pN)
        break label124;
      label81: localImageView.setVisibility(i);
      du();
      if (bool2)
        break label129;
    }
    while (true)
    {
      B(bool1);
      dt();
      return;
      j = i;
      break;
      label112: bool2 = false;
      break label33;
      label118: k = 0;
      break label61;
      label124: i = 0;
      break label81;
      label129: bool1 = false;
    }
  }

  private void z(boolean paramBoolean)
  {
    int i = 8;
    if ((this.qa) && (ds()) && (hasFocus()) && ((paramBoolean) || (!this.qd)))
      i = 0;
    this.pR.setVisibility(i);
  }

  public void clearFocus()
  {
    this.qc = true;
    A(false);
    super.clearFocus();
    this.pX.clearFocus();
    this.qc = false;
  }

  final void dy()
  {
    y(this.pO);
    dv();
    if (this.pX.hasFocus())
      dz();
  }

  final void g(CharSequence paramCharSequence)
  {
    i(paramCharSequence);
  }

  public final void onActionViewCollapsed()
  {
    clearFocus();
    y(true);
    this.pX.setImeOptions(this.qh);
    this.qg = false;
  }

  public final void onActionViewExpanded()
  {
    if (this.qg)
      return;
    this.qg = true;
    this.qh = this.pX.getImeOptions();
    this.pX.setImeOptions(0x2000000 | this.qh);
    this.pX.setText("");
    dx();
  }

  protected void onDetachedFromWindow()
  {
    removeCallbacks(this.qm);
    post(this.qn);
    super.onDetachedFromWindow();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.qi == null)
      return false;
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.pO)
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt1);
    switch (i)
    {
    default:
    case -2147483648:
    case 1073741824:
    case 0:
    }
    while (true)
    {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(j, 1073741824), paramInt2);
      return;
      if (this.oP > 0)
      {
        j = Math.min(this.oP, j);
      }
      else
      {
        j = Math.min(dr(), j);
        continue;
        if (this.oP > 0)
        {
          j = Math.min(this.oP, j);
          continue;
          if (this.oP > 0)
            j = this.oP;
          else
            j = dr();
        }
      }
    }
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    dv();
  }

  public boolean requestFocus(int paramInt, Rect paramRect)
  {
    if (this.qc);
    while (!isFocusable())
      return false;
    if (!this.pO)
    {
      boolean bool = this.pX.requestFocus(paramInt, paramRect);
      if (bool)
        y(false);
      return bool;
    }
    return super.requestFocus(paramInt, paramRect);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.SearchView
 * JD-Core Version:    0.6.2
 */