.class public final Lcom/tencent/mm/ui/base/preference/ChoicePreference;
.super Lcom/tencent/mm/ui/base/preference/Preference;
.source "SourceFile"


# instance fields
.field private final bZy:Ljava/util/HashMap;

.field private dKf:I

.field private gFL:Landroid/widget/RadioGroup;

.field private gFM:[Ljava/lang/CharSequence;

.field private gFN:[Ljava/lang/CharSequence;

.field private gFO:Lcom/tencent/mm/ui/base/preference/ai;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/base/preference/ChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/base/preference/ChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->bZy:Ljava/util/HashMap;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->dKf:I

    .line 45
    sget-object v0, Lcom/tencent/mm/p;->bJe:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFM:[Ljava/lang/CharSequence;

    .line 47
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFN:[Ljava/lang/CharSequence;

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->aIa()V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/base/preference/ChoicePreference;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput p1, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->dKf:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/base/preference/ChoicePreference;)Lcom/tencent/mm/ui/base/preference/ai;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFO:Lcom/tencent/mm/ui/base/preference/ai;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/base/preference/ChoicePreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->value:Ljava/lang/String;

    return-object p1
.end method

.method private aIa()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFM:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 115
    new-array v0, v1, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFM:[Ljava/lang/CharSequence;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFN:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 119
    new-array v0, v1, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFN:[Ljava/lang/CharSequence;

    .line 122
    :cond_1
    const-string v2, "entries count different"

    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFM:[Ljava/lang/CharSequence;

    array-length v0, v0

    iget-object v3, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFN:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 124
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->bZy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 125
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFN:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 126
    new-instance v0, Lcom/tencent/mm/ui/base/preference/c;

    iget-object v2, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFN:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFM:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    const/high16 v3, 0x10

    add-int/2addr v3, v1

    invoke-direct {v0, v2, v3}, Lcom/tencent/mm/ui/base/preference/c;-><init>(Ljava/lang/CharSequence;I)V

    .line 127
    iget-object v2, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->bZy:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFN:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 122
    goto :goto_0

    .line 129
    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/base/preference/ChoicePreference;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFN:[Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/preference/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFO:Lcom/tencent/mm/ui/base/preference/ai;

    .line 56
    return-void
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->value:Ljava/lang/String;

    return-object v0
.end method

.method protected final onBindView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFL:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFL:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->dKf:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 138
    :cond_0
    return-void
.end method

.method protected final onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 62
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 63
    sget v1, Lcom/tencent/mm/i;->content:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 64
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 65
    sget v2, Lcom/tencent/mm/k;->aWK:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    sget v1, Lcom/tencent/mm/i;->avM:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFL:Landroid/widget/RadioGroup;

    .line 68
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFN:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v3, v1, :cond_3

    .line 69
    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFN:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    .line 70
    iget-object v2, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->bZy:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/base/preference/c;

    .line 72
    if-eqz v1, :cond_0

    .line 73
    if-nez v3, :cond_1

    .line 77
    sget v2, Lcom/tencent/mm/k;->aWq:I

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 78
    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/base/preference/c;->a(Landroid/widget/RadioButton;)V

    .line 79
    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFL:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_0
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFN:[Ljava/lang/CharSequence;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_2

    .line 82
    sget v2, Lcom/tencent/mm/k;->aWs:I

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 83
    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/base/preference/c;->a(Landroid/widget/RadioButton;)V

    .line 84
    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFL:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 87
    :cond_2
    sget v2, Lcom/tencent/mm/k;->aWr:I

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 88
    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/base/preference/c;->a(Landroid/widget/RadioButton;)V

    .line 89
    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFL:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->gFL:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/tencent/mm/ui/base/preference/d;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/base/preference/d;-><init>(Lcom/tencent/mm/ui/base/preference/ChoicePreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 110
    return-object v4
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->value:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->bZy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/c;

    .line 150
    if-nez v0, :cond_0

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->dKf:I

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget v0, v0, Lcom/tencent/mm/ui/base/preference/c;->id:I

    iput v0, p0, Lcom/tencent/mm/ui/base/preference/ChoicePreference;->dKf:I

    goto :goto_0
.end method
