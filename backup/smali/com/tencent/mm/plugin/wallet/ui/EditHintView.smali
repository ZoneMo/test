.class public Lcom/tencent/mm/plugin/wallet/ui/EditHintView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private background:I

.field private cMs:Landroid/widget/TextView;

.field private dHP:Landroid/view/View$OnFocusChangeListener;

.field private dHS:Landroid/widget/ImageView;

.field private dHV:Ljava/lang/String;

.field private dHW:Ljava/lang/String;

.field private dHX:Z

.field private dHY:I

.field private dHZ:I

.field private dIa:I

.field private dIb:Z

.field public dIe:Z

.field private dIf:Ljava/lang/Runnable;

.field private dIg:Z

.field private fdK:Lcom/tencent/mm/plugin/wallet/ui/l;

.field private fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

.field private fdM:I

.field private fdN:I

.field private fdO:I

.field private fdP:I

.field private fdQ:Ljava/lang/String;

.field private fdR:Landroid/app/DatePickerDialog;

.field private fdS:I

.field private fdT:I

.field private fdU:Landroid/view/View$OnClickListener;

.field private fdV:Lcom/tencent/mm/ui/base/x;

.field private gravity:I

.field private imeOptions:I

.field private inputType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 132
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHV:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHW:Ljava/lang/String;

    .line 91
    iput v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->inputType:I

    .line 92
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHX:Z

    .line 93
    iput v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHY:I

    .line 94
    iput v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHZ:I

    .line 95
    const/16 v0, 0x13

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->gravity:I

    .line 96
    iput v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdM:I

    .line 97
    iput v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIa:I

    .line 99
    iput-boolean v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIb:Z

    .line 100
    iput v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdN:I

    .line 101
    iput v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdO:I

    .line 102
    iput v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->background:I

    .line 103
    iput v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdP:I

    .line 104
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIe:Z

    .line 106
    iput-object v4, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdQ:Ljava/lang/String;

    .line 237
    iput-object v4, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIf:Ljava/lang/Runnable;

    .line 238
    iput-boolean v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIg:Z

    .line 708
    iput-object v4, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdR:Landroid/app/DatePickerDialog;

    .line 709
    iput v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdS:I

    .line 710
    iput v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdT:I

    .line 776
    new-instance v0, Lcom/tencent/mm/plugin/wallet/ui/j;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/j;-><init>(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdU:Landroid/view/View$OnClickListener;

    .line 877
    iput-object v4, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdV:Lcom/tencent/mm/ui/base/x;

    .line 133
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->aD(Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHV:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHW:Ljava/lang/String;

    .line 91
    iput v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->inputType:I

    .line 92
    iput-boolean v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHX:Z

    .line 93
    iput v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHY:I

    .line 94
    iput v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHZ:I

    .line 95
    const/16 v0, 0x13

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->gravity:I

    .line 96
    iput v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdM:I

    .line 97
    iput v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIa:I

    .line 99
    iput-boolean v4, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIb:Z

    .line 100
    iput v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdN:I

    .line 101
    iput v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdO:I

    .line 102
    iput v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->background:I

    .line 103
    iput v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdP:I

    .line 104
    iput-boolean v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIe:Z

    .line 106
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdQ:Ljava/lang/String;

    .line 237
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIf:Ljava/lang/Runnable;

    .line 238
    iput-boolean v4, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIg:Z

    .line 708
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdR:Landroid/app/DatePickerDialog;

    .line 709
    iput v4, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdS:I

    .line 710
    iput v4, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdT:I

    .line 776
    new-instance v0, Lcom/tencent/mm/plugin/wallet/ui/j;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/j;-><init>(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdU:Landroid/view/View$OnClickListener;

    .line 877
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdV:Lcom/tencent/mm/ui/base/x;

    .line 110
    sget-object v0, Lcom/tencent/mm/p;->bJh:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHV:Ljava/lang/String;

    .line 112
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHW:Ljava/lang/String;

    .line 113
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->inputType:I

    .line 114
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIe:Z

    .line 115
    const/16 v1, 0x13

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->gravity:I

    .line 116
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHX:Z

    .line 117
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHY:I

    .line 118
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIa:I

    .line 119
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->imeOptions:I

    .line 120
    const/16 v1, 0x8

    sget v2, Lcom/tencent/mm/f;->black:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdO:I

    .line 121
    sget v1, Lcom/tencent/mm/h;->ajB:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->background:I

    .line 122
    const/16 v1, 0x9

    sget v2, Lcom/tencent/mm/h;->adT:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdP:I

    .line 123
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->aD(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdS:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;Landroid/app/DatePickerDialog;)Landroid/app/DatePickerDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdR:Landroid/app/DatePickerDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdQ:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIb:Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIb:Z

    return p1
.end method

.method private aD(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 257
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/mm/k;->aTw:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 259
    sget v0, Lcom/tencent/mm/i;->awb:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tenpay/android/wechat/TenpaySecureEditText;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    .line 260
    sget v0, Lcom/tencent/mm/i;->aMU:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->cMs:Landroid/widget/TextView;

    .line 261
    sget v0, Lcom/tencent/mm/i;->awM:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHS:Landroid/widget/ImageView;

    .line 263
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    iget v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->imeOptions:I

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setImeOptions(I)V

    iget v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIa:I

    packed-switch v0, :pswitch_data_0

    iput v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->inputType:I

    .line 264
    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->aoF()V

    .line 266
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHS:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdU:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/ui/a;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/ui/a;-><init>(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)V

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 290
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, p0}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 292
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHV:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHW:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->cMs:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :cond_2
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->inputType:I

    if-ne v0, v2, :cond_6

    .line 301
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/ui/c;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/ui/c;-><init>(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)V

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 381
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    iget v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->gravity:I

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setGravity(I)V

    .line 383
    invoke-super {p0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 384
    invoke-super {p0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 385
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHX:Z

    if-nez v0, :cond_3

    .line 386
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, v4}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdO:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setTextColor(I)V

    .line 388
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, v4}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setFocusable(Z)V

    .line 389
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, v4}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setClickable(Z)V

    .line 390
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    sget v1, Lcom/tencent/mm/h;->ajB:I

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setBackgroundResource(I)V

    .line 391
    sget v0, Lcom/tencent/mm/h;->afm:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setBackgroundResource(I)V

    .line 393
    :cond_3
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIe:Z

    if-nez v0, :cond_a

    .line 394
    iput-boolean v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIb:Z

    .line 395
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, v4}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setEnabled(Z)V

    .line 396
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/f;->aaF:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setTextColor(I)V

    .line 398
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, v4}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setFocusable(Z)V

    .line 399
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, v4}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setClickable(Z)V

    .line 400
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    sget v1, Lcom/tencent/mm/h;->ajB:I

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setBackgroundResource(I)V

    .line 401
    sget v0, Lcom/tencent/mm/h;->ady:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setBackgroundResource(I)V

    .line 409
    :goto_2
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHY:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 410
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHY:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 413
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->cMs:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdM:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 414
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->cMs:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 415
    iget v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdM:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 416
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->cMs:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    :cond_5
    return-void

    .line 263
    :pswitch_1
    const/16 v0, 0x19

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHY:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, v3}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setIsBankcardFormat(Z)V

    iput v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->inputType:I

    goto/16 :goto_0

    :pswitch_2
    iput v6, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHY:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->cMs:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, v3}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setIsPasswordFormat(Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, v6}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setImeOptions(I)V

    const/16 v0, 0x80

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->inputType:I

    goto/16 :goto_0

    :pswitch_3
    const/16 v0, 0x1e

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHY:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->inputType:I

    goto/16 :goto_0

    :pswitch_4
    const/16 v0, 0x12

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHY:I

    iput v5, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->inputType:I

    goto/16 :goto_0

    :pswitch_5
    iput v5, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHY:I

    iput v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->inputType:I

    goto/16 :goto_0

    :pswitch_6
    iput-boolean v4, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIe:Z

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, v3}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setIsValidThru(Z)V

    new-instance v0, Lcom/tencent/mm/plugin/wallet/ui/h;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/h;-><init>(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :pswitch_7
    iput v6, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHY:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->cMs:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iput v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->inputType:I

    goto/16 :goto_0

    :pswitch_8
    const/16 v0, 0x20

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->inputType:I

    goto/16 :goto_0

    :pswitch_9
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIe:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHX:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 325
    :cond_6
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->inputType:I

    if-ne v0, v5, :cond_7

    .line 326
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/ui/d;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/ui/d;-><init>(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)V

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/16 :goto_1

    .line 349
    :cond_7
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->inputType:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_8

    .line 350
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 351
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/ui/e;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/ui/e;-><init>(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)V

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 363
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setRawInputType(I)V

    goto/16 :goto_1

    .line 364
    :cond_8
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->inputType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 365
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/ui/f;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/ui/f;-><init>(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)V

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/16 :goto_1

    .line 378
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    iget v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->inputType:I

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setInputType(I)V

    goto/16 :goto_1

    .line 403
    :cond_a
    iput-boolean v4, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIb:Z

    .line 406
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    iget v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdP:I

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setBackgroundResource(I)V

    .line 407
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->background:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method

.method private aoF()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 750
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIa:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 774
    :goto_0
    return-void

    .line 755
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIe:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHS:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 757
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHS:Landroid/widget/ImageView;

    sget v1, Lcom/tencent/mm/h;->aif:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 759
    :cond_1
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIa:I

    packed-switch v0, :pswitch_data_0

    .line 769
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHS:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 764
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHS:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHS:Landroid/widget/ImageView;

    sget v1, Lcom/tencent/mm/h;->agS:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 759
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdT:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)Lcom/tencent/mm/plugin/wallet/ui/l;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdK:Lcom/tencent/mm/plugin/wallet/ui/l;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIa:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->aoF()V

    return-void
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)Landroid/app/DatePickerDialog;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdR:Landroid/app/DatePickerDialog;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdS:I

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdT:I

    return v0
.end method

.method static synthetic i(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)Lcom/tenpay/android/wechat/TenpaySecureEditText;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHS:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 49
    const/4 v0, 0x0

    iget v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIa:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v2

    :goto_0
    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdV:Lcom/tencent/mm/ui/base/x;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/tencent/mm/n;->bxp:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/plugin/wallet/ui/b;

    invoke-direct {v5, p0}, Lcom/tencent/mm/plugin/wallet/ui/b;-><init>(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)V

    const-string v0, "layout_inflater"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v2, v3, v4, v0, v5}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdV:Lcom/tencent/mm/ui/base/x;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdV:Lcom/tencent/mm/ui/base/x;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/wallet/ui/k;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/ui/k;-><init>(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/az;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_2
    sget v1, Lcom/tencent/mm/k;->bbI:I

    sget v0, Lcom/tencent/mm/n;->bFP:I

    goto :goto_0

    :pswitch_3
    sget v1, Lcom/tencent/mm/k;->bbC:I

    sget v0, Lcom/tencent/mm/n;->bFH:I

    goto :goto_0

    :pswitch_4
    sget v1, Lcom/tencent/mm/k;->bbP:I

    sget v0, Lcom/tencent/mm/n;->bFR:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic l(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)Lcom/tencent/mm/ui/base/x;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdV:Lcom/tencent/mm/ui/base/x;

    return-object v0
.end method


# virtual methods
.method public final U(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 636
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 647
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 648
    if-eqz p1, :cond_0

    .line 649
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 651
    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->cMs:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 652
    const-string v1, "MicroMsg.EditHintView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "View:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", editType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIa:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " checkInputValid : empty "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_0
    return v0

    .line 655
    :cond_1
    iget-boolean v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIb:Z

    if-eqz v2, :cond_3

    .line 656
    if-eqz p1, :cond_2

    .line 657
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 661
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->cMs:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    move v0, v1

    .line 662
    goto :goto_0

    .line 663
    :cond_3
    const/4 v2, 0x5

    iget v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIa:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v2}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_7

    .line 664
    :cond_4
    if-eqz p1, :cond_5

    .line 665
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 667
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->cMs:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 668
    const-string v1, "MicroMsg.EditHintView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "View:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", editType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIa:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " checkInputValid : illegal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 672
    :cond_6
    if-eqz p1, :cond_7

    .line 673
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    move v0, v1

    .line 679
    goto :goto_0
.end method

.method public final UP()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->ClearInput()V

    .line 585
    return-void
.end method

.method public final UR()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 552
    iget-boolean v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIe:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHX:Z

    if-nez v2, :cond_1

    .line 576
    :cond_0
    :goto_0
    return v0

    .line 556
    :cond_1
    iget v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIa:I

    packed-switch v2, :pswitch_data_0

    .line 576
    :pswitch_0
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v2}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->getInputLength()I

    move-result v2

    iget v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHZ:I

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 558
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->isBankcardNum()Z

    move-result v0

    goto :goto_0

    .line 560
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->isPhoneNum()Z

    move-result v0

    goto :goto_0

    .line 562
    :pswitch_3
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v2}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->getInputLength()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 564
    :pswitch_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    iget v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdN:I

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->isAreaIDCardNum(I)Z

    move-result v0

    goto :goto_0

    .line 570
    :pswitch_5
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v2}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->getInputLength()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 572
    :pswitch_6
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hT(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/tencent/mm/plugin/wallet/ui/l;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdK:Lcom/tencent/mm/plugin/wallet/ui/l;

    .line 138
    return-void
.end method

.method public final aoG()V
    .locals 3

    .prologue
    .line 843
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setFocusable(Z)V

    .line 844
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->requestFocus()Z

    .line 845
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 846
    return-void
.end method

.method public final aoH()V
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setImeOptions(I)V

    .line 850
    return-void
.end method

.method public final get3DesEncrptData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->get3DesEncrptData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 522
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIa:I

    packed-switch v0, :pswitch_data_0

    .line 545
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 524
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->getEncryptDataWithHash(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 526
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->get3DesEncrptData()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 528
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->get3DesEncrptData()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 530
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdQ:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 533
    :pswitch_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 537
    :pswitch_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 539
    :pswitch_6
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->get3DesVerifyCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 541
    :pswitch_7
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->getEncryptDataWithHash(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 522
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final jN(I)V
    .locals 1
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, p1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setBackgroundResource(I)V

    .line 254
    :cond_0
    return-void
.end method

.method public final jO(I)V
    .locals 1
    .parameter

    .prologue
    .line 441
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->cMs:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->cMs:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 444
    :cond_0
    return-void
.end method

.method public final jP(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 502
    iput p1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdN:I

    .line 503
    if-ne p1, v1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/ui/g;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/ui/g;-><init>(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)V

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setInputType(I)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 822
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHP:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHP:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p0, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 825
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIg:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    if-ne v0, p2, :cond_1

    .line 826
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIf:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIf:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 830
    :cond_1
    iput-boolean p2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIg:Z

    .line 831
    const-string v0, "MicroMsg.EditHintView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "View:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHW:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", editType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIa:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onFocusChange to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdK:Lcom/tencent/mm/plugin/wallet/ui/l;

    if-eqz v0, :cond_2

    .line 833
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdK:Lcom/tencent/mm/plugin/wallet/ui/l;

    iget-boolean v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIb:Z

    invoke-interface {v0, v3}, Lcom/tencent/mm/plugin/wallet/ui/l;->aN(Z)V

    .line 835
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIb:Z

    if-nez v0, :cond_4

    .line 836
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->cMs:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 840
    :goto_1
    return-void

    :cond_3
    move v0, v2

    .line 825
    goto :goto_0

    .line 838
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->cMs:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 684
    iget-boolean v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIe:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHS:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_0
    if-eqz v2, :cond_4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHS:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x32

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x32

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x19

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x19

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_1
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 689
    :cond_1
    return v0

    :cond_2
    move v2, v1

    .line 684
    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 154
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIa:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x4470

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v0, p1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4434

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v1, p2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setMeasuredDimension(II)V

    .line 156
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getMeasuredWidth()I

    move-result v0

    .line 157
    div-int/lit8 v1, v0, 0x6

    .line 158
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 159
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 160
    invoke-static {v0, p1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getDefaultSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setMeasuredDimension(II)V

    .line 162
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 163
    return-void
.end method

.method public final pL(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, p1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method

.method public final pM(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 199
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIa:I

    packed-switch v0, :pswitch_data_0

    .line 212
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, p1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setSelection(I)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 201
    :pswitch_0
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, v4}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setSelection(I)V

    .line 203
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, p1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setBankcardTailNum(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHY:I

    .line 205
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHY:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final pN(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 227
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setClickable(Z)V

    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v2, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 229
    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    .line 230
    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    .line 232
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setClickable(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 603
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 604
    iput-boolean p1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHX:Z

    .line 605
    if-nez p1, :cond_1

    .line 606
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, v3}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setEnabled(Z)V

    .line 607
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIe:Z

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/f;->aaD:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setTextColor(I)V

    .line 612
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, v3}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setFocusable(Z)V

    .line 613
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, v3}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setClickable(Z)V

    .line 626
    :goto_1
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdO:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setTextColor(I)V

    goto :goto_0

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, v4}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setEnabled(Z)V

    .line 616
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIe:Z

    if-nez v0, :cond_2

    .line 617
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/f;->aaF:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setTextColor(I)V

    .line 623
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, v4}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setFocusable(Z)V

    .line 624
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, v4}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setClickable(Z)V

    goto :goto_1

    .line 620
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdO:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setTextColor(I)V

    goto :goto_2
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 597
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 598
    iput-boolean p1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIe:Z

    .line 599
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHS:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 600
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 695
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    return-void
.end method

.method public final setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .parameter

    .prologue
    .line 853
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->fdL:Lcom/tenpay/android/wechat/TenpaySecureEditText;

    invoke-virtual {v0, p1}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 854
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 700
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 701
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dHP:Landroid/view/View$OnFocusChangeListener;

    .line 702
    return-void
.end method
