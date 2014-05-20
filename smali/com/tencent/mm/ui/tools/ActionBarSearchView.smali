.class public Lcom/tencent/mm/ui/tools/ActionBarSearchView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private hgA:Lcom/tencent/mm/ui/tools/g;

.field private hgB:Z

.field private hgC:Lcom/tencent/mm/ui/tools/f;

.field private hgD:Landroid/text/TextWatcher;

.field private hgE:Landroid/view/View$OnFocusChangeListener;

.field private hgF:Landroid/view/View$OnClickListener;

.field private hgy:Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;

.field private hgz:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    sget-object v0, Lcom/tencent/mm/ui/tools/g;->hgI:Lcom/tencent/mm/ui/tools/g;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgA:Lcom/tencent/mm/ui/tools/g;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgB:Z

    .line 45
    new-instance v0, Lcom/tencent/mm/ui/tools/c;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/c;-><init>(Lcom/tencent/mm/ui/tools/ActionBarSearchView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgD:Landroid/text/TextWatcher;

    .line 67
    new-instance v0, Lcom/tencent/mm/ui/tools/d;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/d;-><init>(Lcom/tencent/mm/ui/tools/ActionBarSearchView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgE:Landroid/view/View$OnFocusChangeListener;

    .line 80
    new-instance v0, Lcom/tencent/mm/ui/tools/e;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/e;-><init>(Lcom/tencent/mm/ui/tools/ActionBarSearchView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgF:Landroid/view/View$OnClickListener;

    .line 103
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->init()V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    sget-object v0, Lcom/tencent/mm/ui/tools/g;->hgI:Lcom/tencent/mm/ui/tools/g;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgA:Lcom/tencent/mm/ui/tools/g;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgB:Z

    .line 45
    new-instance v0, Lcom/tencent/mm/ui/tools/c;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/c;-><init>(Lcom/tencent/mm/ui/tools/ActionBarSearchView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgD:Landroid/text/TextWatcher;

    .line 67
    new-instance v0, Lcom/tencent/mm/ui/tools/d;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/d;-><init>(Lcom/tencent/mm/ui/tools/ActionBarSearchView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgE:Landroid/view/View$OnFocusChangeListener;

    .line 80
    new-instance v0, Lcom/tencent/mm/ui/tools/e;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/e;-><init>(Lcom/tencent/mm/ui/tools/ActionBarSearchView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgF:Landroid/view/View$OnClickListener;

    .line 98
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->init()V

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/ActionBarSearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->aMI()V

    return-void
.end method

.method private aMI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgy:Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgy:Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    sget v0, Lcom/tencent/mm/h;->aif:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/g;->aaT:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v3, v1}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->t(III)V

    .line 166
    sget-object v0, Lcom/tencent/mm/ui/tools/g;->hgI:Lcom/tencent/mm/ui/tools/g;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgA:Lcom/tencent/mm/ui/tools/g;

    .line 174
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgB:Z

    if-eqz v0, :cond_1

    .line 168
    sget v0, Lcom/tencent/mm/h;->ajS:I

    sget v1, Lcom/tencent/mm/h;->afi:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/tencent/mm/g;->aaJ:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->t(III)V

    .line 169
    sget-object v0, Lcom/tencent/mm/ui/tools/g;->hgJ:Lcom/tencent/mm/ui/tools/g;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgA:Lcom/tencent/mm/ui/tools/g;

    goto :goto_0

    .line 171
    :cond_1
    invoke-direct {p0, v3, v3, v3}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->t(III)V

    .line 172
    sget-object v0, Lcom/tencent/mm/ui/tools/g;->hgI:Lcom/tencent/mm/ui/tools/g;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgA:Lcom/tencent/mm/ui/tools/g;

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/ActionBarSearchView;)Lcom/tencent/mm/ui/tools/f;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgC:Lcom/tencent/mm/ui/tools/f;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/tools/ActionBarSearchView;)Lcom/tencent/mm/ui/tools/g;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgA:Lcom/tencent/mm/ui/tools/g;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 109
    sget v1, Lcom/tencent/mm/k;->aSd:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 111
    sget v0, Lcom/tencent/mm/i;->arK:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgy:Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;

    .line 112
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgy:Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;->d(Lcom/tencent/mm/ui/tools/ActionBarSearchView;)V

    .line 113
    sget v0, Lcom/tencent/mm/i;->aMp:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgz:Landroid/widget/ImageButton;

    .line 115
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgy:Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgD:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgy:Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgE:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 117
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgz:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgF:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method private t(III)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgz:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 157
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgz:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 158
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgz:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 159
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 160
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgz:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/tools/f;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgC:Lcom/tencent/mm/ui/tools/f;

    .line 130
    return-void
.end method

.method public final aMH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgy:Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgy:Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final aMJ()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgy:Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;->clearFocus()V

    .line 192
    return-void
.end method

.method public final cP(Z)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgB:Z

    .line 144
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->aMI()V

    .line 145
    return-void
.end method

.method public final ek(Z)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgy:Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;->setEnabled(Z)V

    .line 149
    return-void
.end method

.method public final el(Z)V
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgz:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 153
    return-void
.end method

.method public final em(Z)V
    .locals 2
    .parameter

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgy:Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgD:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 183
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgy:Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgy:Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgD:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgy:Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->hgy:Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/tools/ActionBarSearchView$ActionBarEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 178
    return-void
.end method
