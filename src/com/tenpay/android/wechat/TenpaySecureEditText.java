package com.tenpay.android.wechat;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ContextMenu;
import android.widget.EditText;
import com.tenpay.android.jni.Encrypt;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class TenpaySecureEditText extends EditText
{
  public static final int AREA_ID_CARD_TYPE_HUIXIANG = 5;
  public static final int AREA_ID_CARD_TYPE_SHENFEN = 1;
  public static final int AREA_ID_CARD_TYPE_TAIBAO = 9;
  private static String b;
  private static int k = 7;
  private static int l = -500;
  private static int m = 6;
  private static int n = 14;
  private static int o = 15;
  private static int p = 4;
  TenpaySecureEditText.EditState a = TenpaySecureEditText.EditState.DEFAULT;
  private boolean c;
  private String d;
  private Paint e;
  private OnPasswdInputListener f;
  private Paint g;
  private float h;
  private Drawable i;
  private boolean j;

  public TenpaySecureEditText(Context paramContext)
  {
    this(paramContext, null);
  }

  public TenpaySecureEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }

  public TenpaySecureEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }

  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    this.h = getResources().getDisplayMetrics().density;
    this.a = TenpaySecureEditText.EditState.DEFAULT;
    if (paramAttributeSet != null)
    {
      int[] arrayOfInt = TenpayUtil.getResourceDeclareStyleableIntArray(paramContext, "TenpaySecureEditText");
      if (arrayOfInt != null)
      {
        TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, arrayOfInt);
        if (localTypedArray != null)
        {
          setIsPasswordFormat(localTypedArray.getBoolean(TenpayUtil.getResourceDeclareStyleableIndex(paramContext, "TenpaySecureEditText_isPassword"), false));
          setIsBankcardFormat(localTypedArray.getBoolean(TenpayUtil.getResourceDeclareStyleableIndex(paramContext, "TenpaySecureEditText_isBankcard"), false));
          setIsValidThru(localTypedArray.getBoolean(TenpayUtil.getResourceDeclareStyleableIndex(paramContext, "TenpaySecureEditText_isValidThru"), false));
          setBankcardTailNum(localTypedArray.getString(TenpayUtil.getResourceDeclareStyleableIndex(paramContext, "TenpaySecureEditText_bankcardTailNum")));
          int i1 = localTypedArray.getResourceId(TenpayUtil.getResourceDeclareStyleableIndex(paramContext, "TenpaySecureEditText_rightClearDrawable"), 0);
          if (i1 != 0)
            setClearBtnDrawableId(i1);
          localTypedArray.recycle();
        }
      }
    }
  }

  private void a(Canvas paramCanvas)
  {
    int i2;
    int i3;
    int i4;
    if ((TenpaySecureEditText.EditState.PASSWORD == this.a) && (this.g != null))
    {
      int i1 = getWidth();
      i2 = getHeight();
      i3 = i1 / m;
      i4 = getText().length();
    }
    for (int i5 = 0; ; i5++)
    {
      if (i5 >= i4)
        return;
      paramCanvas.drawCircle(i3 / 2 + i5 * i3, i2 / 2, k * this.h, this.g);
    }
  }

  private boolean a(String paramString1, String paramString2)
  {
    boolean bool1 = false;
    if (paramString2 != null);
    try
    {
      boolean bool2 = Pattern.compile(paramString2).matcher(paramString1).matches();
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  private void b(Canvas paramCanvas)
  {
    if ((TenpaySecureEditText.EditState.BANKCARD_WITH_TAILNUM == this.a) && (this.j))
    {
      int i1 = getBaseline();
      if (i1 == -1)
        i1 = 44;
      paramCanvas.drawText(this.d, o * this.h + getPaint().measureText(getText().toString()), i1, this.e);
    }
  }

  private String getInputText()
  {
    String str1 = getText().toString().trim();
    String str2;
    if ((str1 == null) || (str1.length() == 0))
      str2 = null;
    do
    {
      do
      {
        return str2;
        switch (a()[this.a.ordinal()])
        {
        default:
          return str1.replaceAll(" ", "");
        case 3:
          return str1.replaceAll(" ", "");
        case 4:
          str2 = str1.replaceAll(" ", "");
        case 5:
        }
      }
      while ((this.d == null) || (this.d.length() <= 0));
      return str2 + this.d;
      str2 = str1.replaceAll("/", "");
    }
    while ((str2 == null) || (str2.length() != p));
    String str3 = str2.substring(0, 2);
    return str2.substring(2) + str3;
  }

  public static void setSalt(String paramString)
  {
    b = paramString;
  }

  public void ClearInput()
  {
    setText("");
  }

  public String get3DesEncrptData()
  {
    String str = getInputText();
    if ((str == null) || (str.length() == 0))
      return null;
    return new Encrypt().a(str);
  }

  public String get3DesVerifyCode()
  {
    String str = getInputText();
    if ((str == null) || (str.length() == 0))
      return null;
    return new Encrypt().b(str);
  }

  public String getEncryptDataWithHash(boolean paramBoolean)
  {
    String str = getInputText();
    if ((str == null) || (str.length() == 0))
      return null;
    if (paramBoolean)
      str = TenpayUtil.md5HexDigest(str);
    Encrypt localEncrypt = new Encrypt();
    if (b != null)
      localEncrypt.c(b);
    return localEncrypt.d(str);
  }

  public int getInputLength()
  {
    String str = getInputText();
    if (str == null)
      return 0;
    return str.length();
  }

  public boolean isAreaIDCardNum(int paramInt)
  {
    String str1 = getText().toString().trim();
    if ((str1 == null) || (str1.length() == 0));
    String str2;
    do
    {
      return false;
      str2 = str1.replaceAll(" ", "");
      switch (paramInt)
      {
      default:
        return true;
      case 1:
        return isUserIdNum();
      case 5:
      case 9:
      }
    }
    while (str2.length() != 11);
    return a(str2, "^[HMhm]\\d{10}$");
    return a(str2, "^\\d{10}$|^\\d{10}\\([A-Za-z]\\)$|^\\d{10}\\(\\d{2}\\)$");
  }

  public boolean isBankcardNum()
  {
    return getInputLength() >= n;
  }

  public boolean isMatchPattern(String paramString)
  {
    boolean bool1 = false;
    if (paramString != null);
    try
    {
      String str = getInputText();
      boolean bool2 = Pattern.compile(paramString).matcher(str).matches();
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public boolean isPhoneNum()
  {
    return getText().toString().trim().length() == 11;
  }

  public boolean isUserIdNum()
  {
    String str = getText().toString().trim();
    if (getInputLength() == 15)
      return isMatchPattern("^\\d{15}$");
    return TenpayUtil.invalidateID(str);
  }

  public boolean isValidThru()
  {
    return isMatchPattern("[1-9][0-9]0[1-9]$|[1-9][0-9]1[0-2]$");
  }

  protected void onCreateContextMenu(ContextMenu paramContextMenu)
  {
    if (((0x80 & getInputType()) <= 0) && (TenpaySecureEditText.EditState.PASSWORD != this.a))
      super.onCreateContextMenu(paramContextMenu);
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    a(paramCanvas);
    b(paramCanvas);
  }

  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    int i1 = 0;
    super.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
    String str1 = getText().toString();
    boolean bool;
    if ((str1 != null) && (str1.length() > 0))
    {
      bool = true;
      this.j = bool;
      if ((isFocused()) && (this.i != null) && (TenpaySecureEditText.EditState.PASSWORD != this.a))
      {
        if (!getText().toString().equals(""))
          break label175;
        setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], null, getCompoundDrawables()[3]);
      }
      if (this.a == null);
    }
    while (true)
    {
      label175: int i4;
      int i5;
      try
      {
        int i2 = a()[this.a.ordinal()];
        int i7;
        switch (i2)
        {
        case 1:
        default:
          return;
          bool = false;
          break;
          setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], this.i, getCompoundDrawables()[3]);
          break;
        case 2:
          if ((str1.length() != m) || (this.f == null))
            continue;
          this.f.onDone();
          return;
        case 3:
        case 4:
          if (!this.c)
          {
            int i6 = paramInt1 + paramInt3;
            if (str1.length() <= 0)
              continue;
            if (i6 > str1.length())
              continue;
            String str8 = str1.substring(0, i6);
            String str9 = str8.replaceAll(" ", "");
            i7 = str8.length() - str9.length();
            String str3 = str1.replaceAll(" ", "");
            StringBuffer localStringBuffer = new StringBuffer();
            int i8 = str3.length();
            String str4;
            if (i1 + 4 >= i8)
            {
              localStringBuffer.append(str3.substring(i1));
              str4 = localStringBuffer.toString();
              if (i6 <= str4.length())
              {
                String str6 = str4.substring(0, i6);
                String str7 = str6.replaceAll(" ", "");
                i9 = str6.length() - str7.length();
                int i10 = i9 + i6 - i7;
                this.c = true;
                setText(str4);
                setSelection(i10);
              }
            }
            else
            {
              localStringBuffer.append(str3.substring(i1, i1 + 4));
              localStringBuffer.append(" ");
              i1 += 4;
              continue;
            }
            String str5 = str4.replaceAll(" ", "");
            int i9 = str4.length() - str5.length();
            continue;
          }
          this.c = false;
          return;
        case 5:
          if (!this.c)
          {
            int i3 = str1.length();
            if ((i3 == 0) || (i3 == 1))
              continue;
            String str2 = str1.replace("/", "");
            if ((i3 == 2) && (str1.contains("/")))
            {
              i4 = getSelectionStart();
              this.c = true;
              setText(str2);
              if (i3 == 2)
              {
                if (!str1.contains("/"))
                  break label684;
                setSelection(1);
              }
            }
            else
            {
              StringBuilder localStringBuilder = new StringBuilder();
              localStringBuilder.append(str2.substring(0, 2));
              localStringBuilder.append("/");
              if (str2.length() > 2)
                localStringBuilder.append(str2.substring(2));
              str2 = localStringBuilder.toString();
              continue;
              setSelection(i5);
              return;
            }
            setSelection(i4);
            return;
          }
          this.c = false;
          return;
          i7 = 0;
          continue;
        }
      }
      catch (Exception localException)
      {
        return;
      }
      label684: if (i4 == 2)
        if (paramInt3 > paramInt2)
          i5 = 3;
        else
          i5 = 2;
    }
  }

  public boolean onTextContextMenuItem(int paramInt)
  {
    if (((0x80 & getInputType()) > 0) || (TenpaySecureEditText.EditState.PASSWORD == this.a))
      return true;
    return super.onTextContextMenuItem(paramInt);
  }

  public void setBankcardTailNum(String paramString)
  {
    this.d = paramString;
    if ((paramString != null) && (paramString.length() > 0))
    {
      this.a = TenpaySecureEditText.EditState.BANKCARD_WITH_TAILNUM;
      this.e = new Paint();
      this.e.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
      this.e.setAntiAlias(true);
      this.e.setTextSize(getTextSize());
      this.e.setColor(-16777216);
    }
  }

  public void setClearBtnDrawableId(int paramInt)
  {
    try
    {
      this.i = getResources().getDrawable(paramInt);
      if (this.i != null)
      {
        this.i.setBounds(0, 0, this.i.getIntrinsicWidth(), this.i.getIntrinsicHeight());
        setOnFocusChangeListener(new TenpaySecureEditText.1(this));
        setOnTouchListener(new TenpaySecureEditText.2(this));
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
        this.i = null;
      setOnFocusChangeListener(new TenpaySecureEditText.3(this));
      setOnTouchListener(new TenpaySecureEditText.4(this));
    }
  }

  public void setIsBankcardFormat(boolean paramBoolean)
  {
    if (paramBoolean)
      this.a = TenpaySecureEditText.EditState.BANKCARD;
    while (TenpaySecureEditText.EditState.BANKCARD != this.a)
      return;
    this.a = TenpaySecureEditText.EditState.DEFAULT;
  }

  public void setIsPasswordFormat(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      setPadding(l, getPaddingTop(), getPaddingRight(), getPaddingBottom());
      this.g = new Paint(1);
      this.g.setStyle(Paint.Style.FILL);
      this.g.setColor(-16777216);
      this.a = TenpaySecureEditText.EditState.PASSWORD;
    }
    do
    {
      return;
      this.g = null;
    }
    while (TenpaySecureEditText.EditState.PASSWORD != this.a);
    this.a = TenpaySecureEditText.EditState.DEFAULT;
  }

  public void setIsValidThru(boolean paramBoolean)
  {
    if (paramBoolean)
      this.a = TenpaySecureEditText.EditState.VALID_THRU;
    while (TenpaySecureEditText.EditState.VALID_THRU != this.a)
      return;
    this.a = TenpaySecureEditText.EditState.DEFAULT;
  }

  public void setOnPasswdInputListener(OnPasswdInputListener paramOnPasswdInputListener)
  {
    this.f = paramOnPasswdInputListener;
  }

  public void setValidThru(String paramString)
  {
    if ((paramString != null) && (paramString.length() == p))
    {
      setText(paramString);
      this.a = TenpaySecureEditText.EditState.VALID_THRU;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tenpay.android.wechat.TenpaySecureEditText
 * JD-Core Version:    0.6.2
 */